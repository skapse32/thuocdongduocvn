<?php
defined('_JEXEC') or die('Restricted access');
$cparams =& JComponentHelper::getParams('com_media');
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
global $mainframe;
$templateUrl = JURI::root()."templates/".$mainframe->getTemplate();
$section=$this->section;
$categories =$this->categories;
$items =$this->items;
include_once JPATH_COMPONENT.DS.'models'.DS.'category.php';
$mCategory = new ContentModelCategory();
JRequest::setVar("limit",3);
for($i=0;$i<count($categories);$i++)
{
	$cat =&$categories[$i];
	$cat->articles =array();
	$mCategory->setId($cat->id);	
	$cat->articles =$mCategory->getData();
	for($j=0;$j<count($cat->articles);$j++)
	{
		$item = &$cat->articles[$j];
		
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
}
?>
<?php foreach(  $categories as &$cat):?>
 <!--mdl-3--> 
<div class="mdl-cnt">
    <div class="title">
        <div class="fl-right">
            <a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($cat->slug, $cat->section).'&layout=blog');?>" class="view-all-2">Xem tất cả</a>
        </div>
        <h2>
			<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($cat->slug, $cat->section).'&layout=blog');?>">
            <?php echo $cat->title;?></a></h2>
        <img  src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<? if(count($cat->articles)):?><!--Hiển thị các bài viết trong section-->
        <!--list box-->
        <?php $firstArticle = $cat->articles[0];?>
        <div class="list-box1">
			<?php if(!empty($firstArticle->imgTag)):?>			
			<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($firstArticle->slug, $firstArticle->catslug, $firstArticle->sectionid));?>">
			<img src="<?php echo $firstArticle->imgLink;?>" class="<?php echo (JRequest::getInt('id')==5)?"img3":"img";?>" />
			</a>
			<?php else:?>
            <!--<img src="<?php echo $templateUrl;?>/images/news&event_58.png" class="img" />-->
            <?php endif;?>
            <h4>
				<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($firstArticle->slug, $firstArticle->catslug, $firstArticle->sectionid));?>">
                <?php echo $firstArticle->title;?></a></h4>
            <p>
                <?php  echo  strip_tags($firstArticle->introtext,"<p><a><br><br/>");?>
                
                </p>
            <?php if($firstArticle->readmore>0):?>
            <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($firstArticle->slug, $firstArticle->catslug, $firstArticle->sectionid));?>">Xem chi tiết</a>
            <?php endif;?>
        </div>
        <!--end list box-->
        <!--list news-->
        <ul class="list2">
			<?php for($i=1;$i<3&&$i<count($cat->articles);$i++):?>
            <li><a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($cat->articles[$i]->slug, $cat->articles[$i]->catslug, $cat->articles[$i]->sectionid));?>">
				<?php echo $cat->articles[$i]->title;?></a><span class="datepub">(<?php echo $cat->articles[$i]->created_formated;?>)</span></li>
            <?php endfor;?>            
        </ul>
        <!--end list news-->
        <?php else:?><!-- Thông báo không có bài viết nào trong Section này-->
        <div class="list-box1">
			<h4>Chưa có bài viết nào trong mục này.</h4>
		</div>
        <?php endif;?>
        
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->
<?php endforeach;?>
<!--mdl-3-->
