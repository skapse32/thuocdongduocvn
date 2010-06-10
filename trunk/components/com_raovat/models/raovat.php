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
			$bool = $this->getState('bool',1);
			if($bool==1)
			{
				$lm = " LIMIT 0,10";
			}
			$db->setQuery($query.$where.$order.$lm);			
			//echo JUtility::dump($db);
			$this->data[$type]=$db->loadObjectList();
		}		
		return $this->data[$type];		
	}
	function getItem()
	{
		$db = $this->getDBO();
		$id = JRequest::getVar('id');
		$query="SELECT * FROM #__raovat";
		$query .= " WHERE id = '$id'";
		$db->setQuery($query);
		return $db->loadObject();
	}
	function getPagination()
	{
		return $this->pagination;
	}
	function insertComment($input)
	{
		$db = $this->getDBO();
		$query = "INSERT INTO #__raovat_comment(`id_raovat`,`name`,`comment`,`cdate`)
		VALUES ('$input->id_raovat','$input->name','$input->comment','$input->cdate')
		";
		//var_dump($query);	
		$db->setQuery($query);
		$db->query();
	}
	function getComment()
	{
		$id_raovat = JRequest::getVar('id');
		$db = $this->getDBO();
		$limit =$this->getState('limit',5);					
		$limitstart =(int)$this->getState('limitstart',0);						
			if($limit>0)
			{
				$db->setQuery("SELECT COUNT(*) FROM #__raovat_comment WHERE id_raovat = '$id_raovat'");
				$total = $db->loadResult();
				jimport('joomla.html.pagination');
				$this->pagination= new JPagination($total,$limitstart,$limit);
				$lm = " LIMIT $limitstart,$limit ";
			}
		$query = "
			SELECT * FROM #__raovat_comment 
			WHERE id_raovat = '$id_raovat'
			ORDER BY `cdate` DESC
		".$lm;
		$db->setQuery($query);
		return $db->loadObjectList();
	}
	function raovathit()
	{
		$id = JRequest::getVar('id');
		$query = "UPDATE #__raovat SET hit = (hit + 1) WHERE id = '$id'";
		$db = $this->getDBO();
		$db->setQuery($query);
		$db->query();
	}

}

?>