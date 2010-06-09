<?php

class JTableRaovat extends JTable
{
	var $id			= null;
	var $title		= '';
	var $type		=0;
	var $image		='';
	var $price		=0;
	var $currency	='';
	var $unit		='';
	var $amount		=0;
	var $quality	=null;
	var $city		=null;
	var $link		=null;
	var $desc		=null;
	var $created	=null;
	function __construct(&$db)
	{
		parent::__construct('#__raovat','id',$db);
	}
	function check()
	{
		$check=true;
		if(trim($this->title)=='')
		{
			$this->setError(JText::_("RV_ERR_EMPTY_TITLE"));
			$check=false;
		}
		if($this->price<=0)		
		{
			$this->setError(JText::_("RV_ERR_ZERO_PRICE"));
			$check=false;
		}
		if(!is_numeric($this->amount))		
		{
			$this->setError(JText::_("RV_ERR_INVALID_AMOUNT"));
			$check=false;
		}
		if(trim($this->currency)=='')
		{
			$this->setError(JText::_("RV_ERR_EMPTY_CURRENCY"));
			$check=false;
		}
		if(trim($this->unit)=='')
		{
			$this->setError(JText::_("RV_ERR_EMPTY_UNIT"));		
			$check=false;
		}
		return $check;			
	}
	
	
}

?>