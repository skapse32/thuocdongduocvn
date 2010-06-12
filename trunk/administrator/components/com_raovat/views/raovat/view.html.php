<?php

jimport('joomla.application.component.view');
class RaoVatViewRaoVat extends JView
{
	function display()
	{
		global $mainframe, $option;
		
		$db					=& JFactory::getDBO();
		$filter_order		= $mainframe->getUserStateFromRequest( "$option.filter_order",		'filter_order',		'm.created',	'cmd' );
		$filter_order_Dir	= $mainframe->getUserStateFromRequest( "$option.filter_order_Dir",	'filter_order_Dir',	'DESC',		'word' );
		$filter_state		= $mainframe->getUserStateFromRequest( "$option.filter_state",		'filter_state',		'',		'string' );
		$search				= $mainframe->getUserStateFromRequest( "$option.search",			'search',			'',		'string' );
		$search				= JString::strtolower( $search );
		
		$limit		= $mainframe->getUserStateFromRequest( 'global.list.limit', 'limit', $mainframe->getCfg('list_limit'), 'int' );
		$limitstart	= $mainframe->getUserStateFromRequest( $option.'.limitstart', 'limitstart', 0, 'int' );
		
		$where = array();
	//	$filter_state =JRequest::getVar('filter_state','','string');
		//echo $filter_state;
		if ( $filter_state )
		{
			if ( $filter_state == 'ban' )
			{
				$where[] = 'm.type = 0';
			}
			else if ($filter_state == 'mua' )
			{
				$where[] = 'm.type = 1';
			}
		}
		if ($search)
		{
			$where[] = 'LOWER(m.title) LIKE '.$db->Quote( '%'.$db->getEscaped( $search, true ).'%', false );
		}
		$where[]="m.isdelete=0";
		$where 		= ( count( $where ) ? ' WHERE ' . implode( ' AND ', $where ) : '' );
		$orderby 	= ' ORDER BY '. $filter_order .' '. $filter_order_Dir;
		
		$query = 'SELECT COUNT(m.id)'
			. ' FROM #__raovat AS m'
			. $where
		;
		$db->setQuery( $query );
		$total = $db->loadResult();
		
		jimport('joomla.html.pagination');
		$pagination = new JPagination( $total, $limitstart, $limit );
		
		$query = 'SELECT m.*, (SELECT COUNT(c.id) FROM #__raovat_comment c WHERE c.id_raovat=m.id) as comment'
			. ' FROM #__raovat AS m'
			. ' LEFT JOIN #__users AS u ON u.id = m.user_id'			
			. $where
			. ' GROUP BY m.id'
			. $orderby
		;		
		$db->setQuery( $query, $pagination->limitstart, $pagination->limit );
		$rows = $db->loadObjectList();
		
		if ($db->getErrorNum())
		{
			echo $db->stderr();
			return false;
		}
		
		// state filter
		$lists['state']	= JHTML::_('grid.state',  $filter_state );
		
		// table ordering
		$lists['order_Dir']	= $filter_order_Dir;
		$lists['order']		= $filter_order;
		
		// search filter
		$lists['search']= $search;
		
		$this->assignRef('user',		JFactory::getUser());
		$this->assignRef('lists',		$lists);
		$this->assignRef('items',		$rows);
		$this->assignRef('pagination',	$pagination);
		$this->assignRef('filter_state',	$filter_state);
		parent::display($tpl);
	}
}

?>