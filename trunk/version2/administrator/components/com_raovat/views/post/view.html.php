<?php
defined("_JEXEC") or die("Cam vao");
jimport('joomla.application.component.view');
class RaoVatViewPost extends JView
{
	function display()
	{				
		global $option;
		$doc = &JFactory::getDocument();		
		$doc->addScript(JURI::root()."/components/com_raovat/assets/jquery.number_format.js");		
		$com = &JComponentHelper::getComponent($option);		
		$params= new JParameter($com->params);	
		$currencys = explode('<br />',nl2br($params->get('currency','')));
		$citys = explode('<br />',nl2br($params->get('citys','')));
		$quality = explode('<br />',nl2br($params->get('quality','')));
		
		$this->assignRef('quality',$quality);			
		$this->assignRef('currencys',$currencys);			
		$this->assignRef('citys',$citys);		
		$post = JTable::getInstance('Raovat');
		$id = JRequest::getVar('cid');
		$post->load($id[0]);
		$this->assignRef('post',$post);		
		parent::display();
	}
}
?>
