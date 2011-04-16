<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$templateUrl = JURI::root()."templates/".$mainframe->getTemplate();
$dispatcher	=& JDispatcher::getInstance();
?>
<link rel="stylesheet" type="text/css" href="modules/mod_sub_slide/asset/skins/chungta/subskin.css" />

<script type="text/javascript">

jQuery('document').ready(function() {
    jQuery('#mycarousel').jcarousel({
        vertical: true,
        scroll: 2
    });
});

</script>
<ul id="mycarousel" class="jcarousel jcarousel-skin-tango">
    <?php foreach($ListNews as $aItem){
		$aItem->text = $aItem->introtext.$aItem->fulltext;

		// Get the page/component configuration and article parameters		
		$aItem->params = new JParameter($aItem->attribs);
		
		// Merge article parameters into the page configuration	

		// Process the content preparation plugins
		JPluginHelper::importPlugin('content');
		$results = $dispatcher->trigger('onPrepareContent', array (& $aItem, & $aItem->params, 0));	
		$img=$aItem->imgLink;
		//echo $img;
   ?>
    <li>
    <div id="modulel2_slide_field">
 		<div id="modulel2_slide_field_box">
 			<div id="modulel2_slide_field_box_pic">
 			<?php $link=JRoute::_(ContentHelperRoute::getArticleRoute($aItem->slug, $aItem->catslug, $aItem->sectionid));?>
 			<a href="<?php echo $link;?>">
                <img src="<?php echo $img ?>" style="border: 0px;" width="108px" height="78px"/>
            </a>
            </div>
            <div id="modulel2_slide_field_box_title">
                 <p><a href="<?php echo $link;?>" style="color:#5B5B5B">" <?php echo substr($aItem->title,0,25);?>..."</a></p>
            </div>
        </div>
        <div id="modulel2_slide_field_line">
            <img src="<?php echo $templateUrl ?>/images/line.jpg"/>
        </div>
     </div>                                                  
     </li>
   <?php }?>         
</ul>
			