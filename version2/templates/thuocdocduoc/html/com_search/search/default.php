<?php defined('_JEXEC') or die('Restricted access'); ?>
<?php //echo $this->loadTemplate('form'); ?>
<?php if(!$this->external_search):?>
	<?php if(!$this->error && count($this->results) > 0||1==1) :
		echo $this->loadTemplate('results');
	else :
		echo $this->loadTemplate('error');
	endif; ?>
<?php else:?>
	<?php echo $this->loadTemplate('google');?>
<?PHP endif;?>