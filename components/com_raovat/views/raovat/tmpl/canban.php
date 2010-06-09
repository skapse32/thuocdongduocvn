<?php
defined("_JEXEC") OR die("Cam vao");
$templateUrl =JURI::root()."templates/".$mainframe->getTemplate();
?>

 <div class="mdl-cnt">
    <form id="frmlist" action="index.php" method="post" name="frmlist<?php echo time();?>">
    <div class="title">		
        <div class="fl-right">
            <label>
                Xem theo:</label>
            <select name="city">
				<option value="">Tất cả</option>
                <?php foreach($this->citys as $c):?>
					<option value="<?php echo base64_encode($c);?>" <?php echo $this->city==$c?"selected='true'":"";?>><?php echo $c;?></option>
                <?php endforeach;?>
            </select>
        </div>
        <div class="txt-sort">
            <p>
                <a href="javascript:void();" class="ordering <?php echo $this->order=='created'? "down":'';?>" datafld="created"   >Tin mới nhất</a> 
                <!--<a href="javascript:void();" class="down">Theo ngày</a> -->
                <a href="javascript:void();" class="ordering <?php echo $this->order=='hit'? "down":'';?>" datafld="hit" >
                    Xem nhiều nhất</a></p>
        </div>
        <h2>
            cần bán</h2>
        <img src="<?php echo $templateUrl;?>/images/news&amp;event_107.png" />
        
    </div>
    <input type="hidden" name="option" value="com_raovat"/>
    <input type="hidden" name="view" value="raovat"/>
    <input type="hidden" name="task" value="ordering"/>
    <input type="hidden" name="layout" value="canban"/>
    <input type="hidden" name="Itemid" value="<?php echo JRequest::getVar('Itemid');?>"/>
    <input type="hidden" name="order" value="<?php echo JRequest::getVar('order','');?>"/>
    </form>
    <div class="cnt">
        <!--list box-->
        <div style="margin:0 2%">
			<?php foreach($this->canban as $item):?>
            <div class="list-box3">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="20%" style="vertical-align: top">
                            <a href="#">
                                <img src="<?php echo JURI::root().'/images/raovat/thumb/'.$item->image;?>" class="img2" /></a>
                        </td>
                        <td width="20%" style="vertical-align: top">
                            <strong><?php echo $item->city;?></strong><br />                            
                            Giá: <?php echo $item->price;?>/<?php echo $item->unit;?><br />
                            <?php echo JHTML::_('date',$item->created,'%d-%m-%Y');?><br />
                            Số lượng: <?php echo $item->amount;?> <?php echo $item->unit;?>
                        </td>
                        <td style="padding-left: 10px; vertical-align: top">
                            <a href="#" class="color2"><strong><?php echo $item->title;?></strong></a><br />
                            Mô tả: <?php echo substr(strip_tags($item->desc),0,180).'...';?><br />
                            <strong>Người bán:</strong> <a href="#">lucha123</a> - Trả lời: 5
                        </td>
                    </tr>
                </table>
            </div>
            <?php endforeach;?>           
            <?php echo $this->canbanpage->getPagesLinks();?>
        </div>
        <!--end list box-->
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&amp;event_73.png" class="img-rounded" />
</div>
<script language='javascript'>
jQuery('document').ready(function(){
	jQuery('.ordering').click(function(){
		form = jQuery(this).parents('form');		
		form.find('input[name=order]').val(jQuery(this).attr('datafld'));
		form.submit();
		return false;
	});
	jQuery('select[name=city]').change(function(){
		form = jQuery(this).parents('form');				
		form.submit();		
	});
});
</script>