<?php
defined('_JEXEC') or die('Truy cập không hợp lệ!');

jimport("joomla.application.component.model");

class CommentModelQuestion extends JModel
{
	/**
	 * Gets the greeting
	 * 
	 * @return string The greeting to be displayed to the user
	 */
	var $_data;
	var $_total = null;
 
  /**
   * Pagination object
   * @var object
   */
  	var $_pagination = null;
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
		$v =JRequest::getVar('v','');
//    	var_dump($v);	die;
    	$where =array();
        if(strtolower($v)=='question')
        {
        	$where[]="answer_content!=''";
        }
        else
        {
        	$where[]="answer_content=''";
        }
        
        if(count($where))
        	$w_str = " WHERE ".implode('AND',$where);
//           var_dump($w_str);die;     
        	//SElect * from xxx where del_tag=1
        $query = 'select * from #__comment '.$w_str."and del_flag=1"." ORDER BY created ASC ";        
        return $query;
	}
	
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
}
?>