<?php
/*
 * @Package Softpin Order Manager
 * @Subpackage : Softpin Manager
 * Create by : thuc.lehuy@gmail.com
 */

// no direct access
defined('_JEXEC') or die('Truy nhập không hợp lệ');
// import model parent
jimport( 'joomla.application.component.model' );

/*
 *  Softpin Model
 * Get data from table softpin
 */
class CommentsModelComments extends JModel
{
    var $_data;
    var $_total = null;
 
  /**
   * Pagination object
   * @var object
   */
  	var $_pagination = null;
    
     /**
	 * Returns the query
	 * @return string The query to be used to retrieve the rows from the database
	 */
  	function __construct()
  	{
        parent::__construct();
 
        global $mainframe, $option;
 
        // Get pagination request variables
        $limit = $mainframe->getUserStateFromRequest('global.list.limit', 'limit', $mainframe->getCfg('list_limit'), 'int');
        $limitstart = JRequest::getVar('limitstart', 0, '', 'int');
 
        // In case limit has been changed, adjust it
        $limitstart = ($limit != 0 ? (floor($limitstart / $limit) * $limit) : 0);
 
        $this->setState('limit', $limit);
        $this->setState('limitstart', $limitstart);
  	}
  	
    function _buildQuery()
    {
/* #__sẽ được thay bằng tiền tố trong DB Joomla khi truy vấn. 
*/
    	$v =JRequest::getVar('v','');
    	
    	$where =array();
        if(strtolower($v)=='replied')
        	$where[]="a.answer_content!=''";
        else
        	$where[]="a.answer_content=''";
        if(count($where))
        	$w_str = " WHERE ".implode('AND',$where);
                
        	
        $query = 'select a.*, b.name as category from #__comment a INNER JOIN #__comment_category b ON a.catid=b.id  '.$w_str." ORDER BY created DESC ";        
        return $query;
    }
    // Get Softpin in DB
    function getData()
    {
    	if (empty($this->_data)) {
            $query = $this->_buildQuery();
            $this->_data = $this->_getList($query, $this->getState('limitstart'), $this->getState('limit')); 
        }
        return $this->_data;
        
    }
    function getTotal()
  	{
        // Load the content if it doesn't already exist
        if (empty($this->_total)) {
            $query = $this->_buildQuery();
            $this->_total = $this->_getListCount($query);    
        }
        return $this->_total;
  	}
    function getPagination()
  	{
        // Load the content if it doesn't already exist
        if (empty($this->_pagination)) {
            jimport('joomla.html.pagination');
            $this->_pagination = new JPagination($this->getTotal(), $this->getState('limitstart'), $this->getState('limit') );
        }
        return $this->_pagination;
  	}
  	function delete() 
	{ 
		
	    $cids = JRequest::getVar( 'cid', array(0), 'post', 'array' ); 
	    $row =& $this->getTable(); 
	 
	    foreach($cids as $cid) { 
	        if (!$row->delete( $cid )) { 
	            $this->setError( $row->getErrorMsg() ); 
	            return false; 
	        } 
	    } 
	    return true; 
	} 
}
?>