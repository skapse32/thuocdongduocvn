<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$templateUrl = JURI::root()."templates/".$mainframe->getTemplate();
$dispatcher	=& JDispatcher::getInstance();
?>
<!--
  jCarousel library
-->
<script type="text/javascript" src="modules/mod_main_slide/asset/lib/jquery.jcarousel.min.js"></script>
<!--
  jCarousel skin stylesheet
-->
<link rel="stylesheet" type="text/css" href="modules/mod_main_slide/asset/skins/chungta/mainskin.css" />

<script type="text/javascript">
jQuery(document).ready(function() {
    jQuery('#mycarousel1').jcarousel({
    	wrap: 'circular'
    });
});;
</script>
  <ul id="mycarousel1" class="jcarousel-skin-main">
  <?php foreach($ListNews as $aItem){
		$aItem->text = $aItem->introtext.$aItem->fulltext;

		// Get the page/component configuration and article parameters		
		$aItem->params = new JParameter($aItem->attribs);
		
		// Merge article parameters into the page configuration	

		// Process the content preparation plugins
		JPluginHelper::importPlugin('content');
		$results = $dispatcher->trigger('onPrepareContent', array (& $aItem, & $aItem->params, 0)); 
		$img=$aItem->original_img;
 		$sectionlink=JRoute::_(ContentHelperRoute::getSectionRoute($aItem->sectionid));?>
    <li>
    	<div id="modulel1_pic">
		<div id="modulel1_pic_title" class="transparent_class">
		     <a href="<?php echo $sectionlink?>" style="text-transform: uppercase"> <?php echo $aItem->stitle;?></a>
		</div>
		<img src="<?php echo $img ?>" width="356px" height="282px"/>
		</div>
		
		<div id="modulel1_paragraph">
		<div id="modulel1_paragraph_title">
		<?php $link=JRoute::_(ContentHelperRoute::getArticleRoute($aItem->slug, $aItem->catslug, $aItem->sectionid));?>			  
		<h2 style="width: 300px;"><a href="<?php echo $link;?>"><?php echo $aItem->title;?></a></h2>
		</div>
		<div id="modulel1_paragraph_content">
		<ul>
			<li>
			<p><?php echo substr(strip_tags($aItem->introtext),0,200)?>...</p>
			</li>
		</ul>
		</div>
		</div>
		
    </li>   
  <?php }?>       
  </ul>    

