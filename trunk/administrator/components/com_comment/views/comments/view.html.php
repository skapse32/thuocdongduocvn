<?php
/*
 * @Package Softpin Order Manager
 * @Subpackage : Softpin Manager
 * Create by : thuc.lehuy@gmail.com
 */
// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
//import view parent class
jimport( 'joomla.application.component.view' );

class CommentsViewComments extends JView
{
    function display($tpl = null)
    {
/* Tạo tiêu đề,nút tạo mới,sửa,publish,…
*/
        JToolBarHelper::title(JText::_( 'Quản lý câu hỏi' ) );
        JToolBarHelper::deleteList();
        JToolBarHelper::editListX();
        JToolBarHelper::publish();
        JToolBarHelper::unpublish();
        JToolBarHelper::help( 'screen.banners' );
/* $this->get('Data') sẽ gọi hàm trong models gần nhất có tên getData()
Ví dụ khi $this->get('Softpin') sẽ gọi hàm trong model gần nhất có tên getSoftpin();
Với tên của views là softpins thì joomla sẽ hiểu model gần nhất của views này tên là softpins
*/              
        $items =& $this->get('Data');      
        $pagination =& $this->get('Pagination');
 
        // push data into the template
        $this->assignRef('items', $items);     
        $this->assignRef('pagination', $pagination);
// hiển thị
        parent::display($tpl);
    }
}

?>