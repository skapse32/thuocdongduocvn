<?php

class ImageHelper extends JObject
{
	var $image=null;
	var $defaultMime="image/png,image/gif,image/jpg,image/jpeg";
	var $dir=null;
	var $dir_thumb=null;
	var $url=null;
	var $url_thumb=null;
	var $filename=null;
	function __construct($image)
	{
		$this->image=$image;
		$this->dir = JPATH_BASE.DS.'images'.DS.'raovat';
		$this->dir_thumb=$this->dir.DS.'thumb';
		jimport('joomla.filesystem.file');
		jimport('joomla.filesystem.folder');
		if(!JFolder::exists($this->dir))
			JFolder::create($this->dir);
		if(!JFolder::exists($this->dir_thumb))
			JFolder::create($this->dir_thumb);
		$this->url=JURI::root()."/images/raovat/";
		$this->url_thumb=JURI::root()."/images/raovat/thumb/";
	}
	function check()
	{
		if(trim($this->image['name'])=='')
		{
			$this->setError(JText::_("RV_ERR_EMPTY_IMAGE"));		
			return false;
		}		
		if(!in_array($this->image['type'],explode(',',$this->defaultMime)))
		{
			$this->setError(JText::_("RV_ERR_INVALID_IMAGE"));		
			return false;
		}
		if($this->image['size']>100*1024)
		{
			$this->setError(JText::_("RV_ERR_LARGE_IMAGE"));		
			return false;
		}
		return true;
	}
	function upload()
	{
		include_once(dirname(__FILE__).DS.'imagelib.php');
		$type =$this->image['type'];
		$ext=cImageTypeToExt($type);
		$newName =md5($this->image['name'].time()).$ext;
		$this->dir = $this->dir.DS.$newName;
		$this->dir_thumb=$this->dir_thumb.DS.$newName;
		if(JFile::upload($this->image['tmp_name'],$this->dir))
		{
			$size = cImageGetSize($this->dir);
			//echo JUtility::dump($size);die();
			if($size->width>150)
				cImageResizePropotional($this->dir,$this->dir_thumb,$type,150);
			else
				JFile::copy($this->dir,$this->dir_thumb);
			$this->url.$newName;
			$this->url_thumb.$newName;
			$this->filename=$newName;
			return true;
		}	
		return false;	
	}
}
?>