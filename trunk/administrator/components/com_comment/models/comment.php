<?php
/*
 * @Package Softpin Order Manager
 * @Subpackage : softpin Manager
 * Created by : thuc.lehuy@gmail.com
 */
/*Model này được gọi khi view là views/softpin/
*/
// no direct access
defined('_JEXEC') or die('Truy nhập không hợp lệ');

jimport('joomla.application.component.model');

class CommentsModelComment extends JModel
{
    function __construct()
    {
        parent::__construct();
/* Dùng khi truy cập task edit qua 
“$link = JRoute::_( 'index.php?option=com_softpin&controller=softpin&task=edit&cid[]='.$row->softpin_id );” trên default.php
*/
        $array = JRequest::getVar('cid',  0, '', 'array');
        $this->setId((int)$array[0]);

    }
        /**
     * Method to set the softpin identifier
     *
     * @access	public
     * @param	int Hello identifier
     * @return	void
     */
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
     * Method to get a softpin
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
    /**
 * Method to store a record
 * @access    public
 * @return    boolean    True on success
 */
    function store()
    {
        $row =& $this->getTable(); // khai báo một object của lớp TableSoftpin
        $data = JRequest::get( 'post' ); // Lấy all dữ liệu trên Request theo phương thức post
        // Bind the form fields to the softpin table
/* Tìm trong $data những biến có tên trùng với tên các thuộc tính trong $row.
Gán giá trị các biến này trong $data vào $row.
*/
        if (!$row->bind($data)) {
            $this->setError($this->_db->getErrorMsg());
            return false;
        }

        // Make sure the softpin record is valid
        if (!$row->check()) {
            $this->setError($this->_db->getErrorMsg());
            return false;
        }

        /* Store giá trị của $row vào DB. Nếu softpin_id (primary key) = 0 ,hàm sẽ tạo một row mới trong DB.
      Nếu softpin_id (primary key) !=0 ,hàm sẽ update giá trị $row vào trong DB
      */
        if (!$row->store()) {
            $this->setError($this->_db->getErrorMsg());
            return false;
        }

        return true;
    }
}
?>