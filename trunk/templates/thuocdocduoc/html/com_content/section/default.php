﻿<?php // no direct access
defined('_JEXEC') or die('Restricted access');
include_once JPATH_COMPONENT.DS."models".DS."category.php";
$section = &$this->section;
$categories =&$this->categories;
$sectionParams = new JParameter($section->params);
$template=$sectionParams->get("tpl");
switch($template)
{
	case "thuoc_dong_duoc":
		$mCategory = new ContentModelCategory();
		$i=0;
		foreach( $categories as $cat)
		{
			$i++;
			$mCategory->setId($cat->id);
			if($i==1)// first category
			{
				JRequest::setVar('limit',5,'post');// set default limit is 5 items
			}
			else
			{
				JRequest::setVar('limit',3,'post');// set limit is 3 items for other categories
			}
			$cat->items= $mCategory->getData();
			$cat->total = $mCategory->getTotal();
			$cat->pagination = new JPagination($cat->total,JRequest::getVar('limitstart',0),JRequest::getVar('limit',5));
		}
		echo $this->loadTemplate($template);
		return;
	break;
	case "blog_list":				
		jimport('joomla.html.pagination');
		JRequest::setVar('limit',5,'post');// set default limit is 5 items
		$mCategory = new ContentModelCategory();	
		$sortfor = JRequest::getVar('sortfor');	
		$limitfor = JRequest::getVar('limitfor');		
		$limitstart = JRequest::getVar('limitstart',0);		
		$filter_order= JRequest::getVar('sortfor'.$sortfor,'');
		for($i=0;$i<count($categories);$i++)
		{
			$cat = &$categories[$i];
			$mCategory->setId($cat->id);			
			if($sortfor!=$cat->id)
			{
				JRequest::setVar("filter_order","title");				
			}
			else
			{
				JRequest::setVar("filter_order",$filter_order);				
			}
			if(strtolower(JRequest::getVar("filter_order","title"))=='title')
				JRequest::setVar("filter_order_Dir","ASC");
			else
				JRequest::setVar("filter_order_Dir","DESC");
			
			if($limitfor!=$cat->id)			
				JRequest::setVar('limitstart',0);			
			else
				JRequest::setVar('limitstart',$limitstart);			
			
			$cat->items= $mCategory->getData();
			$cat->total = $mCategory->getTotal();
			$cat->pagination = new JPagination($cat->total,JRequest::getVar('limitstart',0),JRequest::getVar('limit',5));
		}	
		JRequest::setVar('limitstart',$limitstart);			
		echo $this->loadTemplate($template);
		return;
	break;
}
?>
Error Loading Template.Click <a href="javascript:history.go(-1);">here</a> to return