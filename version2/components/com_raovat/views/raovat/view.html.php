<?php

defined("_JEXEC") or die("Cam vao");
jimport('joomla.application.component.view');
class RaoVatViewRaoVat extends JView
{
	function display()
	{	
		global $option;	
		$model = $this->getModel();
		//$model->setState('limit',4);		
		$com = &JComponentHelper::getComponent($option);		
		$params= new JParameter($com->params);			
		$citys =$params->get('citys','');		
		$citys = explode('<br />',nl2br($params->get('citys','')));
		$order =trim(strtolower(JRequest::getVar("order",'created')));
		$model->setState('limit',5);
		$this->assignRef('canban',$model->getData(0));
		//$this->assignRef('canbanpage',$model->getPagination());
		$this->assignRef('canmua',$model->getData(1));
		//$this->assignRef('canmuapage',$model->getPagination());
		
		$small_logo =$params->get('small_logo','');		
		$large_logo =$params->get('large_logo','');		
		$this->assignRef('small_logo',$small_logo);
		$this->assignRef('large_logo',$large_logo);
				
		$this->assignRef('order',$order);
		$this->assignRef('citys',$citys);
		
		parent::display();
	}
	function canban()
	{
		global $option;	
		$this->setLayout('canban');
		$model = $this->getModel('raovat');		
		$model->setState('limit',10);
		$model->setState('limitstart',JRequest::getVar("limitstart",0));
		$this->assignRef('canban',$model->getData(0));
		$this->assignRef('canbanpage',$model->getPagination());
		$this->assignRef('categorys',$model->getRaovat_category());
		$com = &JComponentHelper::getComponent($option);		
		$params= new JParameter($com->params);			
		$small_logo =$params->get('small_logo','');		
		$large_logo =$params->get('large_logo','');		
		$this->assignRef('small_logo',$small_logo);
		$this->assignRef('large_logo',$large_logo);
		parent::display();
		
	}
	function canban_detail()
	{
		global $option;	
		$this->setLayout('canban_detail');
		$model = $this->getModel('raovat');		
		$model->setState('limit',5);
		$comment = $model->getComment();	
		$this->assignRef('comment',$comment);
		$this->assignRef('commentpage',$model->getPagination());
		$this->assignRef('item_canban',$model->getItem());
		$com = &JComponentHelper::getComponent($option);		
		$params= new JParameter($com->params);			
		$small_logo =$params->get('small_logo','');		
		$large_logo =$params->get('large_logo','');		
		$this->assignRef('small_logo',$small_logo);
		$this->assignRef('large_logo',$large_logo);
		
		parent::display();
		
	}	
	function canmua()
	{				
		global $option;	
		$this->setLayout('canmua');
		$model = $this->getModel('raovat');		
		$model->setState('limit',10);
		$model->setState('limitstart',JRequest::getVar("limitstart",0));
		$this->assignRef('canmua',$model->getData(1));
		$this->assignRef('canmuapage',$model->getPagination());
		$this->assignRef('categorys',$model->getRaovat_category());
		$this->assignRef('uri',$uri);
		$com = &JComponentHelper::getComponent($option);		
		$params= new JParameter($com->params);			
		$small_logo =$params->get('small_logo','');		
		$large_logo =$params->get('large_logo','');		
		$this->assignRef('small_logo',$small_logo);
		$this->assignRef('large_logo',$large_logo);
		
		parent::display();
		
	}
}

?>