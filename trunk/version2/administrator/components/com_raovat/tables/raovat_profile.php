<?php

class JTableRaovat_profile extends JTable
{	
	var $user_id				= null;
	var $persional_name			=null;
	var $persional_address		=null;
	var $persional_tel			=null;
	var $persional_company		=null;
	var $persional_email		=null;
	
	function __construct(&$db)
	{
		parent::__construct('#__raovat_profile','user_id',$db);
	}
	function check()
	{
		$check=true;
		if(trim($this->persional_name)=='')
		{
			$this->setError(JText::_("RV_ERR_EMPTY_PERSIONAL_NAME"));
			$check=false;
		}
		if(trim($this->persional_address)=='')		
		{
			$this->setError(JText::_("RV_ERR_EMPTY_PERSIONAL_ADDRESS"));
			$check=false;
		}
		if(trim($this->persional_email)=='')
		{
			$this->setError(JText::_("RV_ERR_EMPTY_PERSIONAL_EMAIL"));
			$check=false;
		}
		if(trim($this->persional_tel)=='')
		{
			$this->setError(JText::_("RV_ERR_EMPTY_PERSIONAL_TEL"));		
			$check=false;
		}
		return $check;			
	}
	function exist()
	{		
		
		$this->_db->setQuery("SELECT COUNT(*) FROM $this->_tbl WHERE $this->_tbl_key=$this->user_id");
		$e = $this->_db->loadResult();
		return $e;
	}
	
	
}

?>