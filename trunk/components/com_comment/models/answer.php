<?php
defined('_JEXEC') or die('Truy cập không hợp lệ');
jimport('joomla.application.component.model');

class CommentModelAnswer extends JModel
{
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
  	
	
	function _buildQuery($catid=null)
	{
		$v=JRequest::getVar('v','');
		$where=array();
//		var_dump(strtolower($v));die;
		if(strtolower($v)=='answer')
		{
			$where[]="answer_content=''";
			
		}else
        {
        	$where[]="answer_content!=''";
        }
		if(count($where))
        	$w_str = " WHERE ".implode('AND',$where);
		if($catid)
			$catid=" AND catid='$catid' ";      
        	
        $query = 'select * from #__comment '.$w_str." and del_flag=1 $catid  ORDER BY created DESC ";        
        return $query;
	}
	function getData()
	{       
	$db = &JFactory::getDBO(); 
        if (empty($this->_data)) {
			$query = "SELECT * FROM #__comment_category ORDER BY ordering";
			$db->setQuery($query);
			$cats = $db->loadObjectList();
			for($i=0;$i<count($cats);$i++)
			{
				$query = $this->_buildQuery($cats[$i]->id);				
				$cats[$i]->items =$this->_getList($query, $this->getState('limitstart'), $this->getState('limit')); 
					
			}
			$this->_data = $cats;
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