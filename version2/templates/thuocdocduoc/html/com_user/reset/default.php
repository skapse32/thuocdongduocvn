<?php defined('_JEXEC') or die; 
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
?>
<div class="mdl-cnt">
    <div class="title">
        <h2>
            <?php echo $this->escape($this->params->get('page_title')); ?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
    <div style="padding:10px;line-height:20px;">
<form action="<?php echo JRoute::_( 'index.php?option=com_user&task=requestreset' ); ?>" method="post" class="josForm form-validate">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="contentpane">
		<tr>
			<td colspan="2" height="40">
				<p><?php echo JText::_('RESET_PASSWORD_REQUEST_DESCRIPTION'); ?></p>
			</td>
		</tr>
		<tr>
			<td height="40" width="120">
				<label for="email" class="hasTip" title="<?php echo JText::_('RESET_PASSWORD_EMAIL_TIP_TITLE'); ?>::<?php echo JText::_('RESET_PASSWORD_EMAIL_TIP_TEXT'); ?>"><?php echo JText::_('Email Address'); ?>:</label>
			</td>
			<td>
				<input id="email" name="email" type="text" class="required validate-email" />
			</td>
		</tr>
	</table>
	<br/>
	<button type="submit" class="validate"><?php echo JText::_('Submit'); ?></button>
	<?php echo JHTML::_( 'form.token' ); ?>
</form>
</div>
        <p>
            <br />
            <br />
        </p>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->
