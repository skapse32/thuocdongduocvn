<?php // no direct access 
defined('_JEXEC') or die('Restricted access'); ?> 
<h1><?php echo $this->greeting; ?></h1> 
<script type="text/javascript">
	function check()
	{
		if(document.getElementById('username')=='')
		{
			alert('sdafasdg');return false;
		}
	}
</script>

<form action="<?php echo JRequest::getURI();?>" method="post" name="adminForm" id="adminForm">
<div class="col100">
	<fieldset class="adminform">
		<legend><?php echo JText::_( 'Đặt câu hỏi' ); ?></legend>
		<table class="admintable">
		<tr>
			<td width="100" align="right">
				<label for="username">
					<?php echo JText::_( 'Họ tên ' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="username" id="username" size="32" maxlength="250" value="<?php echo JRequest::getVar('username','')?>" />
			</td>
		</tr>
		<tr></tr>
		<tr><td></td><td><?php echo $_POST['errorusername'];?></td></tr>
        <tr>
			<td width="100" align="right">
				<label for="address">
					<?php echo JText::_( 'Địa chỉ ' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="address" id="address" size="32" maxlength="250" value="<?php echo JRequest::getVar('address','');?>" />
			</td>
        </tr>
        <tr><td></td><td><?php echo $_POST['erroraddress'];?></td></tr>
        <tr>
			<td width="100" align="right">
				<label for="email">
					<?php echo JText::_( 'Email' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="email" id="email" size="32" maxlength="250" value="<?php echo JRequest::getVar('email','');?>" />
			</td>
		</tr>
		<tr><td></td><td><?php echo $_POST['erroremail'] ?></td></tr>
        <tr>
			<td width="100" align="right">
				<label for="title">
					<?php echo JText::_( 'Tiêu đề bài viết' ); ?>:
				</label>
			</td>
			<td>
				<textarea class="text_area" type="text" name="title" id="title" rows="1" cols="60" size="32" maxlength="1000" value="<?php echo JRequest::getVar('title','')?>"><?php echo JRequest::getVar('title','')?></textarea>
			</td>
		</tr>
		<tr><td></td><td><?php echo $_POST['errortitle'];?></td></tr>
		<tr>
			<td width="100" align="right">
				<label for="content">
					<?php echo JText::_( 'Nội dung bài viết' ); ?>:
				</label>
			</td>
			<td>
				<textarea class="text_area" type="text" rows= "10" cols="60" name="content" id="content" size=32 value="<?php echo $this->comment->content;?>"><?php echo JRequest::getVar('content','')?></textarea>
			</td>
		</tr>
		<tr><td></td><td><?php echo $_POST['errorcontent'];?></td></tr>
		<tr><td></td><td><input type="submit" name="submit" value="Save" onclick="return check()"></input></td></tr>
	</table>
	</fieldset>
</div>
<div class="clr"></div>
<input type="hidden" name="option" value="com_comment" /> 
<input type="hidden" name="id" value="<?php echo $this->comment->id; ?>" />
<input type="hidden" name="view" value="comment" />
<input type="hidden" name="task" value="save" />  
</form>