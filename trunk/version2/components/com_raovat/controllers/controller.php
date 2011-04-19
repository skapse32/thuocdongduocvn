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
			case "detail":
				$this->detail();
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
		$order =trim(strtolower(JRequest::getVar("order",'')));				
		
		$city =base64_decode(JRequest::getVar("city",''));	

		$category = JRequest::getVar('category','');

		$view = $this->getView('raovat','html');
		$model = $this->getModel('raovat');
		if($order)
		$model->setState('ordering',"$order DESC,");
		if(!empty($city))
			$model->setState('where',"AND city='".trim($city)."'");
		if(!empty($category))
		{
			$model->setState('where',"AND rv_category='".$category."'");
		}
		if(!empty($category) and !empty($city))
		{
			$model->setState('where',"AND rv_category='".$category."' AND city ='".trim($city)."'");
		}
		
		$view->assignRef('order',$order);		
		$view->assignRef('citys',$citys);		
		$view->assignRef('city',$city);	
		$view->assignRef('category',$category);	
		$view->setModel($model);
		$view->canban();
	}
	/*Canban_detail*/
	function detail()
	{					
		$view = $this->getView('raovat','html');
		$model = $this->getModel('raovat');
		$model->raovathit();		
		$view->setModel($model);
		$view->canban_detail();
	}
	function canmua()
	{	
		global $option;
		$com = &JComponentHelper::getComponent($option);		
		$params= new JParameter($com->params);			
		$citys =$params->get('citys','');		
		$citys = explode('<br />',nl2br($params->get('citys','')));						
		$order =trim(strtolower(JRequest::getVar("order",'')));
		$category = JRequest::getVar('category','');		
			
		$city =base64_decode(JRequest::getVar("city",''));		
		$view = $this->getView('raovat','html');
		$model = $this->getModel('raovat');
		if($order)
		$model->setState('ordering',"$order DESC,");
		if(!empty($city))
			$model->setState('where',"AND city='".trim($city)."'");
		if(!empty($category))
		{
			$model->setState('where',"AND rv_category='".$category."'");
		}
		if(!empty($category) and !empty($city))
		{
			$model->setState('where',"AND rv_category='".$category."' AND city ='".trim($city)."'");
		}
		$view->assignRef('order',$order);		
		$view->assignRef('citys',$citys);		
		$view->assignRef('city',$city);	
		$view->assignRef('category',$category);	
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
		$category = JRequest::getVar('category');
		$uri = new JURI();
		$uri->setVar('option',$option);
		$uri->setVar('view',$view);
		$uri->setVar('layout',$layout);		
		$uri->setVar('order',$order);
		$uri->setVar('Itemid',$itemid);
		if(!empty($category))
		$uri->setVar('category',$category);
		if(!empty($city))
		$uri->setVar('city',$city);
		//echo JUtility::dump($uri);die();
		$mainframe->redirect(JRoute::_("index.php?".$uri->getQuery(),false));
	}
	function saveComment()
	{
		$model = $this->getModel('raovat');
		$input->id_raovat = JRequest::getVar('id_raovat');
		$input->name = JRequest::getVar('name');
		$input->comment = JRequest::getVar('comment');
		$jnow =& JFactory::getDate();
		$now = $jnow->toMySQL();
		$input->cdate = $now;
		$model->insertComment($input);
		$this->detail();		
	}
}
?>