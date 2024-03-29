<?php
/** $Id: default_form.php 11917 2009-05-29 19:37:05Z ian $ */
defined( '_JEXEC' ) or die( 'Restricted access' );

	$script = '<!--
		function validateForm( frm ) {
			var valid = document.formvalidator.isValid(frm);
			if (valid == false) {
				// do field validation
				if (frm.email.invalid) {
					alert( "' . JText::_( 'Please enter a valid e-mail address.', true ) . '" );
				} else if (frm.text.invalid) {
					alert( "' . JText::_( 'CONTACT_FORM_NC', true ) . '" );
				}
				return false;
			} else {
				frm.submit();
			}
		}
		// -->';
	$document =& JFactory::getDocument();
	$document->addScriptDeclaration($script);
?>
<div class="contact" style="padding-left:40px">
<table align="center">
<?php 
	if(isset($this->error)) : ?>
<tr>
	<td><?php echo $this->error; ?></td>
</tr>
<?php endif; ?>
<tr>
	<td colspan="2">
	<br /><br />
	<form action="<?php echo JRoute::_( 'index.php' );?>" method="post" name="emailForm" id="emailForm" class="form-validate">
		<div class="contact_email<?php echo $this->escape($this->params->get('pageclass_sfx')); ?>">
			<label for="contact_name">
				<?php echo JText::_( 'Enter your name' );?>:
			</label>
			<br />
			<input type="text" name="name" id="contact_name" size="40" class="input" value="" style='width:180px' />
			<br />
			<label id="contact_emailmsg" for="contact_email">
				<?php echo JText::_( 'Email address' );?>:
			</label>
			<br />
			<input style='width:180px' type="text" id="contact_email" name="email" size="40" value="" class="input required validate-email" maxlength="100" />
			<br />
			<label for="contact_subject">
				<?php echo JText::_( 'Message subject' );?>:
			</label>
			<br />
			<input type="text" name="subject" id="contact_subject" size="80" class="input" value="" style='width:450px' />
			<br /><br />
			<label id="contact_textmsg" for="contact_text">
				<?php echo JText::_( 'Enter your message' );?>:
			</label>
			<br />
			<textarea cols="80" rows="10" name="text" id="contact_text" class="input required" style='width:450px'></textarea>
			<?php if ($this->contact->params->get( 'show_email_copy' )) : ?>
			<br />
				<input type="checkbox" name="email_copy" id="contact_email_copy" value="1"  />
				<label for="contact_email_copy">
					<?php echo JText::_( 'EMAIL_A_COPY' ); ?>
				</label>
			<?php endif; ?>
			<br />
			<br />
			<button class="button validate" type="submit"><?php echo JText::_('Send'); ?></button>
		</div>

	<input type="hidden" name="option" value="com_contact" />
	<input type="hidden" name="view" value="contact" />
	<input type="hidden" name="id" value="<?php echo $this->contact->id; ?>" />
	<input type="hidden" name="task" value="submit" />
	<?php echo JHTML::_( 'form.token' ); ?>
	</form>
	<br />
	</td>
</tr>
</table>
</div>