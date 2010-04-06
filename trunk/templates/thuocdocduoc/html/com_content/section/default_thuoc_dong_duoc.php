<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$section = &$this->section;
$categories =&$this->categories;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
?>
<script language="javascript">
	jQuery('document').ready(function(){
		jQuery('select.sort-change').change(function(){
			//alert(jQuery(this).find('option:selected').val()+jQuery('input[name=sortfor]').val());
			jQuery('input[name=sortfor]').val(jQuery(this).attr('datafld'));
			document.getElementById('frm-sort').submit();
		});
		//click on select page
		jQuery('div.pagination-js a').click(function(){
			alert(jQuery(this).attr('datafld'));
			jQuery('input[name=limitstart]').val(jQuery(this).attr('datafld'));
			jQuery('input[name=limitfor]').val(jQuery(this).parents('.pagination-js').attr('datafld'));
			document.getElementById('frm-sort').submit();
			return false;
		});
		
	});
	
</script>
<form id="frm-sort" action ="<?php echo JRequest::getURI();?>" method='post'>
<input type="hidden" name="limitstart" value="<?php echo JRequest::getVar('limitstart');?>"/>
<input type="hidden" name="sortfor" value="<?php echo JRequest::getVar('sortfor');?>"/>
<input type="hidden" name="limitfor" value="<?php echo JRequest::getVar('limitfor');?>"/>
<input type="hidden" name="filter_order_Dir" value="desc"/>
<!--mdl-3-->
<?php $i=0;?>
<?php foreach ($categories as &$cat):?>
<?php $i++;?>
 <!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
		 <?php if($i==1):?>
        <div class="fl-right">
            <label>
                Xem theo:</label>
            <select name="">
                <option>Anpha be</option>
            </select>
            &nbsp;&nbsp;&nbsp;
            <select name="">
                <option>Dạng bào chế</option>
                <option>1. An thai</option>
                <option>...</option>
            </select>
            &nbsp;&nbsp;&nbsp;
            <select name="">
                <option>Nhóm điều trị</option>
                <option>1. An thai</option>
                <option>...</option>
            </select>
        </div>
        <?php else:?>
        <div class="fl-right">
            <a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($cat->slug, $cat->section).'&layout=blog');?>" class="view-all-2">Xem tất cả</a>
        </div>
        <?php endif;?>
        <h2 style='min-width:50px'>
            <?php echo $cat->title;?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
        <!--list box-->
        <?php if($cat->total):?>
			<?php if($i==1):?><!--first categories with images, filters, pagination-->
			<?php foreach ($cat->items as $item):?>
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
			?>	
				<div class="list-box2">
					<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>">
						<img src="<?php echo $item->imgLink;?>" class="img2" />
						</a> <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>" class="link_title">
							<?php echo $item->title;?></a><p>
								<?php echo $item->introtext;?></p>
				</div> 
			<?php endforeach;?>                              
			<?php elseif($i==2||$i==3):?><!-- two categories below with images-->
			<?php $first=true;$hasUL=false;?>
			<?php foreach ($cat->items as $item):?>
				<?php if($first):?>	<!--first item includes thumbnail-->
					<?php $first=false;?>
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
					?>			
                <div class="list-box1">
					<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>">
						<img style="float:left;margin:0 10px 10px 0;" src="<?php echo $item->imgLink;?>" class="img2" />
					</a>
                    <h4><a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>">
                        <?php echo $item->title;?></a></a></h4>
                    <p>
                        <?php echo $item->introtext;?></p>
                    <?php if($item->readmore):?>
                    <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>">Xem chi tiết</a>
                    <?php endif;?>
                </div>     
                <?php else:?>     <!--other items with text and links only-->  
                <!--list news-->
				<?php if(!$hasUL):?>
                <ul class="list2">
                <?php endif;?>
                <?php 
					$item->created_formated = new JDate($item->created);
					$item->created_formated->setOffset($mainframe->getCfg('offset'));
					$item->created_formated= $item->created_formated->toFormat('%d/%m/%Y');
				?>
                    <li><a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>">
                    <?php echo $item->title;?></a><span>(<?php echo $item->created_formated;?>)</span></li>                    
                <?php if(!$hasUL):?>
                </ul>  
                <?php $hasUL=true;?>
                <?php endif;?>              
                <!--end list news-->
                <?php endif;?>
            <?php endforeach;?>
			<?php else:?> <!-- other categories with text, links only-->
			<?php foreach ($cat->items as $item):?>
				<div class="list-box2">
					<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>" class="link_title">
					<?php echo $item->title;?></a>
					<p>
						<?php echo $item->introtext;?></p>
				</div>
			<?php endforeach;?>
			<?php endif;?>
        <!--end list box-->
        <?php if($i==1):?><!--show pagination for first category-->
        <center>
			<div class="pagination-js" datafld="<?php echo $cat->id;?>">
			<?php echo $cat->pagination->getPagesLinks();?>            
			</div>
        </center>
        <?php endif;?>
        <?php else:?>
			<center>
				<p>Chưa có bài viết nào!</p>
				<br/>
			</center>
        <?php endif;?>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<?php endforeach;?>
</form>
