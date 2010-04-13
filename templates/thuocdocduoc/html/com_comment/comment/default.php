<?php // no direct access 
defined('_JEXEC') or die('Restricted access'); 
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
?> 
<script type="text/javascript">
	function check()
	{
		if(document.getElementById('username')=='')
		{
			alert('sdafasdg');return false;
		}
	}
</script>
 <!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
            Đặt câu hỏi</h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
        <!--list box-->        
        <div class="" style="padding:10px;">
            <!--Form-->
				<div style="clear:both"></div>
				<form class="form" action="<?php echo JRequest::getURI();?>" method="post" name="adminForm" id="adminForm">
					<div class="col100">
						<fieldset class="adminform">							
							<table class="admintable">
							<tr valign='top'>
								<td width="100" align="center">
									<label for="username">
										<?php echo JText::_( 'Họ tên ' ); ?>:
									</label>
								</td>
								<td>
									<input class="input" type="text" name="username" id="username"  maxlength="250" value="<?php echo JRequest::getVar('username','')?>" />
								</td>
							</tr>							
							<tr valign='top'><td></td><td class="invalid"><?php echo JRequest::getVar('errorusername','','post');?> </td></tr>
							<tr valign='top'>
								<td width="100" align="center">
									<label for="address">
										<?php echo JText::_( 'Địa chỉ ' ); ?>:
									</label>
								</td>
								<td>
									<input class="input" type="text" style='width:350px' name="address" id="address"  maxlength="250" value="<?php echo JRequest::getVar('address','','post');?>" />
								</td>
							</tr>
							<tr valign='top'><td></td><td class="invalid"><?php echo JRequest::getVar('erroraddress','','post');?></td></tr>
							<tr valign='top'>
								<td width="100" align="center">
									<label for="email">
										<?php echo JText::_( 'Email' ); ?>:
									</label>
								</td>
								<td>
									<input class="input" type="text" name="email" id="email" size="32" maxlength="250" value="<?php echo JRequest::getVar('email','','post');?>" />
								</td>
							</tr>
							<tr valign='top'><td></td><td class="invalid"><?php echo JRequest::getVar('erroremail','','post');?></td></tr>
							<tr valign="top">
								<td width="100" align="center">
									<label for="title">
										<?php echo JText::_( 'Tiêu đề' ); ?>:
									</label>
								</td>
								<td>									
									<input class="input" style='width:350px' type="text" name="title" id="title"   value="<?php echo JRequest::getVar('title','','post');?>" />
								</td>
							</tr>
							<tr valign='top'><td></td><td class="invalid"><?php echo JRequest::getVar('errortitle','','post');?></td></tr>
							<tr valign="top">
								<td width="100" align="center">
								<br/>
									<label for="content">
										<?php echo JText::_( 'Nội dung câu hỏi' ); ?>:
									</label>
									
								</td>
								<td>
								<br/>
									<textarea class="input" style='width:350px' type="text" rows= "10" cols="60" name="content" id="content" size=32 value="<?php echo $this->comment->content;?>"><?php echo JRequest::getVar('content','')?></textarea>
								</td>
							</tr>
							<tr valign='top'><td></td><td class="invalid"><?php echo JRequest::getVar('errorcontent','','post');?></td></tr>
							<tr valign='top'><td></td><td><input type="submit" name="submit" value="Gửi câu hỏi." onclick="return check()"></input></td></tr>
						</table>
						</fieldset>
					</div>
					<div class="clr"></div>
					<input type="hidden" name="option" value="com_comment" /> 
					<input type="hidden" name="id" value="<?php echo $this->comment->id; ?>" />
					<input type="hidden" name="view" value="comment" />
					<input type="hidden" name="task" value="save" />  
					</form>
            <!--End Form-->
        </div>
        <!--end list box-->        
        <p>
            <br />
            <br />
        </p>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->

