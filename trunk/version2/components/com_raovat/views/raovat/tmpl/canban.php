<?php
defined("_JEXEC") OR die("Cam vao");
$templateUrl =JURI::root()."templates/".$mainframe->getTemplate();
?>

 <div class="mdl-cnt">
    <form id="frmlist" action="index.php" method="post" name="frmlist<?php echo time();?>">
    <div class="title">		
     <?php 
		if(JRequest::getVar('user_id') ==''):
	?>
        <div class="fl-right">
            <label>
                Xem theo:</label>
            <select name="city">
				<option value="">Tất cả</option>
                <?php foreach($this->citys as $c):?>
					<option value="<?php echo base64_encode($c);?>" <?php echo $this->city==$c?"selected='true'":"";?>><?php echo $c;?></option>
                <?php endforeach;?>
            </select>
            <?php 
				//var_dump($this->category);
			?>
            
           <select name="category">
				<option value="">Tất cả danh mục</option>
                <?php foreach($this->categorys as $category):?>
					<option value="<?php echo $category->id;?>" <?php echo $this->category==$category->id?"selected='true'":"";?>><?php echo $category->title;?></option>
                <?php endforeach;?>
            </select>
        </div>
        <div class="txt-sort">
            <p>
                <a href="javascript:void();" class="ordering <?php echo $this->order=='created'? "down":'';?>" datafld="created"   >Tin mới nhất</a> 
                <!--<a href="javascript:void();" class="down">Theo ngày</a> -->
                <a href="javascript:void();" class="ordering <?php echo $this->order=='hit'? "down":'';?>" datafld="hit" >
                    Xem nhiều nhất</a>
                    </p>
        </div>
        <?php endif;?>
        <h2>
            cần bán</h2>
        <img src="<?php echo $templateUrl;?>/images/news&amp;event_107.png" />
        
    </div>
    <input type="hidden" name="option" value="com_raovat"/>
    <input type="hidden" name="view" value="raovat"/>
    <input type="hidden" name="task" value="ordering"/>
    <input type="hidden" name="layout" value="canban"/>
    
    <!--<input type="hidden" name="category" value="<?php echo $this->category;?>" />-->
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
                            <a href="<?php echo JRoute::_("index.php?option=com_raovat&view=raovat&layout=detail&id=".$item->id);?>">
								<?php if($item->image):?>
									<img src="<?php echo JURI::root().'/images/raovat/thumb/'.$item->image;?>" class="img2" />
                                <?php else:?>
									<img src="<?php echo $this->small_logo;?>" class="img2" />
                                <?php endif;?>
                                </a>
                        </td>
                        <td width="25%" style="vertical-align: top;line-height:19px">
                            <strong><?php echo $item->city;?></strong><br />                            
                            Giá: <?php echo number_format($item->price,'','',',').' '.$item->currency;?>/<?php echo $item->unit;?><br />
                            <?php echo JHTML::_('date',$item->created,'%d-%m-%Y');?><br />
                            Số lượng: <?php echo $item->amount;?> <?php echo $item->unit;?>
                        </td>
                        <td style="padding-left: 10px; vertical-align: top">
                            <a href="index.php?option=com_raovat&view=raovat&layout=detail&id=<?php echo $item->id;?>" class="color2"><strong><?php echo $item->title;?></strong></a><br />
                             <div style="min-height:45px" > Mô tả: 
                            <?php if(strlen(strip_tags($item->desc))>135):?>
                             <?php echo substr(strip_tags($item->desc),0,strpos(strip_tags($item->desc),' ',120)).'...';?>
                             <?php else:?>
							 <?php echo strip_tags($item->desc);?>
                             <?php endif;?>
                            </div
                            ><?php $persional_info = &JTable::getInstance('raovat_profile');
							$persional_info->load($item->user_id);
							if($persional_info->user_id == NULL )
							{
								$user =&JFactory::getUser($_GET[$item->user_id]);
							}
			?>
                            <strong>Người bán:</strong> 
							<?php
							 if($persional_info->persional_name!="")
							 {
							 	$user = $persional_info->persional_name;
							 }
							 else
							 {
							 	$user = $user->username;
							 }
							 ?>
                            <a href="<?php echo JRoute::_('index.php?option=com_raovat&view=raovat&user_id='.$item->user_id);?>"><?php echo $user;?></a>
                            - Trả lời: 
							<?php
                            	$db =& JFactory::getDBO();
								$query = "SELECT count(*) FROM #__raovat_comment WHERE id_raovat  ='$item->id'";
								$db->setQuery($query);
								$result = $db->loadResult();
								echo $result;
								?>
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
	jQuery('select[name=category]').change(function(){
		form = jQuery(this).parents('form');				
		form.submit();		
	});
});
</script>