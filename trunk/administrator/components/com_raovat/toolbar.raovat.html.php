<?php

class TOOLBAR_raovat
{
	function _default()
	{
		global $option;
		JToolBarHelper::deleteList();
		JToolBarHelper::preferences($option,'500');		
	}
}