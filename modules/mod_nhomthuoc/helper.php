<?php
// no direct access
defined('_JEXEC') or die('Restricted access');

//

class modNhomThuocHelper
{
	
	/**
	 * This is method getSubCategories
	 *
	 * @return mixed list categories
	 *
	 */
	function getSubCategories($catid)
	{
		$db = JFactory::getDBO();
		$query = "SELECT parent_id FROM #__categories WHERE id='$catid' AND published=1";
		$db->setQuery($query);
		$parent_id = $db->loadResult();
		if($parent_id)
		{
			$query = "SELECT * FROM #__categories WHERE parent_id='$parent_id' AND published=1";
		}
		else
		{
			$query = "SELECT * FROM #__categories WHERE parent_id='$catid' AND published=1";
		}
		$db->setQuery($query);
		$cats = $db->loadObjectList();		
		return $cats;		
	}
}
