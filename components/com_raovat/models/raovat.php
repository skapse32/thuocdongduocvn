<?php

jimport('joomla.application.component.model');
class RaovatModelRaovat extends JModel
{
	var $data=null;
	var $pagination =null;
	function getData($type=0)
	{
		if(is_null($this->data[$type]))
		{		
			$db = $this->getDBO();
			$query="SELECT * FROM #__raovat ";
			$where =" WHERE type='$type' ".$this->getState('where');
			$order=" ORDER BY ".$this->getState('ordering')." created DESC";
			$limit =$this->getState('limit',0);						
			$limitstart =(int)$this->getState('limitstart',0);			
			
			if($limit>0)
			{
				$db->setQuery("SELECT COUNT(*) FROM #__raovat".$where);
				$total = $db->loadResult();
				jimport('joomla.html.pagination');
				$this->pagination= new JPagination($total,$limitstart,$limit);
				$lm = " LIMIT $limitstart,$limit ";
			}
			$db->setQuery($query.$where.$order.$lm);			
			//echo JUtility::dump($db);
			$this->data[$type]=$db->loadObjectList();
		}		
		return $this->data[$type];		
	}
	function getPagination()
	{
		return $this->pagination;
	}
}

?>