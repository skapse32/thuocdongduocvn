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
$this->sectionParams=$sectionParams;
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$template=$sectionParams->get("tpl");
$this->template=$template;
$dispatcher	=& JDispatcher::getInstance();
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
		echo $this->loadTemplate($template);
		return;
	break;
	case "gian_hang":
		include_once dirname(__FILE__).DS.'helper'.DS."section.php";
		$mSection = new ContentModelSectionHelper();
		jimport('joomla.html.pagination');
		//$pagination= new JPagination();
		$mSection->setState('limit',3);
		$mSection->setState('limitstart',JRequest::getVar('limitstart',0));				
		$this->items=$mSection->getStores(JRequest::getVar('id',0),$this->pagination);
		echo $this->loadTemplate($template);
		return;
	break;
}
?>
<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
            <?php echo $section->title; ?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
        <!--list box-->        
        <?php $pagination=$this->pagination; ?>
        <?php for($i=$pagination->get('limitstart',0);$i<($pagination->get('limit')+$pagination->get('limitstart',0)>$pagination->get('total')?$pagination->get('total'):$pagination->get('limit')+$pagination->get('limitstart',0));$i++):?>
        <?php // get thumbnail  for items;
				$item = $this->items[$i];
				$item->text = $item->introtext;
	
				// Get the page/component configuration and article parameters
				$item->params = clone($this->params);
				$aparams = new JParameter($item->attribs);
				
				// Merge article parameters into the page configuration
				$item->params->merge($aparams);
				
				// Process the content preparation plugins
				
				$results = $dispatcher->trigger('onPrepareContent', array (& $item, & $item->params, 0));
				
				
				$plg_matches=array();
				$have_images = preg_match_all("|<[\s\v]*img[\s\v][^>]*>|Ui", $item->text, $plg_matches, PREG_PATTERN_ORDER) > 0;
				if($have_images)
				{
					$item->imgTag= $plg_matches[0][0];
					preg_match_all("/src=\"(.+?)\"/i", $item->imgTag, $m);
					$item->imgLink= $m[1][0];
				}
				// create item links
				$item->link =ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid);
				if($template=='gian_hang')
				{
					$uri = new JURI($item->link);
					//$uri->setQuery();
					$uri->setVar('Itemid',$sectionParams->get('Itemid'));
					$item->link = JRoute::_("index.php?".$uri->getQuery());
				}
				
				
			?>	
        <div class="list-box2">
						<?php if(is_array(@getimagesize($item->imgLink))):?>
                             <a href="<?php echo $item->link;?>">
                                <img class="img2" src="<?php echo $item->imgLink;?>"></a>
                        <?php endif;?>
                         <a class="link_title" href="<?php echo $item->link;?>">
									<?php echo $item->title;?></a><p>
                                        <?php echo $item->introtext;?>
                                        </p>
                                        <p>
                                        <a href="<?php echo $item->link;?>">Xem chi tiết</a></p>
                        </div>
        <?php endfor;?>        
        <!--end list box-->
        <center>
            <?php echo $this->pagination->getPagesLinks();?>
        </center>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->
