<?php
defined('_JEXEC') or die('Restricted access');
$cparams =& JComponentHelper::getParams('com_media');
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
include_once JPATH_COMPONENT.DS.'models'.DS.'section.php';
global $mainframe;
$templateUrl = JURI::root()."templates/".$mainframe->getTemplate();
$section=$this->section;
$categories =$this->categories;
$mSection = new ContentModelSection();
JRequest::setVar('limit',10);
$limit=JRequest::getVar("limit",0);
$limitstart=JRequest::getVar("limitstart",0);
$items =$mSection->getData();
$total = $mSection->getTotal();
$pagination = new JPagination($total,$limitstart,$limit);
foreach($items as $item)
{	
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
        <h2>
            <?php echo $section->title;?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<!--list box-->
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
					<img src="<?php echo $item->imgLink;?>" alt="Loading" class="img3" />
					<?php endif;?>
					</a> <a href="#<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>" class="link_title">
						<?php echo $item->title;?></a>
				<p>
					<?php echo $item->introtext;?></p>
					<br/>
					<?php if($item->readmore):?>
					<a class="view-detal" href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>">Xem chi tiết »</a>
					<?php endif;?>
			</div>
		<?php endforeach;?>        
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


