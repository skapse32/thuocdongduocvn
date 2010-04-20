<?php
$dispatcher	=& JDispatcher::getInstance();
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
?>
<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
            <?php echo $this->section->title; ?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
        <!--list box-->        
        <?php $pagination=$this->pagination; ?>
    <?php if(count($this->items)):?>
    <?php foreach($this->items as $item):?>
	<?php // get thumbnail  for items;	
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
	if($this->template=='gian_hang')
	{
		$uri = new JURI($item->link);
		//$uri->setQuery();
		$uri->setVar('Itemid',$this->sectionParams->get('Itemid'));
		$item->link = JRoute::_("index.php?".$uri->getQuery());
	}
	
	
			?>	
        <div class="list-box2">
                             <a href="<?php echo $item->link;?>">
                                <img class="img2" src="<?php echo $item->imgLink;?>"></a> <a class="link_title" href="<?php echo $item->link;?>">
									<?php echo $item->title;?></a><p>
                                        <?php echo $item->introtext;?>
                                        </p>
                                        <p>
                                        <a href="<?php echo $item->link;?>">Xem chi tiết</a></p>
                        </div>
        <?php endforeach;?>      
		<?php else:?>
			<center><p>Không có bài viết nào.</p></center>
		<?php endif;?>  
        <!--end list box-->
        <center>
            <?php echo $this->pagination->getPagesLinks();?>
        </center>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->
