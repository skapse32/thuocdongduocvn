<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$cat = &$this->category;
$mCategory = new ContentModelCategory();
$mCategory->setId($cat->id);
JRequest::setVar("limit",10);
$limitstart	= JRequest::getVar('limitstart', 0, '', 'int');
$limit	= JRequest::getVar('limit', 0, '', 'int');

$items = &$mCategory->getData();
$total = &$mCategory->getTotal();


$pagination = new JPagination($total,$limitstart,$limit);
?>
<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2 style='min-width:50px'>
            <?php echo $cat->title;?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<!--list box-->
		<?php if(count($items)):?>
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
					<?php if(!empty($item->imgLink)&&@GetImageSize($item->imgLink)):?>
					<img src="<?php echo $item->imgLink;?>" alt="Loading" class="img2" />
					<?php endif;?>
					</a> <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>" class="link_title">
						<?php echo $item->title;?></a>
				<p>
					<?php echo $item->introtext;?></p>
			</div>
		<?php endforeach;?>        
		<?php else:?>
			<center><p>Chưa có bài viết nào</p></center>
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

