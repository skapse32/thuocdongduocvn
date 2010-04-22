<?php

defined('_JEXEC') or die('Restricted Access');

//$mainframe->registerEvent('onPrepareContent', 'plgViewNewsByDate');
//jimport( 'joomla.event.plugin' );
jimport( 'joomla.plugin.plugin' );
$enabled = JPluginHelper :: isEnabled ('content','viewnewsbydate');	

$xx='a';
class plgContentJNewsbydate extends JPlugin
{
	function plgContentJNewsbydate( &$subject, $params )
	{	
		parent::__construct( $subject, $params );
		$this->_plugin = & JPluginHelper::getPlugin('content','viewnewsbydate');
		$this->params = new JParameter( $this->_plugin->params );
		
	}	
	function onBeforeDisplayContent(&$article)
	{
		//die();
		$article->text.= $this->HTMLrender();
		return true;
	}
	function HTMLrender()
	{
		ob_start();
		?>
		<h3 class="color5 viewdate">Xem theo ngày: <select name=""><option>Ngày</option></select> <select name=""><option>Tháng</option></select> <select name=""><option>Năm</option></select> <input type="button" value="Xem" name=""></h3>
		<?php
		$content = ob_get_contents();
		ob_end_clean();
		return $content;
	}
}

?>
