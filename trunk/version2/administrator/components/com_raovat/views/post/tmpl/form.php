<?php defined('_JEXEC') or die('Restricted access'); ?>

<?php
	$post = $this->post;
	$cid = JRequest::getVar( 'cid', array(0), '', 'array' );
	$edit=JRequest::getVar( 'edit', true );
	JArrayHelper::toInteger($cid, array(0));
	
?>

<form action="index.php" method="post" name="adminForm">
<div class="col width-45">
	<fieldset class="adminform">
	<legend><?php echo JText::_( 'thay đổi rao vặt' ); ?></legend>
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
				<!--<tr>
					<td class="key hasTip" title="<?php echo JText::_("RV_IMAGE_TITLE_TIP");?>"><?php echo JText::_("RV_IMAGE_TITLE");?>:					
					</td>
					<td><input type="file" name="image" size='30' class=''/><span class="required">*</span></td>
				</tr>-->
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
					<td class="key"><?php echo JText::_("RV_CATEGORY");?>:					
					</td>
					<td>
                    	<select name="rv_category" id="rv_category">
                        <!--<option value=""><?php echo JText::_("RV_CATEGORY");?></option>-->
						<?php
						$db =&JFactory::getDBO();
						$query = "SELECT * FROM #__categories WHERE section = 'c_raovat'";
						$db->setQuery($query);
						$rv_category = $db->loadObjectList(); 
						foreach($rv_category as $rv_category)
						{
						?>
                        	<option value="<?php echo $rv_category->id;?>"><?php echo $rv_category->title;?></option>
                        <?php  
                       }
                       ?>
                    	</select>
                    </td>
				</tr>
				<tr>
					<td class="key" colspan="2" style="text-align:left;"><?php echo JText::_("RV_DESC");?>					
					<?php 
					$editor = &JFactory::getEditor();																		
					echo $editor->display('desc',$post->desc,'100%','400','30','25',false,array('mode'=>'advanced','skin'=>1));?>						
						<div class="clr">&nbsp;</div>
					</td>
					
				</tr>
							
            </table>
            <input type="hidden" name="task" value="" />
            <input type="hidden" name="option" value="com_raovat" />			
			<input type="hidden" name="cid[]" value="<?php echo $post->id; ?>" />
			<input type="hidden" name="id" value="<?php echo $post->id; ?>" />
	
	</fieldset>
</div>
<div class="clr"></div>

	
</form>