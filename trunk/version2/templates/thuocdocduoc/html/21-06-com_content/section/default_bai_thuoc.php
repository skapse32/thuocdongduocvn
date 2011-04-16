<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
//$section = &$this->section;
//$categories =&$this->categories;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$xemtheoTitle = array('com_filter_alpha'=>"Alpha Be",'com_filter_bt_phanloaitheobenh'=>'Theo bệnh','com_filter_bt_phanloaitheotinhchatdongy'=>'Theo tính chất đông y');
$viewby=$this->viewby;
$limitstart=$this->limitstart;
//$viewbyTitle =  array('com_filter_alpha'=>"alpha",'com_filter_bt_phanloaitheobenh'=>'bt_pltb','com_filter_bt_phanloaitheotinhchatdongy'=>'bt_tcdy');
?>
<script language="javascript">
	jQuery('document').ready(function(){		
		//click on select page
		jQuery('div.pagination-js a').attr('href','#');
		jQuery('div.pagination-js a').click(function(){					
			jQuery('input[name=limitstart]').val(jQuery(this).attr('datafld'));
			pr=jQuery(this).parents('div.pagination-js');
			limit=pr.find('input[name=limitstart[]]');
			limit.val(jQuery(this).attr('datafld'));			
			document.getElementById('frm-sort').submit();
			return false;
		});
		
	});
	
</script>
<form id="frm-sort" action="index.php" method="GET">
<!--mdl-3-->
<?php $i=-1;?>
<?php foreach ($this->groups as $k=>$cat):?>
<?php $i=$i+1;?>
<div class="mdl-cnt">
    <div class="title">
		<?php if(is_array($cat->xemtheo)):?>
        <div class="fl-right">
            <label>
                Xem theo:</label>               
            <select name="viewby[]" onchange='jQuery("input[name=limitstart[]]").val(0);this.form.submit();' style="max-width:130px;">
				<option value=""><?php echo $xemtheoTitle[$k];?></option>
                <?php foreach($cat->xemtheo as &$xt):?>
					<option value="<?php echo base64_encode($xt->title);?>" <?php echo @$viewby[$i]==base64_encode($xt->title)? "selected":"";?>><?php echo ucfirst($xt->title);?></option>
                <?php endforeach;?>
            </select>
        </div>
        <?php endif;?>
        <h2>
			<?php if($k=="com_filter_alpha"):?>
			<a href="<?php echo JRoute::_("index.php?option=com_content&view=section&id=3&filter=tvn&Itemid=21");?>">
			<?php elseif($k=="com_filter_bt_phanloaitheotinhchatdongy"):?>
			<a href="<?php echo JRoute::_("index.php?option=com_content&view=section&id=3&filter=bt_tcdy&Itemid=22");?>">			
			<?php elseif($k=="com_filter_bt_phanloaitheobenh"):?>
			<a href="<?php echo JRoute::_("index.php?option=com_content&view=section&id=3&filter=bt_pltb&Itemid=23");?>">			
			<?php endif;?>
            <?php echo $cat->title;?></a></h2>
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
                <?php echo strip_tags($item->introtext,'<p><a><br>');?></p>
        </div>
        <?php endforeach;?>
        <!--end list box-->
        <center>
			<div class="pagination-js" datafld="<?php echo $cat->id;?>">
			<input type="hidden" name="limitstart[]" value="<?php echo $limitstart[$i];?>"/>
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
	<input type="hidden" name="option" value="<?php echo JRequest::getVar('option','');?>"/>
        <input type="hidden" name="view" value="<?php echo JRequest::getVar('view','');?>"/>
        <?php if(JRequest::getVar('layout','')!=''):?>
        <input type="hidden" name="layout" value="<?php echo JRequest::getVar('layout','');?>"/>
        <?php endif;?>
        <?php if(JRequest::getVar('filter','','GET')!=''):?>
        <input type="hidden" name="filter" value="<?php echo JRequest::getVar('filter','');?>"/>
        <?php endif;?>
        <input type="hidden" name="Itemid" value="<?php echo JRequest::getVar('Itemid','');?>"/>
        <input type="hidden" name="id" value="<?php echo JRequest::getVar('id','');?>"/>      
</form>