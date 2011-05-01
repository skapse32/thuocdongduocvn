<?php
jimport('joomla.utilities.date');
?>
<script type="text/javascript">
			function insertPagebreak(id,title)
			{
				// Get the pagebreak title
				var width= 300;
				var height= 220;
				var alignment= document.getElementById("alignment").value;
				if(alignment=='left')
					alignment='float:left;';
				else if(alignment=='right')
					alignment='float:right;';
				else
					alignment='margin:0px auto;';
				
				var tag = "<div class=\"poll-inserted\"  style=\"border:1px solid #dcd7bb;text-align:center;width:"+width+"px;min-height:"+height+"px;background-color:#ffffcc;padding:5px;margin:5px;"+alignment+"\">The Poll will display here<Br/><Br/>{id="+id+": "+title+"}</div>";

				window.parent.jInsertEditorText(tag, '<?php echo $eName; ?>');
				window.parent.document.getElementById('sbox-window').close();
				return false;
			}
			function checkAll( n, fldName ) {
			  if (!fldName) {
				 fldName = 'cb';
			  }
				var f = document.adminForm;
				var c = f.toggle.checked;
				var n2 = 0;
				for (i=0; i < n; i++) {
					cb = eval( 'f.' + fldName + '' + i );
					if (cb) {
						cb.checked = c;
						n2++;
					}
				}
				if (c) {
					document.adminForm.boxchecked.value = n2;
				} else {
					document.adminForm.boxchecked.value = 0;
				}
			}
			function deletable(){
				if(document.adminForm.boxchecked.value>0)
					return true;
				else{
					alert('Select at least one comment');
					return false;
				}
			}
			function isChecked(isitchecked){
				if (isitchecked == true){
					document.adminForm.boxchecked.value++;
				}
				else {
					document.adminForm.boxchecked.value--;
				}
			}
			
			
		</script>
	<fieldset>
		<legend>It's Comments</legend>	
	<div id="tablecell">
	<form action="index.php" method="post" name="adminForm">
	<div style="float:right">
		<input type="submit" value="Delete" onclick="return deletable()"/>
	</div>
	<br/>
	<br/>
	<table class="adminlist">
	<thead>
		<tr>						
			<th  class="title">
				Comment
			</th>			
			<th width="5%" align="center">
				Name
			</th>			
			<th width="18%" align="center">
				Date
			</th>			
			<th width="1%" nowrap="nowrap">
				ID
			</th>
			<th width="1%" nowrap="nowrap">
				<input	 type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count($this->comments);?>)"/>
			</th>
			
		</tr>
	</thead>	
	<tbody>
	<?php
	$k = 0;	
	for ($i=0, $n=count( $this->comments ); $i < $n; $i++)
	{
		
		$row = &$this->comments[$i];						
		/*$content='';
		if ( $row && $row->id ) {			
			ob_start();
			$poll   = modPollHelper::getPoll($row->id);
			$options = modPollHelper::getPollOptions($poll->id);		
			require($layout);
			$content = ob_get_contents();
			ob_end_clean();			
		}
		$row->html=$content;
		//echo $row->html;die;*/
		$row->title=str_replace('"','',$row->title);
		$row->title=str_replace("'",'',$row->title);
	?>		
	
			<tr onclick="insertPagebreak(<?php echo $row->id;?>,'<?php echo $row->title;?>');" class='row<?php echo $k;?>'>
			<td>
			
				<?php echo  $row->Comment;?>
			
			</td>		
			<td align="center">
				<?php echo $row->Name; ?>
			</td>			
			<td align="center">
				<?php
					$date = new JDate($row->cdate);
				?>
				<?php echo $date->toFormat('%d/%m/%Y %H:%M:%S'); ?>
			</td>
			<td align="center">
				<?php echo $row->id; ?>
			</td>
			<td align="center">				
				<input type="checkbox" name="cid[]" onclick="isChecked(this.checked);" id='cb<?php echo $i;?>' value="<?php echo $row->id;?>"/>
			</td>
		</tr>
		<?php
		$k = 1 - $k;
	}
	?>
	</tbody>
	</table>
	<input type="hidden" name="boxchecked" value=""/>
	<input type="hidden" name="task" value="deletecm"/>
	<input type="hidden" name="option" value="com_raovat"/>
	<input type="hidden" name="tmpl" value="component"/>
	<input type="hidden" name="id" value="<?php echo JRequest::getVar('rid');?>"/>
	</form>
</div>
</fieldset>		