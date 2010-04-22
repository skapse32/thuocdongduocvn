<?php

class JviewbyDate 
{
	function HTMLrender($catid)
	{		
		ob_start();
		$now = &JFactory::getDate('now');
		$curYear = (int)$now->toFormat('%Y');
		$curDay=(int)$now->toFormat('%d');
		$curMonth= (int)$now->toFormat('%m');
		$lastTenYear= $curYear-10;
		?>
		<form name="frm_view_bydate" action="index.php" method="GET">
		<input type="hidden" name="option" value="com_content"/>
		<input type="hidden" name="view" value="category"/>
		<input type="hidden" name="layout" value="blog"/>
		<input type="hidden" name="id" value="<?php echo $catid;?>"/>
		<input type="hidden" name="Itemid" value="<?php echo JRequest::getVar('Itemid');?>"/>	
		<h3 class="color5 viewdate">Xem theo ngày: 		
		<select name="day">
		<option value="<?php echo $curDay;?>">Ngày</option>
		<?php for($i=1;$i<=31;$i++):?>
			<option <?php echo $i==JRequest::getInt('day')?'selected':'';?> value="<?php echo $i;?>"><?php echo $i;?></option>
			<?php endfor;?>
		</select> 
		<select name="month">
		<option value="<?php echo $curMonth;?>">Tháng</option>
		<?php for($i=1;$i<=12;$i++):?>
			<option <?php echo $i==JRequest::getInt('month')?'selected':'';?> value="<?php echo $i;?>"><?php echo $i;?></option>
			<?php endfor;?>
		</select> 
		<select name="year">
		<option value="<?php echo $curYear;?>">Năm</option>
		<?php for($i=$curYear;$i>=$lastTenYear;$i--):?>
			<option <?php echo $i==JRequest::getInt('year')?'selected':'';?> value="<?php echo $i;?>"><?php echo $i;?></option>
			<?php endfor;?>
		</select> 
		<input type="submit" value="Xem" name="submit">				
		</h3>
		</form>
		<?php
		$content = ob_get_contents();	
		ob_end_clean();	
		return $content;
		
		
	}
}

?>