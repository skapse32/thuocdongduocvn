<?php

class TOOLBAR_raovat
{
	function _default()
	{
		global $option;
		JToolBarHelper::editList();
		JToolBarHelper::deleteList();
		JToolBarHelper::preferences($option,'500');		
	}
	function edit(){
		//JToolBarHelper::apply();
		JToolBarHelper::save();
		JToolBarHelper::cancel();
		JToolBarHelper::title('Rao vặt');
	}
	
}