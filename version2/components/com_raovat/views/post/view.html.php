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
		if(is_null($this->post))
		{
			$post = JTable::getInstance('Raovat');
			$this->assignRef('post',$post);		
		}
		if(is_null($this->profile))
		{
			$my=&JFactory::getUser();
			$profile = JTable::getInstance('Raovat_profile');
			$profile->load($my->id);
			if(empty($profile->persional_name))
				$profile->persional_name = $my->name;
			if(empty($profile->persional_email))
				$profile->persional_email = $my->email;			
			$this->assignRef('profile',$profile);		
		}	
		$this->assignRef('quality',$quality);			
		$this->assignRef('currencys',$currencys);			
		$this->assignRef('citys',$citys);
			
		parent::display();
	}
}
?>
