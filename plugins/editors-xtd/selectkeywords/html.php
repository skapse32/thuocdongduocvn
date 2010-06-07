<?php

/* TODO: Add code here */
class LPluginContentView extends JObject
{
	function DonthuocVithuoc(){				
		ob_start();
?>
<div id="dtvt-html" style="display:none">
<table class="adminform phanloai-html" id="<?php echo $this->section_ctvt;?>-phanloai" style="display:<?php echo $this->showctbt ? "":"none";?>">
	<tbody>
		<tr>
			<td>
				<label for="tkh">
					Tên khoa học
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('tkh',''); ?>" maxlength="255" size="60" id="tkh" name="params[tkh]" class="inputbox">
			</td>						
		</tr>	
		<tr>
			<td>
				<label for="thv">
					Tên hán việt
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('thv',''); ?>" maxlength="255" size="60" id="thv" name="params[thv]" class="inputbox">				
			</td>	
			<td>
			</td>		
		</tr>
		<tr>
			<td>
				<label for="htvvn">
				Họ thực vật việt nam</label>
			</td>
			<td>				
				<input type="text" value="<?php echo $this->articleParams->get('htvvn',''); ?>" maxlength="255" size="60" id="htvvn" name="params[htvvn]" class="inputbox">
			</td>
			<td>
			</td>
		</tr>	
		<tr>
			<td>
				<label for="htvkh">
					Họ thực vật khoa học
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('htvkh',''); ?>" maxlength="255" size="60" id="" name="params[htvkh]" class="inputbox">				
			</td>	
			<td>
			</td>		
		</tr>	
		<tr>
			<td>
				<label for="kvlt">
					Khoáng vật làm thuốc
				</label>
			</td>
			<td>
		<input type="checkbox" value="1" <?php echo $this->articleParams->get('kvlt','0')>0?"checked":""; ?> maxlength="255" size="60" id="kvlt" name="params[kvlt]" class="inputbox">								
				
			</td>	
			<td>
			</td>		
		</tr>
		<tr>
			<td>
				<label for="dvlt">
					Động vật làm thuốc
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('dvlt',''); ?>" maxlength="255" size="60" id="dvlt" name="params[dvlt]" class="inputbox">				
				<?php echo $this->selectBoxs["com_filter_ctvt_dongvatlamthuoc"];?>
			</td>	
			<td>
			</td>		
		</tr>
		
		<tr>
			<td>
				<label for="bpd">
				Bộ phận dùng</label>
			</td>
			<td>				
				<input type="text" value="<?php echo $this->articleParams->get('bpd',''); ?>" maxlength="255" size="60" id="bpd" name="params[bpd]" class="inputbox">
				<?php echo $this->selectBoxs["com_filter_ctvt_bophandung"];?>
			</td>
		</tr>
		<tr>
			<td>
				<label for="tphh">
					Thành phần hóa học
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('tphh',''); ?>" maxlength="255" size="60" id="tphh" name="params[tphh]" class="inputbox">
				<?php echo $this->selectBoxs["com_filter_ctvt_thanhphanhoahoc"];?>
			</td>	
			<td>
			</td>		
		</tr>
		<tr>
			<td>
				<label for="pltb">
					Phân loại theo bệnh
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('pltb',''); ?>" maxlength="255" size="60" id="pltb" name="params[pltb]" class="inputbox">
				<?php echo $this->selectBoxs["com_filter_ctvt_phanloaitheobenh"];?>
			</td>						
		</tr>	
		
		<tr>
			<td>
				<label for="tcdy">
					Tính chất đông y
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('tcdy',''); ?>" maxlength="255" size="60" id="tcdy" name="params[tcdy]" class="inputbox">				
				<?php echo $this->selectBoxs["com_filter_ctvt_phanloaitheotinhchatdongy"];?>
			</td>	
			<td>
			</td>		
		</tr>
		
	</tbody>
</table>
<table class="adminform phanloai-html" id="<?php echo $this->section_bt;?>-phanloai" style="display:<?php echo $this->showbt ? "":"none";?>">
	<tbody>
		<tr>
			<td>
				<label for="bt_tcdy">
					Tính chất đông y
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('bt_tcdy',''); ?>" maxlength="255" size="60" id="bt_tcdy" name="params[bt_tcdy]" class="inputbox">
				<?php echo $this->selectBoxs["com_filter_bt_phanloaitheotinhchatdongy"];?>
			</td>						
		</tr>	
		<tr>
			<td>
				<label for="bt_pltb">
					Phân loại theo bệnh
				</label>
			</td>
			<td>
				<input type="text" value="<?php echo $this->articleParams->get('bt_pltb',''); ?>" maxlength="255" size="60" id="bt_pltb" name="params[bt_pltb]" class="inputbox">
				<?php echo $this->selectBoxs["com_filter_bt_phanloaitheobenh"];?>
			</td>						
		</tr>	
	</tbody>
</table>
		<table class="adminform phanloai-html" id="<?php echo $this->section_tdd;?>-<?php echo $this->cat_t;?>-phanloai" style="display:<?php echo $this->showcat_t ? "":"none";?>">
	<tbody>
		<tr>
			<td>
				<label for="t_dbc">
					Dạng bào chế
				</label>
			</td>
			<td>
		<input type="text" value="<?php echo $this->articleParams->get('t_dbc',''); ?>" maxlength="255" size="60" id="t_dbc" name="params[t_dbc]" class="inputbox">
				<?php echo $this->selectBoxs["com_filter_t_dangbaoche"];?>
			</td>						
		</tr>	
		<tr>
			<td>
				<label for="t_ndt">
					Nhóm điều trị
				</label>
			</td>
			<td>
		<input type="text" value="<?php echo $this->articleParams->get('t_ndt',''); ?>" maxlength="255" size="60" id="t_ndt" name="params[t_ndt]" class="inputbox">
				<?php echo $this->selectBoxs["com_filter_t_nhomdieutri"];?>
			</td>						
		</tr>	
	</tbody>
</table>
</div>
<?php
	$content = ob_get_contents();
	ob_end_clean();
	return $content; 
	}
}?>

