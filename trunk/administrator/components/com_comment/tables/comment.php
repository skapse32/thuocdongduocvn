<?php
defined('_JEXEC') or die('Truy nhập không hợp lệ');

class TableComment extends JTable
{
    var $id = null;    // Primary key-----------
    var $username = null;
    var $address = null;
    var $email = null;
    var $title = null;
    var $content = null;
    var $created = null;
    var $del_flag=null;
    var $answer_username=null;
    var $answer_email=null;
    var $answer_content=null;
    var $status=null;
    /**
	 * Constructor
	 *
	 * @param object Database connector object
	 */
    function Tablecomment(& $db)
    {
// Tạo ánh xạ vào DB
        parent::__construct('#__comment', 'id', $db);
    }

}
?>