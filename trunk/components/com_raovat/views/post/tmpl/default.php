<?php

defined("_JEXEC") or die("Cam vao");
global $mainframe;
$templateUrl =JURI::root()."templates/".$mainframe->getTemplate();
JHTML::_('behavior.tooltip');
$post = $this->post;
$profile =$this->profile;
?>

<div class="mdl-cnt">
    <div class="title">
        <h2>
            Đăng rao vặt</h2>
        <img src="<?php echo $templateUrl;?>/images/news&amp;event_107.png" />
    </div>
    <div class="cnt">
        <!--list box-->
        <div class="detail raovat_form form">
        <form name="frm_raovat" action="<?php echo JRequest::getURI();?>" method='POST' enctype="multipart/form-data">
            <table>				
				<tr>
					<td class="key hasTip" title="<?php echo JText::_("RV_TITLE_TIP");?>"><?php echo JText::_("RV_TITLE");?>:					
					</td>
					<td><input maxlength='80' value="<?php echo $post->title;?>" type="text" name="title" size='30' class='input' style='width:275px'/><span class="required">*</span></td>
				</tr>
				<tr>
					<td class="key hasTip" title="<?php echo JText::_("RV_TYPE_TITLE_TIP");?>"><?php echo JText::_("RV_TYPE_TITLE");?>:					
					</td>
					<td><input type="radio" name="type" value="0" <?php echo $post->type==0?"checked='true'":"";?> />Cần bán
						<input type="radio" name="type" value="1" <?php echo $post->type==1?"checked='true'":"";?>/>Cần mua</td>
				</tr>
				<tr>
					<td class="key hasTip" title="<?php echo JText::_("RV_IMAGE_TITLE_TIP");?>"><?php echo JText::_("RV_IMAGE_TITLE");?>:					
					</td>
					<td><input type="file" name="image" size='30' class=''/><span class="required">*</span></td>
				</tr>
				<tr>
					<td class="key hasTip" title="<?php echo JText::_("RV_PRICE_TITLE_TIP");?>"><?php echo JText::_("RV_PRICE_TITLE");?>:					
					</td>
					<td>
						<input value="<?php echo $post->price;?>" type="text" name="price" style='width:80px' maxlength='15' class='input numeric'/>					
						<select name="currency" style="width:auto;" class="input">							
							<?php foreach($this->currencys as $c):?>
								<option value="<?php echo $c;?>" <?php echo $post->currency==$c?"SELECTED='true'":"";?>><?php echo $c;?></option>
							<?php endforeach;?>
						</select>
						/
						<input value="<?php echo $post->unit;?>" type="text" name="unit" style='width:50px' maxlength='15' class='input'/>					
						<?php echo JText::_("RV_UNIT_TITLE_TIP");?>
						
					</td>
				</tr>
				<tr>
					<td class="key hasTip" title="<?php echo JText::_("RV_AMOUNT_TIP");?>"><?php echo JText::_("RV_AMOUNT");?>:					
					</td>
					<td><input value="<?php echo $post->amount;?>" type="text" name="amount" size='30' style='width:55px' maxlength='15' class='input'/><span class="required">*</span></td>
				</tr>
				<tr>
					<td class="key hasTip" title="<?php echo JText::_("RV_QUALITY_TITLE_TIP");?>"><?php echo JText::_("RV_QUALITY_TITLE");?>:					
					</td>
					<td>
						<select name="quality" style="width:auto;">
							<?php foreach($this->quality as $c):?>
								<option value="<?php echo $c;?>" <?php echo $post->quality==$c?"SELECTED='true'":"";?>><?php echo $c;?></option>
							<?php endforeach;?>
						</select>
					</td>
				</tr>
				<tr>
					<td class="key hasTip" title="<?php echo JText::_("RV_CITY_TITLE_TIP");?>"><?php echo JText::_("RV_CITY_TITLE");?>:					
					</td>
					<td>
						<select name="city" style="width:auto;">
							<?php foreach($this->citys as $c):?>
								<option value="<?php echo $c;?>" <?php echo $post->city==$c?"SELECTED='true'":"";?>><?php echo $c;?></option>
							<?php endforeach;?>
						</select>
					</td>
				</tr>
				<tr>
					<td class="key"><?php echo JText::_("RV_LINK");?>:					
					</td>
					<td><input value="<?php echo $post->link;?>" type="text" name="link" size='30' class='input' style='width:275px'/></td>
				</tr>
				<tr>
					<td class="key" colspan="2" style="text-align:left;"><?php echo JText::_("RV_DESC");?>					
					<?php 
						$editor = &JFactory::getEditor();																		
						echo $editor->display('desc',$post->desc,'100%','400','30','25',false,array('mode'=>'advanced','skin'=>1));?>						
						<div class="clr">&nbsp;</div>
					</td>
					
				</tr>
				<tr>
					<td style="text-decoration:underline;" class="key" title="<?php echo JText::_("RV_PERSIONAL_INFO_TIP");?>"><?php echo JText::_("RV_PERSIONAL_INFO");?>					
					</td>
					<td></td>
				</tr>
				<tr>
					<td class="key" title="<?php echo JText::_("RV_PERSIONAL_NAME_TIP");?>"><?php echo JText::_("RV_PERSIONAL_NAME");?>:					
					</td>
					<td><input value="<?php echo $profile->persional_name;?>" type="text" name="persional_name" size='30' class='input'/><span class="required">*</span></td>
				</tr>
				<tr>
					<td class="key" title="<?php echo JText::_("RV_PERSIONAL_EMAIL_TIP");?>"><?php echo JText::_("RV_PERSIONAL_EMAIL");?>:					
					</td>
					<td><input value="<?php echo $profile->persional_email;?>" type="text" name="persional_email" size='30' class='input'/><span class="required">*</span></td>
				</tr>
				<tr>
					<td class="key" title="<?php echo JText::_("RV_PERSIONAL_ADDRESS_TIP");?>"><?php echo JText::_("RV_PERSIONAL_ADDRESS");?>:					
					</td>
					<td><input value="<?php echo $profile->persional_address;?>" type="text" name="persional_address" size='30' class='input'/><span class="required">*</span></td>
				</tr>
				<tr>
					<td class="key" title="<?php echo JText::_("RV_PERSIONAL_TEL_TIP");?>"><?php echo JText::_("RV_PERSIONAL_TEL");?>:					
					</td>
					<td><input value="<?php echo $profile->persional_tel;?>" type="text" name="persional_tel" size='30' class='input telephone'/><span class="required">*</span></td>
				</tr>
				<tr>
					<td class="key" title="<?php echo JText::_("RV_PERSIONAL_COMPANY_TIP");?>"><?php echo JText::_("RV_PERSIONAL_COMPANY");?>:					
					</td>
					<td><input value="<?php echo $profile->persional_company;?>" type="text" name="persional_company" size='30' class='input'/></td>
				</tr>
				<tr>
					<td class="key">&nbsp;</td>
					<td><input type="submit" name="submit" value="<?php echo JText::_("RV_BTN_SUBMIT");?>" style='margin-left:50px'/></td>
				</tr>
				
            </table>
            <input type="hidden" name="task" value="save"/>
            <input type="hidden" name="Itemid" value="<?php echo JRequest::getVar('Itemid');?>"/>
         </form>
        </div>
        <!--end list box-->
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&amp;event_73.png" class="img-rounded" />
</div>
<script  language="javascript">
jQuery('document').ready(function(){
	// Brazilian currency format
  jQuery(".numeric").number_format({precision: 0, decimal: ',', thousands: ',',default:'0'});
  jQuery(".telephone").number_format({precision: 0, decimal: '', thousands: ' ',default:''});
  <?php if(count($this->errors)):?>				
alert("<?php echo implode('\n\r',$this->errors);?>");				
<?php endif;?>
});
</script>
