<?php defined('_JEXEC') or die('Restricted access'); ?>
<?php if(JPluginHelper::isEnabled('authentication', 'openid')) :
		$lang = &JFactory::getLanguage();
		$lang->load( 'plg_authentication_openid', JPATH_ADMINISTRATOR );
		$langScript = 	'var JLanguage = {};'.
						' JLanguage.WHAT_IS_OPENID = \''.JText::_( 'WHAT_IS_OPENID' ).'\';'.
						' JLanguage.LOGIN_WITH_OPENID = \''.JText::_( 'LOGIN_WITH_OPENID' ).'\';'.
						' JLanguage.NORMAL_LOGIN = \''.JText::_( 'NORMAL_LOGIN' ).'\';'.
						' var comlogin = 1;';
		$document = &JFactory::getDocument();
		$document->addScriptDeclaration( $langScript );
		JHTML::_('script', 'openid.js');
endif; ?>

<div class="mdl-cnt">
    <div class="title">
		<h2><a><?php echo JText::_('LOGIN') ?></a></h2>
        <img src="templates/thuocdocduoc/images/news&event_107.png" />
    </div>	
	<div class="cnt">
    	<div class="padding-left: 10px;">
        <div class="form">
<form action="<?php echo JRoute::_( 'index.php', true, $this->params->get('usesecure')); ?>" method="post" name="com-login" id="com-form-login">
<table width="100%" border="0" align="center" cellpadding="4" cellspacing="0" class="contentpane<?php echo $this->escape($this->params->get('pageclass_sfx')); ?>">
<tr>
	<td colspan="2">
		<?php if ( $this->params->get( 'show_login_title' ) ) : ?>
		<div class="componentheading<?php echo $this->escape($this->params->get('pageclass_sfx')); ?>">
			<?php echo $this->params->get( 'header_login' ); ?>
		</div>
		<?php endif; ?>
		<div>
			<?php echo $this->image; ?>
			<?php if ( $this->params->get( 'description_login' ) ) : ?>
				<?php echo $this->params->get( 'description_login_text' ); ?>
				<br /><br />
			<?php endif; ?>
		</div>
	</td>
</tr>
<tr>
	<td width="400px" align="center">
    <br />
    <table>
    	<tbody>
        	<tr>
            	<td align="center">
                	<?php echo JText::_('Username') ?><br>
                </td>
                <td align="center">
                	<?php echo JText::_('Password') ?><br />
                </td>
                <td></td>
            </tr>
            <tr>
            	<td align="center" valign="top">
                	<input name="username" id="username" type="text" class="inputbox" alt="username" size="15" style="width:130px;" />
                </td>
                <td align="right" width="180px">
                	<input type="password" id="passwd" name="passwd" class="inputbox" size="15" alt="password" style="width:130px;" />
                </td>
                <td align="center" width="300px">
                	<!--<input type="submit" name="Submit" class="button" value="<?php echo JText::_('LOGIN') ?>" />-->

                    <input type="image" src="templates/thuocdocduoc/images/news&event_113.png">

                </td>
            </tr>
            <tr>
            	<td align="center" colspan="3"><br /></td>
                
            </tr>
        </tbody>
    </table>	
    </td>
</tr>
</table>
	<input type="hidden" name="option" value="com_user" />
	<input type="hidden" name="task" value="login" />
	<input type="hidden" name="return" value="<?php echo $this->return; ?>" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>
    			</div>
    		</div>
    	</div>
        <img class="img-rounded" src="templates/thuocdocduoc/images/news&event_73.png" />
    </div>