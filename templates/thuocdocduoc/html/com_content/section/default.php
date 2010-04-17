<?php // no direct access
function getFilter($option)
{
	$db = &JFactory::getDBO();
	$db->setQuery("SELECT title,alias FROM #__categories WHERE section='$option' ORDER BY title");
	$results = $db->loadObjectList();
	return $results;
}
defined('_JEXEC') or die('Restricted access');
include_once JPATH_BASE.DS.'components'.DS.'com_content'.DS.'models'.DS.'category.php';
$section = &$this->section;
$categories =&$this->categories;
$sectionParams = new JParameter($section->params);
$template=$sectionParams->get("tpl");
switch($template)
{
	case "thuoc_dong_duoc":		
		include_once dirname(__FILE__).DS.'helper'.DS."category.php";
		$mCategory = new ContentModelCategoryHelper();
		$i=0;
		foreach( $categories as $cat)
		{
			$i++;
			$mCategory->setId($cat->id);
			if($i==1)// first category
			{
				JRequest::setVar('limit',5,'post');// set default limit is 5 items
				$dcomFilter=array();
				$dcomFilter[] ='com_filter_alpha';
				$dcomFilter[] ='com_filter_t_nhomdieutri';
				$dcomFilter[] ='com_filter_t_dangbaoche';
				$xemTheo=array();
				foreach($dcomFilter as $dc)
				{
					$xemTheo[$dc]=getFilter($dc);
				}				
				$this->assign('xemtheo',$xemTheo);
				
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
	case "bai_thuoc":	
		include_once dirname(__FILE__).DS.'helper'.DS."section.php";
		include_once JPATH_BASE.DS.'components'.DS.'com_content'.DS.'models'.DS.'section.php';
		jimport('joomla.html.pagination');
		$viewby=JRequest::getVar('viewby',array(),'default','array');
		$limitstart=JRequest::getVar('limitstart',array(),'default','array');
		$this->assign('viewby',$viewby);
		$this->assign('limitstart',$limitstart);
		//  initial viewby
		$dcomFilter = $sectionParams->get('filters','');		
		$dcomFilter = explode(',',$dcomFilter);
		$filter = JRequest::getVar('filter','');		
		if(!empty($filter))
		{
			switch($filter)
			{
				case "tvn":
					$dcomFilter=array('com_filter_alpha');
				break;		
				case "bt_tcdy":
					$dcomFilter=array('com_filter_bt_phanloaitheotinhchatdongy');
					break;		
				case "bt_pltb":
					$dcomFilter=array('com_filter_bt_phanloaitheobenh');
					break;		
			}			
		}
		//$mSection = new ContentModelSectionHelper();
		$i=-1;
		foreach($dcomFilter as $dc)
		{
			$i=$i+1;
			$groups[$dc] = new stdClass();
			$groups[$dc]->xemtheo=getFilter($dc);
			//get items
			if($dc=="com_filter_alpha")
			{				
				JRequest::setVar('limit',2,'post');// set default limit is 5 items								
				JRequest::setVar('filter','','post');
				JRequest::setVar('viewby',@$viewby[$i]);
				JRequest::setVar('limitstart',@$limitstart[$i]);
				$mSection = new ContentModelSectionHelper();
				$groups[$dc]->items = $mSection->getData();
				$groups[$dc]->total = $mSection->getTotal();
				$groups[$dc]->pagination = new JPagination($groups[$dc]->total,JRequest::getVar('limitstart',0),JRequest::getVar('limit',5));				
				$groups[$dc]->title="Bài thuốc theo tên";
			}
			elseif($dc=="com_filter_bt_phanloaitheotinhchatdongy")
			{				
				JRequest::setVar('limit',1,'post');// set default limit is 5 items								
				JRequest::setVar('filter','bt_tcdy');
				JRequest::setVar('viewby',@$viewby[$i]);
				JRequest::setVar('limitstart',@$limitstart[$i]);
				$mSection = new ContentModelSectionHelper();
				$groups[$dc]->items = $mSection->getData();
				$groups[$dc]->total = $mSection->getTotal();
				$groups[$dc]->pagination  = new JPagination($groups[$dc]->total,JRequest::getVar('limitstart',0),JRequest::getVar('limit',5));				
				$groups[$dc]->title="Phân loại theo tính chất đông y";
			}
			elseif($dc=="com_filter_bt_phanloaitheobenh")
			{
				JRequest::setVar('limit',1,'post');// set default limit is 5 items								
				JRequest::setVar('filter','bt_pltb');
				JRequest::setVar('viewby',@$viewby[$i]);
				JRequest::setVar('limitstart',@$limitstart[$i]);
				$mSection = new ContentModelSectionHelper();
				$groups[$dc]->items = $mSection->getData();
				$groups[$dc]->total = $mSection->getTotal();
				$groups[$dc]->pagination  = new JPagination($groups[$dc]->total,JRequest::getVar('limitstart',0),JRequest::getVar('limit',5));				
				$groups[$dc]->title="Phân loại theo bệnh";
			}
			
		}		
		JRequest::setVar('filter',$filter);		
		$this->assign('groups',$groups);
		
		
		
		
		
		/*$mCategory = new ContentModelCategory();	
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
		JRequest::setVar('limitstart',$limitstart);	*/		
		echo $this->loadTemplate($template);
		return;
	break;
}
?>
Error Loading Template.Click <a href="javascript:history.go(-1);">here</a> to return
