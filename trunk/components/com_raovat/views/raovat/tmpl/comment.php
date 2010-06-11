<!--comment-->
<!--post comment-->
<script language="javascript">
	function checkform()
	{
		if(document.frmcomment.name.value =='' || document.frmcomment.name.value == null )
		{
			alert('Tên không được bỏ trống');
			document.frmcomment.name.focus();
			return false;
		}
		if(document.frmcomment.comment.value =='' || document.frmcomment.comment.value == null )
		{
			alert('Nhập nội dung');
			document.frmcomment.comment.focus();
			return false;
		}
		return true;
	}
</script>
<span style="font-size:14px; font-weight:bold;">Ý kiến của bạn</span>
<form name="frmcomment" id="frmcomment"method="post" action="<?php echo JRequest::getURI();?>" onsubmit="return checkform();">
<table>
	<tr>
    	<td width="40">Tên: </td>
      <td width="354"><input type="text" name="name" id="name" size="30" class="input"></td>
    </tr>
    <tr>
    	
   	  <td colspan="2">
        	<?php 
			$editor = JFactory::getEditor();
			//echo $editor->display('comment','','100%','400','30','25');
			?> 
            Nội dung: <br /> 
          <textarea name="comment" cols="80" rows="6" id="comment"></textarea>         
      </td>
    </tr>
    <tr>
    	<td colspan="2" align="center">
        	
        	<input type="submit" value="  Gửi  " />
        </td>
    </tr>
</table>
<input type="hidden" name="id_raovat" id="id_raovat" value="<?php echo $this->item_canban->id;?>" />
<input type="hidden" name="task" id="task" value="saveComment" />
</form>
