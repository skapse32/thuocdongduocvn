<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$templateUrl = JURI::root()."templates/".$mainframe->getTemplate();
$dispatcher	=& JDispatcher::getInstance();
?>
<!--
  jCarousel library
-->
<script type="text/javascript" src="modules/mod_hotnews/asset/lib/jquery.jcarousel.min.js"></script>
<!--
  jCarousel skin stylesheet
-->
<link rel="stylesheet" type="text/css" href="modules/mod_hotnews/asset/skins/chungta/hotnews.css" />

<script type="text/javascript">

function mycarousel_initCallback(carousel)
{
    // Disable autoscrolling if the user clicks the prev or next button.
    carousel.buttonNext.bind('click', function() {
        carousel.startAuto(0);
    });

    carousel.buttonPrev.bind('click', function() {
        carousel.startAuto(0);
    });

    // Pause autoscrolling if the user moves with the cursor over the clip.
    carousel.clip.hover(function() {
        carousel.stopAuto();
    }, function() {
        carousel.startAuto();
    });
};

jQuery(document).ready(function() {	
    jQuery('#mycarousel').jcarousel({
        auto: 2,
        wrap: 'last',
        initCallback: mycarousel_initCallback
    });
});

</script>
<div id="moduel7_content">
  <ul id="mycarousel" class="jcarousel-skin-hotnew">
  <?php foreach($ListNews as $aItem){
		$aItem->text = $aItem->introtext.$aItem->fulltext;

		// Get the page/component configuration and article parameters		
		$aItem->params = new JParameter($aItem->attribs);
		
		// Merge article parameters into the page configuration	

		// Process the content preparation plugins
		JPluginHelper::importPlugin('content');
		$results = $dispatcher->trigger('onPrepareContent', array (& $aItem, & $aItem->params, 0)); 
		$img=$aItem->imgLink;
		$link=JRoute::_(ContentHelperRoute::getArticleRoute($aItem->slug, $aItem->catslug, $aItem->sectionid));
 		$sectionlink=JRoute::_(ContentHelperRoute::getSectionRoute($aItem->sectionid));?>
    <li>
    	<div id="moduel7_content_slide1">
            <a href="<?php echo $link;?>"><img src="<?php echo $img ?>" width="79px" height="58px" border="0px"/></a>
            <p><a href="<?php echo $sectionlink;?>" style="text-transform: uppercase"><?php echo $aItem->stitle;?></a></p>
            <p><span><a href="<?php echo $sectionlink;?>" style="color: #2C2C2C"><?php echo $aItem->title;?></a></span></p>
         </div>
         <div id="moduel7_content_slide_line"></div>	
    	
    </li>   
  <?php }?>       
  </ul>    
</div>
