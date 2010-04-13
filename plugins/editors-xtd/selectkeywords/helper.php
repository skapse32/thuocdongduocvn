<?php

class JPluginSelectKeywordsHelper
{
	function getFilters($sections)
	{
		if(count($sections))
			$where = "section IN('".implode("','",$sections)."')";
		
		$db = JFactory::getDBO();
		//fixed conditional
		$where="section LIKE 'com_filter_%'";
		$query="SELECT * FROM #__categories WHERE published='1' AND $where   ORDER BY ordering";		
		$db->setQuery($query);
		$results = $db->loadObjectList();
		$rows =array();
		for($i=0;$i<count($results);$i++)
		{
			$row= & $results[$i];
			if(array_key_exists($row->section,$rows))
				$rows[$row->section][]=$row;
			else
			{
				$rows[$row->section]=array();
				$rows[$row->section][]=$row;
			}
		}
		return $rows;
	}
	function getCategoriesHasFilter()
	{
		$db = JFactory::getDBO();
		$query="SELECT id, params FROM #__categories WHERE published='1' AND params LIKE 'filter=%'  ORDER BY ordering";		
		$db->setQuery($query);
		$results = $db->loadObjectList();
		$rows =array();
		foreach($results as $row)
		{
			$params = new JParameter($row->params);
			$filter=$params->get('filter');
			if(array_key_exists($filter,$rows))
				$rows[$filter][]=$row->id;
			else
			{
				$rows[$filter]=array();
				$rows[$filter][]=$row->id;
			}
		}
		return $rows;
	}
}

?>