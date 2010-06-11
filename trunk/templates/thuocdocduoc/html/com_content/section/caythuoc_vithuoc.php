<?php
defined('_JEXEC') or die('Restricted access');
/**
 * get filters
 *
 * @param mixed $option section
 * @return mixed This is the return value description
 *
 */
function getFilter($option)
{
	$db = &JFactory::getDBO();
	$db->setQuery("SELECT title,alias FROM #__categories WHERE section='$option' ORDER BY title");
	$results = $db->loadObjectList();
	return $results;
}
$menus	= &JSite::getMenu();
$menu	= $menus->getActive();

$cparams =& JComponentHelper::getParams('com_media');
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');

global $mainframe;

$templateUrl = JURI::root()."templates/".$mainframe->getTemplate();
$section=$this->section;
$categories =$this->categories;
$filter = JRequest::getVar('filter','');
$dcomFilter ='com_filter_alpha';
switch(strtolower($filter))
{
	case "tkh":	//ten khoa hoc	
	case "thv"://ten han viet
	case "htvvn":// ho thuc vat viet nam
	case "htvkh":// ho thuc vat khoa hoc
		$showSpectialTitle =true;
	case "kvlt":// khoang vat lam thuoc
		$dcomFilter ='com_filter_alpha';
	break;
	case "dvlt":// dong vat lam thuoc
		$dcomFilter="com_filter_ctvt_dongvatlamthuoc";
	break;
	case "bpd":// bo phan dung
		$dcomFilter="com_filter_ctvt_bophandung";
		break;
	case "tphh":// thanh phan hoa hoc
		$dcomFilter="com_filter_ctvt_thanhphanhoahoc";
		break;
	case "pltb"://phan loai theo benh
		$dcomFilter="com_filter_ctvt_phanloaitheobenh";
		break;
	case "tcdy"://phan loai theo tinh chat dong y	
		$dcomFilter="com_filter_ctvt_phanloaitheotinhchatdongy";
	break;
	case "":
		$filter='';		
	default:
	break;
}
include_once dirname(__FILE__).DS.'helper'.DS.'section.php';
$mSection = new ContentModelSectionHelper();
JRequest::setVar('limit',15);
$limit=JRequest::getVar("limit",0);
$limitstart=JRequest::getVar("limitstart",0);
$items =$mSection->getData();
$total = $mSection->getTotal();
$pagination = new JPagination($total,$limitstart,$limit);
$xemTheo = getFilter($dcomFilter);
if(empty($filter)) $filter='tvn';
foreach($items as &$item)
{	
	//attrbs 	
	$item->params = new JParameter($item->attribs);
	$showTitles =array('tvn','tkh','thv','htvvn','htvkh');
	//unset($art);
	$art= array();
	if(in_array($filter,$showTitles))
	if(strtolower($filter)=='htvvn'||strtolower($filter)=='htvkh')
	{
		$title="Họ ". $item->params->get($filter,'');
	}elseif(strtolower($filter)=='' || strtolower($filter)=='tvn')
	{
		$title=$item->title;
	}
	else
	{
		$title=$item->params->get(strtolower($filter),'');
	}	
	
	for($i=0;$i<count($showTitles);$i++)
	{
		if($showTitles[$i]!=$filter)
		{
			$tmp=$item->params->get($showTitles[$i],'');
			switch(strtolower($showTitles[$i]))
			{
				case "tkh":	//ten khoa hoc	
					if(!empty($tmp))
						$art[]="Tên khoa học: ".	$item->params->get($showTitles[$i],'');
					break;
				case "thv"://ten han viet
					if(!empty($tmp))
						$art[]="Tên hán việt: ".	$item->params->get($showTitles[$i],'');
					break;
				case "htvvn":// ho thuc vat viet nam
					if(!empty($tmp))
						$art[]="Họ thực vật Việt Nam: ".	$item->params->get($showTitles[$i],'');
					break;
				case "htvkh":// ho thuc vat khoa hoc
					if(!empty($tmp))
						$art[]="Họ thực vật khoa học: ".	$item->params->get($showTitles[$i],'');
					break;				
				case "tvn":
					if(!empty($tmp))
						$art[]="Tên Việt Nam: ".	$item->title;
					break;
				default:
					break;
			}
		}		
	}
	if(!empty($title))
		$item->title=$title;
	if(strpos(' '.$art[0],$item->title))
		unset($art[0]);
	$item->art=$art;
	//echo implode('<br/>',$art);
	$item->created_formated = new JDate($item->created);
	$item->created_formated->setOffset($mainframe->getCfg('offset'));
	$item->created_formated= $item->created_formated->toFormat('%d/%m/%Y');
	$item->text = $item->introtext;
	
	// Get the page/component configuration and article parameters
	$item->params = clone($this->params);
	$aparams = new JParameter($item->attribs);
	
	// Merge article parameters into the page configuration
	$item->params->merge($aparams);
	
	// Process the content preparation plugins
	
	$results = $dispatcher->trigger('onPrepareContent', array (& $item, & $item->params, 0));
	$item->introtext = strip_tags($item->introtext,'<p><a><br>');
	
	$plg_matches=array();
	$have_images = preg_match_all("|<[\s\v]*img[\s\v][^>]*>|Ui", $item->text, $plg_matches, PREG_PATTERN_ORDER) > 0;
	if($have_images)
	{
		$item->imgTag= $plg_matches[0][0];
		preg_match_all("/src=\"(.+?)\"/i", $item->imgTag, $m);
		$item->imgLink= $m[1][0];
	}
}

?>
<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
		<div class="fl-right">
		<form name="frm_filter" method="GET" action="index.php">
            <label>Xem theo:</label>
            <select name="viewby" onchange='this.form.submit()'>
				<option value="">Tất cả</option>
                <?php foreach($xemTheo as $xt):?>
					<option value="<?php echo base64_encode($xt->title);?>" <?php echo JRequest::getVar('viewby','')==base64_encode($xt->title)? "selected":"";?>><?php echo ucfirst($xt->title);?></option>
                <?php endforeach;?>
            </select>			
        <input type="hidden" name="option" value="<?php echo JRequest::getVar('option','');?>"/>
        <input type="hidden" name="view" value="<?php echo JRequest::getVar('view','');?>"/>
        <input type="hidden" name="layout" value="<?php echo JRequest::getVar('layout','');?>"/>
        <input type="hidden" name="filter" value="<?php echo JRequest::getVar('filter','');?>"/>
        <input type="hidden" name="Itemid" value="<?php echo JRequest::getVar('Itemid','');?>"/>
        <input type="hidden" name="id" value="<?php echo JRequest::getVar('id','');?>"/>
        </form>
        </div>
        <h2>
            <?php echo $menu->name; //echo $this->params->get('page_title');?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<!--list box-->
		<?php if(count($items)>0):?>
		<?php foreach ($items as &$item) : ?>
			
			
	<?php
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
			?>
			<div class="list-box2">
				<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>">
					<?php if(!empty($item->imgLink)):?>
					<img src="<?php echo $item->imgLink;?>" alt="Loading" class="img2" />
					<?php endif;?>
					</a> <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>" class="link_title">
						<?php //echo $showSpectialTitle? $item->oo: $item->title;?>
						<?php echo $item->title;//unset($art[0]);?>
						</a>
				<p>
					<?php //if(!empty($item->introtext)):?>
					<?php //echo $item->introtext;?>
					<?php //else:?>
					<?php echo implode('<br/>',$item->art);?>
					<?php // endif;?>
					</p>
			</div>
		<?php endforeach;?> 
		<?php else:?>
			<center>
			<p>Không có bài viết nào</p>
			</center>
		<?php endif;?>       
        <!--end list box-->
        <center>
            <p>
                <br />
                <br />
                &nbsp;<br />
                &nbsp;</p>
            <?php echo $pagination->getPagesLinks();?>
        </center>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->


