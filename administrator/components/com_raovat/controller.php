<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.application.component.controller' );
class RaoVatController extends JController
{
	function display()
	{
		parent::display();				
	}
	function remove()
	{		
		global $mainframe;
		$row = JTable::getInstance('raovat');
		$cid = JRequest::getVar('cid',array(),'default','array');
		foreach($cid as $id)
		{
			$row->load($id);
			$row->isdelete=1;
			$row->store();
		}
		$mainframe->redirect(JRoute::_("index.php?option=com_raovat","Đã xóa các tin có id: ".implode(', ',$cid)));
	}
}

?>