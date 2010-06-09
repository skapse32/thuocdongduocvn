﻿<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 

$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');


include_once dirname(__FILE__).DS.'helper.php';
include_once JPATH_ROOT.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php';
$list = modMostReadHelperExtended::getList($params);
// scroll down to up
$scrollable=false;
if($params->get('secid')==9)
	$scrollable=true;
?>
<?php if($scrollable&&count($list)>=5):?>
<script language="javascript" type="text/javascript" src="<?php echo JURI::root().'templates/thuocdocduoc/html/mod_mostread/jcarousellite_1.0.1.min.js'?>"></script>

<script language="javascript">
jQuery.noConflict();
jQuery('document').ready(function(){

	//alert(jQuery("#xxx").size());
	//jQuery("#xxx").scrollable({size:2}).autoscroll();
	jQuery(".newsticker-jcarousellite").jCarouselLite({  
        vertical: true,  
        visible: 5,  
        auto:500,  
        speed:5000  
    });  
    jQuery('.newsticker-jcarousellite').find('li:first').css('height','90px');
 
});
</script>
<!--<marquee onmouseout="this.start()" onmouseover="this.stop()" direction="up" scrollamount="1" behavior="scroll">-->
<?php endif;?>
<div class="newsticker-jcarousellite">
<ul class="list3">
<?php foreach ($list as $item) : ?>
<?php
	$item->text = $item->introtext;
	
	// Get the page/component configuration and article parameters
	//$item->params = clone($this->params);
	$aparams = new JParameter($item->attribs);
	
	// Merge article parameters into the page configuration
//	$item->params->merge($aparams);
	
	// Process the content preparation plugins
	
	$results = $dispatcher->trigger('onPrepareContent', array (& $item, & $item->params, 0));
	//$xx->jumultithumb(&$item);
	
	
	$plg_matches=array();
	$have_images = preg_match_all("|<[\s\v]*img[\s\v][^>]*>|Ui", $item->text, $plg_matches, PREG_PATTERN_ORDER) > 0;
	if($have_images)
	{
		$item->imgTag= $plg_matches[0][0];
		preg_match_all("/src=\"(.+?)\"/i", $item->imgTag, $m);
		$item->imgLink= $m[1][0];
	}
?>
	<li>
		<a href="<?php echo $item->link; ?>"><img <?php echo (strtolower(JRequest::getVar('layout'))=='thuvien' ||$item->sectionid==5 ?"style='width:45px'":""); ?> src="<?php echo $item->imgLink;?>" /></a>
		<a href="<?php echo $item->link; ?>" class="mostread<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php echo $item->title; ?></a>
	</li>
<?php endforeach; ?>
</ul>
</div>
<?php if($scrollable):?>
<!--</marquee>-->
<?php endif;?>
<?php if(count($list)>=5||count($list)==$params->get('count')):?>
<?php
	$viewall =JRoute::_("index.php?option=com_content&view=section&id=".trim($params->get('secid'))."&Itemid=".JRequest::getVar('Itemid').(JRequest::getVar('layout')!=''?"&layout=".JRequest::getVar('layout'):""));
	if($params->get('secid','')==9)
		$viewall=JRoute::_("index.php?option=com_content&view=section&id=9&Itemid=2&layout=default");;
?>
<a class="view-all-1" href="<?php echo $viewall;?>">Xem tất cả</a>
<?php endif;?>