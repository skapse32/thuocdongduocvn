<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
include_once dirname(__FILE__).DS.'helper.php';
include_once JPATH_ROOT.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php';
$list = modMostReadHelperExtended::getList($params);
// scroll down to up
$scrollable=false;
if($params->get('secid')==4)
	$scrollable=true;
?>
<?php if($scrollable):?>
<marquee onmouseout="this.start()" onmouseover="this.stop()" direction="up" scrollamount="1" behavior="scroll">
<?php endif;?>
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
		<a href="<?php echo $item->link; ?>"><img src="<?php echo $item->imgLink;?>" /></a>
		<a href="<?php echo $item->link; ?>" class="mostread<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php echo $item->title; ?></a>
	</li>
<?php endforeach; ?>
</ul>
<?php if($scrollable):?>
</marquee>
<?php endif;?>
<a class="view-all-1" href="<?php echo JRoute::_("index.php?option=com_content&view=section&id=".trim($params->get('secid'))."&Itemid=".JRequest::getVar('Itemid')); ?>">Xem tất cả</a>