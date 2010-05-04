<?php
defined('_JEXEC') or die('Truy nhập không hợp lệ');

jimport('joomla.application.component.model');
JTable::addIncludePath(JPATH_ADMINISTRATOR.DS.'components'.DS.'com_comment'.DS.'tables');


class CommentModelComment extends JModel
{
    function __construct()
    {
        parent::__construct();
        $array = JRequest::getVar('cid',  0, '', 'array');
        $this->setId((int)$array[0]);
    }
        /**
     
     *
     * @access	public
     * @param	
     * @return	void
     */
	function display($tpl)
	{
		parent::display($tpl);
	}
    function setId($id)
    {
        // Set id and wipe data
        $this->_id	= $id;
        $this->_data	= null;
    }
        /**
     * Returns the query
     * @return string The query to be used to retrieve the rows from the database
     */
    function _buildQuery()
    {
        $query = 'select * from #__comment where id= '.$this->_id;
        return $query;
    }
    /**
     * @return object with data
     */
    function &getData()
    {
        // Load the data
        if (empty( $this->_data )) {
            $query = $this->_buildQuery();
            $this->_db->setQuery( $query );
            $this->_data = $this->_db->loadObject();
        }
        return $this->_data;
    }
    function getCatList()
    {
		$db = &JFactory::getDBO();
		$db->setQuery("SELECT * FROM #__comment_category");
		$results = $db->loadObjectList();
		return $results;
	}
    /**
 * Method to store a record
 * @access    public
 * @return    boolean    True on success
 */
    function store()
    {
    	$row =& JTable::getInstance('comment', 'Table');
        $data = JRequest::get( 'post' ); // Lấy all dữ liệu trên Request theo phương thức post
/* Tìm trong $data những biến có tên trùng với tên các thuộc tính trong $row.
Gán giá trị các biến này trong $data vào $row.
*/
        if (!$row->bind($data)) {
            $this->setError($this->_db->getErrorMsg());
            return false;
        }
        if (!$row->check()) {
            $this->setError($this->_db->getErrorMsg());
            return false;
        }
        if (!$row->store()) {
            $this->setError($this->_db->getErrorMsg());            
            return false;
        }
        return true;
    }
}
?>