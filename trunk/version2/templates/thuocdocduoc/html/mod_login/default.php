<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<div>
<div>
<div>
<h3>Đăng nhập</h3>
<?php if($type == 'logout') : ?>
<form action="index.php" method="post" name="login" id="form-login">
<div style="padding:10px 0px 4px 0">
<?php if ($params->get('greeting')) : ?>
	<div style='line-height:16px;text-align:center;'>
		<?php if ($params->get('name')) : {
			echo JText::sprintf( 'HINAME', $user->get('name') );
		} else : {
			echo JText::sprintf( 'HINAME', $user->get('username') );
	} endif; ?><br/> <a style="color:#0093DD" href="javascript:void(0)" onclick="document.login.submit();return;"><?php echo JText::_( 'BUTTON_LOGOUT'); ?></a>
	</div>
<?php endif; ?>	
</div>





	<input type="hidden" name="option" value="com_user" />
	<input type="hidden" name="task" value="logout" />
	<input type="hidden" name="return" value="<?php echo $return; ?>" />
</form>
<?php else : ?>
	<?php if(JPluginHelper::isEnabled('authentication', 'openid')) :
		$lang->load( 'plg_authentication_openid', JPATH_ADMINISTRATOR );
		$langScript = 	'var JLanguage = {};'.
			' JLanguage.WHAT_IS_OPENID = \''.JText::_( 'WHAT_IS_OPENID' ).'\';'.
			' JLanguage.LOGIN_WITH_OPENID = \''.JText::_( 'LOGIN_WITH_OPENID' ).'\';'.
			' JLanguage.NORMAL_LOGIN = \''.JText::_( 'NORMAL_LOGIN' ).'\';'.
			' var modlogin = 1;';
		$document = &JFactory::getDocument();
		$document->addScriptDeclaration( $langScript );
		JHTML::_('script', 'openid.js');
endif; ?>
<div class="form" style='padding-bottom:12px'>
<form action="<?php echo JRoute::_( 'index.php', true, $params->get('usesecure')); ?>" method="post" name="login" id="form-login" >
	<?php echo $params->get('pretext'); ?>
    <label>
        Tên đăng nhập</label>    
    <input id="modlgn_username" type="text" name="username" class="input" alt="username"/>
    <label>
        Mật khẩu</label>    
    <input id="modlgn_passwd" type="password" name="passwd" class="input" alt="password" style='margin-bottom:15px' />
    <input type="image" src="templates/thuocdocduoc/images/news&amp;event_113.png">
    <p class="color3 bold"><br>
                            	<a class="color3 bold" href="<?php echo JRoute::_( 'index.php?option=com_user&view=register&Itemid=77' ); ?>">Đăng ký</a> 
                            	|
                            	<a class="color3 bold" href="<?php echo JRoute::_( 'index.php?option=com_user&view=reset&Itemid=78' ); ?>">Quyên mật khẩu?</a>
                            </p>
    	<?php echo $params->get('posttext'); ?>
	<?php echo $params->get('posttext'); ?>
	<input type="hidden" name="option" value="com_user" />
	<input type="hidden" name="task" value="login" />
	<input type="hidden" name="return" value="<?php echo $return; ?>" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>
</div>
<?php endif; ?>
</div></div></div>