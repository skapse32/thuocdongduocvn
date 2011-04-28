<?php

require_once(JApplicationHelper::getPath('toolbar_html'));
switch($task)
{
	case 'edit':
		TOOLBAR_raovat::edit();
	break;
	default:
		TOOLBAR_raovat::_default();
	break;
}

?>