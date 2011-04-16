<?php defined('_JEXEC') or die; ?>

<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
          <?php echo JText::_('Confirm your Account'); ?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
       <div style="padding:10px;line-height:20px;">
<form action="<?php echo JRoute::_( 'index.php?option=com_user&task=confirmreset' ); ?>" method="post" class="josForm form-validate">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="contentpane">
		<tr>
			<td colspan="2" height="40">
				<p><?php echo JText::_('RESET_PASSWORD_CONFIRM_DESCRIPTION'); ?></p>
			</td>
		</tr>
		<tr>
			<td height="40">
				<label for="token" class="hasTip" title="<?php echo JText::_('RESET_PASSWORD_TOKEN_TIP_TITLE'); ?>::<?php echo JText::_('RESET_PASSWORD_TOKEN_TIP_TEXT'); ?>"><?php echo JText::_('Token'); ?>:</label>
			</td>
			<td>
				<input id="token" name="token" type="text" class="required" size="36" />
			</td>
		</tr>
	</table>

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
