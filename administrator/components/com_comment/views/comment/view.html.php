<?php
/*
 * @Package Softpin Order Manager
 * @Subpackage : softpin Manager
 * Create by : thuc.lehuy@gmail.com
 */
/*
File này tạo view cho task edit và add.
*/
// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
//import view parent class
jimport( 'joomla.application.component.view' );

class CommentsViewComment extends JView
{
    function display(){
        // lấy thông tin của softpin từ models/softpin.php. Nếu task là add,$softpin = null.
        $comment = & $this->get('Data');
// Tạo title,save and close button dựa theo task là add hay edit
        $isNew = ($softpin->id<1);
        $text = $isNew ? JText::_( 'New' ) : JText::_( 'Edit' );

        JToolBarHelper::title(   JText::_( 'Quản lý câu hỏi' ).': <small><small>[ ' . $text.' ]</small></small>' );
        JToolBarHelper::save();
        if($isNew)
        {
            JToolBarHelper::cancel();
        }else{
            JToolBarHelper::cancel('cancel','close');
        }
// Up $softpin lên template
        $this->assignRef('comment', & $comment);
        parent::display($tpl);
    }

}


?>