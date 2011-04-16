<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$section = &$this->section;
$categories =&$this->categories;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
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
<?php foreach ($categories as $cat):?>
<div class="mdl-cnt">
    <div class="title">
        <div class="fl-right">
            <label>
                Xem theo:</label>
            <select class="sort-change" datafld="<?php echo $cat->id;?>" name="sortfor<?php echo $cat->id;?>">
                <option <?php echo JRequest::getVar("sortfor".$cat->id)=='title'? "selected":""; ?> value="title">Alpha beta</option>
                <option <?php echo JRequest::getVar("sortfor".$cat->id)=='created'? "selected":""; ?> value="created">Date Created</option>
            </select>
        </div>
        <h2>
            <?php echo $cat->title;?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
        <!--list box-->
        <?php if($cat->total):?>
        <?php foreach ($cat->items as $item):?>
        <?php
		$item->created_formated = new JDate($item->created);
		$item->created_formated->setOffset($mainframe->getCfg('offset'));
		$item->created_formated= $item->created_formated->toFormat('%d/%m/%Y');
        ?>
			<div class="list-box2">
            <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>" class="link_title">
				<?php echo $item->title;?></a><span>(<?php echo $item->created_formated;?>)</span>
            <p>
                <?php echo $item->introtext;?></p>
        </div>
        <?php endforeach;?>
        <!--end list box-->
        <center>
			<div class="pagination-js" datafld="<?php echo $cat->id;?>">
			<?php echo $cat->pagination->getPagesLinks();?>            
			</div>
        </center>
        <?php else:?>
			<center>
				<p>Chưa có bài viết nào!</p>
				<br/>
			</center>
        <?php endif;?>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>

<!--end-mdl-3-->
<?php endforeach;?>
</form>
