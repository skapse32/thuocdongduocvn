<?php
/*
 * @Package Softpin Order Manager
 * @Subpackage : softpin Manager
 * Create by : thuc.lehuy@gmail.com
 */
// No direct access
defined( '_JEXEC' ) or die( 'Truy nhập không hợp lệ' );
?>
<form action="index.php" method="post" name="adminForm" id="adminForm">
<div class="col100">
	<fieldset class="adminform">
		<legend><?php echo JText::_( 'Chi tiết câu hỏi' ); ?></legend>
		<table class="admintable">
		<tr>
			<td width="100" align="right">
				<label for="username">
					<?php echo JText::_( 'Tên người hỏi' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="username" id="username" size="32" maxlength="250" value="<?php echo $this->comment->username;?>" />
			</td>
		</tr>
        <tr>
			<td width="100" align="right">
				<label for="address">
					<?php echo JText::_( 'Địa chỉ' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="address" id="address" size="32" maxlength="250" value="<?php echo $this->comment->address;?>" />
			</td>
        </tr>
        <tr>
			<td width="100" align="right">
				<label for="phone">
					<?php echo JText::_( 'Email' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="email" id="email" size="32" maxlength="250" value="<?php echo $this->comment->email;?>" />
			</td>
		</tr>
        <tr>
			<td width="100" align="right">
				<label for="title">
					<?php echo JText::_( 'Tiêu đề câu hỏi' ); ?>:
				</label>
			</td>
			<td>
				<textarea class="inputbox" cols="60" rows="1" type="text" name="title" id="title" value="<?php echo $row->title;?>"><?php echo $this->comment->title;?></textarea>
			</td>
		</tr>
		<tr>
			<td width="100" align="right">
				<label for="content">
					<?php echo JText::_( 'Nội dung' ); ?>:
				</label>
			</td>
			<td>
				<textarea class="text_area" type="text" name="content" cols="60" rows="10" id="content" value="<?php echo $this->comment->content;?>"><?php echo $this->comment->content;?></textarea>
			</td>
		</tr>
		<tr>
			<td width="100" align="right">
				<label for="created">
					<?php echo JText::_( 'Ngày tạo' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="created" id="created" size="32" maxlength="250" value="<?php echo $this->comment->created;?>" />
			</td>
		</tr>
		<tr>
			<td width="100" align="right">
				<label for="del_flag">
					<?php echo JText::_( 'Trạng thái' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="del_flag" id="del_flag" size="32" maxlength="250" value="<?php echo $this->comment->del_flag;?>" />
			</td>
		</tr>
	</table>
	</fieldset>
	
	<fieldset class="adminform">
		<legend><?php echo JText::_( 'Trả lời' ); ?></legend>
		<table class="admintable">
		<tr>
			<td width="100" align="right">
				<label for="answer_username">
					<?php echo JText::_( 'Tên người trả lời' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="answer_username" id="answer_username" size="32" maxlength="250" value="<?php echo $this->comment->answer_username;?>" />
			</td>
		</tr>
        <tr>
			<td width="100" align="right">
				<label for="answer_email">
					<?php echo JText::_( 'Email' ); ?>:
				</label>
			</td>
			<td>
				<input class="text_area" type="text" name="answer_email" id="answer_email" size="32" maxlength="250" value="<?php echo $this->comment->answer_email;?>" />
			</td>
        </tr>
        
		<tr>
			<td width="100" align="right">
				<label for="answer_content">
					<?php echo JText::_( 'Nội dung' ); ?>:
				</label>
			</td>
			<td>
				<textarea class="text_area" type="text" name="answer_content" cols="60" rows="10" id="answer_content" value="<?php echo $this->comment->answer_content;?>"><?php echo $this->comment->answer_content;?></textarea>
			</td>
		</tr>
	</table>
	</fieldset>
	
</div>
<div class="clr"></div>
<input type="hidden" name="option" value="com_comment" /> 
<input type="hidden" name="id" value="<?php echo $this->comment->id; ?>" />
<input type="hidden" name="task" value="" />
<input type="hidden" name="controller" value="comment" /> 
</form>

