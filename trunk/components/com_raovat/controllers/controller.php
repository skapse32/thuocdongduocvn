<?php

defined("_JEXEC") or die("Cam vao");
jimport('joomla.application.component.controller');

class RaoVatController extends JController
{
	function display()
	{	
		global $option;				
		$layout= JRequest::getVar('layout','');
		switch(strtolower($layout))
		{
			case "canban":
				$this->canban();
				break;
			case "canmua":								
				$this->canmua();				
				break;
			default:
				parent::display();
				break;
		}
		
	}
	function canban()
	{		
		global $option;
		$com = &JComponentHelper::getComponent($option);		
		$params= new JParameter($com->params);			
		$citys =$params->get('citys','');		
		$citys = explode('<br />',nl2br($params->get('citys','')));						
		$order =trim(strtolower(JRequest::getVar("order",'created')));
		if(empty($order))
			$order='created';			
		
		$city =base64_decode(JRequest::getVar("city",''));		
		$view = $this->getView('raovat','html');
		$model = $this->getModel('raovat');
		$model->setState('ordering',"$order DESC,");
		if(!empty($city))
			$model->setState('where',"AND city='".trim($city)."'");
		$view->assignRef('order',$order);		
		$view->assignRef('citys',$citys);		
		$view->assignRef('city',$city);		
		$view->setModel($model);
		$view->canban();
	}
	function canmua()
	{	
		global $option;
		$com = &JComponentHelper::getComponent($option);		
		$params= new JParameter($com->params);			
		$citys =$params->get('citys','');		
		$citys = explode('<br />',nl2br($params->get('citys','')));						
		$order =trim(strtolower(JRequest::getVar("order",'created')));
		if(empty($order))
			$order='created';			
			
		$city =base64_decode(JRequest::getVar("city",''));		
		$view = $this->getView('raovat','html');
		$model = $this->getModel('raovat');
		$model->setState('ordering',"$order DESC,");
		if(!empty($city))
			$model->setState('where',"AND city='".trim($city)."'");
		$view->assignRef('order',$order);		
		$view->assignRef('citys',$citys);		
		$view->assignRef('city',$city);		
		$view->setModel($model);
		$view->canmua();
	}
	function ordering()
	{
		
		global $option,$view,$mainframe;
		$itemid=JRequest::getVar('Itemid');
		$layout=JRequest::getVar('layout','','post');
		$order=JRequest::getVar("order",'newest');		
		$city=JRequest::getVar("city",'');
		$uri = new JURI();
		$uri->setVar('option',$option);
		$uri->setVar('view',$view);
		$uri->setVar('layout',$layout);		
		$uri->setVar('order',$order);
		$uri->setVar('Itemid',$itemid);
		if(!empty($city))
		$uri->setVar('city',$city);
		//echo JUtility::dump($uri);die();
		$mainframe->redirect(JRoute::_("index.php?".$uri->getQuery(),false));
	}
}
?>