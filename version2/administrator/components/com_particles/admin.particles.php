<?php
/**
* @version		$Id: admin.frontpage.php 10381 2008-06-01 03:35:53Z pasamio $
* @package		Joomla
* @subpackage	Content
* @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

// Make sure the user is authorized to view this page
/*if (!$user->authorize( 'com_particles', 'manage' )) {
	$mainframe->redirect( 'index.php', JText::_('ALERTNOTAUTH') );
}
*/

// Set the table directory
JTable::addIncludePath(JPATH_COMPONENT.DS.DS.'tables');
// Set the helper directory
JHTML::addIncludePath( JPATH_ADMINISTRATOR.DS.'components'.DS.'com_content'.DS.'helper' );

$cid = JRequest::getVar( 'cid', array(0), 'post', 'array' );
JArrayHelper::toInteger($cid, array(0));
switch ( JRequest::getCmd( 'task' ) )
{
	case 'publish':
		changeFrontPage( $cid, 1, $option );
		break;

	case 'unpublish':
		changeFrontPage( $cid, 0, $option );
		break;

	case 'archive':
		changeFrontPage( $cid, -1, $option );
		break;

	case 'remove':
		removeFrontPage( $cid, $option );
		break;

	case 'orderup':
		orderFrontPage( $cid[0], -1, $option );
		break;

	case 'orderdown':
		orderFrontPage( $cid[0], 1, $option );
		break;

	case 'saveorder':
		saveOrder( $cid );
		break;

	case 'accesspublic':
		accessMenu( $cid[0], 0 );
		break;

	case 'accessregistered':
		accessMenu( $cid[0], 1 );
		break;

	case 'accessspecial':
		accessMenu( $cid[0], 2 );
		break;
	case "position1up":
		positionup($cid[0],'pos1', $option);
	break;
	case "position2up":
		positionup($cid[0],'pos2',$option);
	break;
	case "position3up":		
		positionup($cid[0],'slideshow',$option);				
		break;
	case "position1down":
		positiondown($cid[0],'pos1',$option);
		break;
	case "position2down":
		positiondown($cid[0],'pos2',$option);
		break;
	case "position3down":
		positiondown($cid[0],'slideshow',$option);		
		break;
		case "ins_poll":
		ins_poll();
		break;
	case "publish_pos1":
		foreach($cid as $id)
			positionup($id,'pos1', $option,false);
		$mainframe->redirect( 'index.php?option='.$option );
	break;
	case "publish_pos2":
		foreach($cid as $id)
			positionup($id,'pos2', $option,false);
		$mainframe->redirect( 'index.php?option='.$option );
	break;
	case "publish_slideshow":
		foreach($cid as $id)
			positionup($id,'slideshow', $option,false);
		$mainframe->redirect( 'index.php?option='.$option );
	break;
	case "unpublish_pos1":
		foreach($cid as $id)
			positiondown($id,'pos1', $option,false);
		$mainframe->redirect( 'index.php?option='.$option );
	break;	
	case "unpublish_pos2":
		foreach($cid as $id)
			positiondown($id,'pos2', $option,false);
		$mainframe->redirect( 'index.php?option='.$option );
	break;	
	case "unpublish_slideshow":
		foreach($cid as $id)
			positiondown($id,'slideshow', $option,false);
		$mainframe->redirect( 'index.php?option='.$option );
	break;	
	default:
		viewFrontPage( $option );
		break;
}
function ins_poll()
{ 	
	$db = &JFactory::getDBO();	
	$query = ' SELECT template '
				.' FROM #__templates_menu '
				.' WHERE client_id = 0' 
				.' AND menuid = 0 ';
	$db->setQuery($query);
	$defaultemplate = $db->loadResult();
	$layout='default';
	$module='mod_poll';
	$tPath = JPATH_ROOT.DS.'templates'.DS.$defaultemplate.DS.'html'.DS.$module.DS.$layout.'.php';						
	$bPath = JPATH_ROOT.DS.'modules'.DS.$module.DS.'tmpl'.DS.$layout.'.php';
	// If the template has a layout override use it
	if (file_exists($tPath)) {
		$layout= $tPath;
	} else {
		$layout=$bPath;
	}		
	include_once JPATH_ROOT.DS.'modules'.DS.$module.DS.'helper.php';
	$db->setQuery("SELECT * FROM #__polls WHERE published=1 ORDER BY id DESC");
	$polls = $db->loadObjectList();
		$eName	= JRequest::getVar('e_name');
		$eName	= preg_replace( '#[^A-Z0-9\-\_\[\]]#i', '', $eName );
		
		?>
		<script type="text/javascript">
			function insertPagebreak(id,title)
			{
				// Get the pagebreak title
				var width= 300;
				var height= 120;
				var alignment= document.getElementById("alignment").value;
				if(alignment=='left')
					alignment='float:left;';
				else if(alignment=='right')
					alignment='float:right;';
				else
					alignment='margin:0px auto;';
				
				var tag = "<div class=\"poll-inserted\"  style=\"border:1px solid #dcd7bb;text-align:center;width:"+width+"px;min-height:"+height+"px;background-color:#ffffcc;padding:5px;margin:5px;"+alignment+"\">The Poll will display here<Br/><Br/>{id="+id+": "+title+"}</div>";

				window.parent.jInsertEditorText(tag, '<?php echo $eName; ?>');
				window.parent.document.getElementById('sbox-window').close();
				return false;
			}
		</script>
	<fieldset>
		<legend>Select a poll</legend>	
	<div id="tablecell">
	<table class="adminlist">
	<thead>
		<tr>						
			<th  class="title">
				Title
			</th>			
			<th width="5%" align="center">
				Votes
			</th>			
			<th width="5%" align="center">
				Lag
			</th>			
			<th width="1%" nowrap="nowrap">
				ID
			</th>
		</tr>
	</thead>	
	<tbody>
	<?php
	$k = 0;	
	for ($i=0, $n=count( $polls ); $i < $n; $i++)
	{
			
		$row = &$polls[$i];						
		/*$content='';
		if ( $row && $row->id ) {			
			ob_start();
			$poll   = modPollHelper::getPoll($row->id);
			$options = modPollHelper::getPollOptions($poll->id);		
			require($layout);
			$content = ob_get_contents();
			ob_end_clean();			
		}
		$row->html=$content;
		//echo $row->html;die;*/
		$row->title=str_replace('"','',$row->title);
		$row->title=str_replace("'",'',$row->title);
	?>		
	
			<tr onclick="insertPagebreak(<?php echo $row->id;?>,'<?php echo $row->title;?>');" class='row<?php echo $k;?>'>
			<td>
			
				<?php echo  $row->title;?>
			
			</td>		
			<td align="center">
				<?php echo $row->voters; ?>
			</td>			
			<td align="center">
				<?php echo $row->lag; ?>
			</td>
			<td align="center">
				<?php echo $row->id; ?>
			</td>
		</tr>
		<?php
			$k = 1 - $k;
		}
		?>
	</tbody>
	</table>
</div>
</fieldset>
<fieldset>
	<legend>Position</legend>
	<table>
		<tr>
			<td>Alignment</td>
			<td>
				<select name="alignment" id="alignment">
					<option>right</option>
					<option>left</option>
					<option selected='true'>center</option>
				</select>
			</td>
		</tr>
	</table>
	
</fieldset>		
		<?php
}

function positionup($id,$pos,$option,$redirect=true)
{
	global $mainframe;
	$sectionid	= $mainframe->getUserStateFromRequest( $option.'.filter_sectionid',	'filter_sectionid',	0,				'int' );
	$catid				= $mainframe->getUserStateFromRequest( $option.'.catid',			'catid',			0,				'int' );
	$db = &JFactory::getDBO();
	$fp =& JTable::getInstance('frontpage','Table');
	$fp->load($id);
	$fp->sectionid=$sectionid;
	$fp->categoryid=$catid;
	$obj = new stdClass();
	$obj->content_id= $id;
	$obj->pos1 = $fp->pos1;
	$obj->pos2 = $fp->pos2;
	$obj->slideshow = $fp->slideshow;
	$obj->sectionid = $sectionid;
	$obj->categoryid = $catid;
	$obj->ordering = $fp->ordering;
	$obj->$pos= 1;
	//echo JUtility::dump($fp);die;
	if($fp->isExist())
	{
		$db->setQuery("UPDATE #__content_position SET $pos=1 WHERE content_id=$obj->content_id AND sectionid='$obj->sectionid' AND categoryid='$obj->categoryid'");
		$db->query();
	}	
		
	else
	{
		$db->setQuery("INSERT #__content_position(content_id,$pos,sectionid,categoryid)
		VALUES($obj->content_id,1,$obj->sectionid,$obj->categoryid)");
		$db->query();
	}	
	if($redirect)
		$mainframe->redirect( 'index.php?option='.$option );
}
function positiondown($id,$pos,$option,$redirect=true)
{
	global $mainframe;
	$sectionid	= $mainframe->getUserStateFromRequest( $option.'.filter_sectionid',	'filter_sectionid',	0,				'int' );
	$catid				= $mainframe->getUserStateFromRequest( $option.'.catid',			'catid',			0,				'int' );
	$db = &JFactory::getDBO();
	$db->setQuery("UPDATE #__content_position SET $pos=0 WHERE content_id=$id AND sectionid='$sectionid' AND categoryid='$catid'");
	$db->query();
	if($redirect)
		$mainframe->redirect( 'index.php?option='.$option );
}

/**
* Compiles a list of frontpage items
*/
function viewFrontPage( $option )
{
	global $mainframe;
	JToolBarHelper::publishList('publish_pos1',"Enable Pos 1");	
	JToolBarHelper::unpublishList('unpublish_pos1',"Disable Pos 1");
	JToolBarHelper::spacer();
	JToolBarHelper::publishList('publish_pos2',"Enable Pos 2");	
	JToolBarHelper::unpublishList('unpublish_pos2',"Disable Pos 2");
	JToolBarHelper::spacer();
	JToolBarHelper::publishList('publish_slideshow',"Enable Slide");
	JToolBarHelper::unpublishList('unpublish_slideshow',"Disable Slide");
	$db					=& JFactory::getDBO();
	$filter_order		= $mainframe->getUserStateFromRequest( $option.'.filter_order',		'filter_order',		'fpordering',	'cmd' );
	$filter_order_Dir	= $mainframe->getUserStateFromRequest( $option.'.filter_order_Dir',	'filter_order_Dir',	'',				'word' );
	$filter_state		= $mainframe->getUserStateFromRequest( $option.'.filter_state',		'filter_state',		'',				'word' );	
	$filter_authorid	= $mainframe->getUserStateFromRequest( $option.'.filter_authorid',	'filter_authorid',	0,				'int' );
	$filter_sectionid	= $mainframe->getUserStateFromRequest( $option.'.filter_sectionid',	'filter_sectionid',	0,				'int' );
	$catid				= $mainframe->getUserStateFromRequest( $option.'.catid',			'catid',			0,				'int' );
	$search				= $mainframe->getUserStateFromRequest( $option.'.search',			'search',			'',				'string' );
	$search				= JString::strtolower( $search );
	$filter_position				= $mainframe->getUserStateFromRequest( $option.'.filter_position','filter_position',-1,'int' );
	$limit		= $mainframe->getUserStateFromRequest( 'global.list.limit', 'limit', $mainframe->getCfg('list_limit'), 'int' );
	$limitstart	= $mainframe->getUserStateFromRequest( $option.'.limitstart', 'limitstart', 0, 'int' );

	JToolBarHelper::title( JText::_( 'Position Articles Manager' ), 'article.png' );
	JToolBarHelper::help('help.html',true);
	//JToolBarHelper::archiveList();
	//JToolBarHelper::publishList();
	//JToolBarHelper::unpublishList();
	//JToolBarHelper::custom('remove','delete.png','delete_f2.png','Remove', true);
	//JToolBarHelper::help( 'screen.frontpage' );

	$where = array(
		"c.state >= 0"
	);

	// used by filter
	if ( $filter_sectionid >= 0 ) {
		$where[] = 'c.sectionid = '.(int) $filter_sectionid;
	}
	if ( $catid > 0 ) {
		$where[] = 'c.catid = '.(int) $catid;
	}
	if ( $filter_authorid > 0 ) {
		$where[] = 'c.created_by = '. (int) $filter_authorid;
	}
	if ( $filter_state ) {
		if ( $filter_state == 'P' ) {
			$where[] = 'c.state = 1';
		} else if ($filter_state == 'U' ) {
			$where[] = 'c.state = 0';
		}
	}

	if ($search) {
		$where[] = 'LOWER( c.title ) LIKE '.$db->Quote( '%'.$db->getEscaped( $search, true ).'%', false );
	}
	switch($filter_position)
	{
		case 1:
			$where[]="f.pos1=1";
		break;
		case 2:
			$where[]="f.pos2=1";
		break;
		case 3:
			$where[]="f.pos1=1 AND f.pos2=1 AND f.slideshow=1";
		break;
		case 4:
			$where[]="f.pos1=1 OR f.pos2=1 OR f.slideshow=1";
			break;
		case 5:
			$where[]="f.slideshow=1";
			break;
		default:
		break;
	}

	$where 		= ( count( $where ) ? ' WHERE ' . implode( ' AND ', $where ) : '' );
	$orderby 	= ' ORDER BY '. $filter_order .' '. $filter_order_Dir .', fpordering';

	// get the total number of records
	$query = 'SELECT count(*)'
	. ' FROM #__content AS c'
	. ' LEFT JOIN #__categories AS cc ON cc.id = c.catid'
	. ' LEFT JOIN #__sections AS s ON s.id = cc.section AND s.scope="content"'
	. ' LEFT JOIN #__content_position AS f ON f.content_id = c.id'
	. $where
	;
	$db->setQuery( $query );	
	$total = $db->loadResult();

	jimport('joomla.html.pagination');
	$pageNav = new JPagination( $total, $limitstart, $limit );

	$query = 'SELECT c.*, g.name AS groupname, cc.title as name, s.title AS sect_name, u.name AS editor, f.ordering AS fpordering,f.pos1,f.pos2,f.slideshow, v.name AS author'
	. ' FROM #__content AS c'
	. ' LEFT JOIN #__categories AS cc ON cc.id = c.catid'
	. ' LEFT JOIN #__sections AS s ON s.id = cc.section AND s.scope="content"'
	. ' LEFT JOIN #__content_position AS f ON f.content_id = c.id AND f.sectionid="'.$filter_sectionid.'" AND f.categoryid="'.$catid.'"'
	. ' INNER JOIN #__groups AS g ON g.id = c.access'
	. ' LEFT JOIN #__users AS u ON u.id = c.checked_out'
	. ' LEFT JOIN #__users AS v ON v.id = c.created_by'
	. $where
	. $orderby
	;
	$db->setQuery( $query, $pageNav->limitstart,$pageNav->limit );
	$rows = $db->loadObjectList();
	//die($db->_sql);
	if ($db->getErrorNum()) {
		echo $db->stderr();
		return false;
	}

	// get list of categories for dropdown filter
	$query = 'SELECT cc.id AS value, cc.title AS text, section'
		. ' FROM #__categories AS cc'
		. ' INNER JOIN #__sections AS s ON s.id = cc.section '
		.' WHERE section="'.$filter_sectionid.'"'
	. ' ORDER BY s.ordering, cc.ordering'
	;
	$db->setQuery( $query );
	$categories[] 	= JHTML::_('select.option',  '-1', '- '. JText::_( 'Select Category' ) .' -' );
	$categories 	= array_merge( $categories, $db->loadObjectList() );
	$lists['catid'] = JHTML::_('select.genericlist',   $categories, 'catid', 'class="inputbox" size="1" onchange="document.adminForm.submit( );"', 'value', 'text', $catid );
	$positions[] = JHTML::_('select.option',  '-1', '- '. JText::_( 'Select Position' ) .' -' );
	// get list of sections for dropdown filter
	$javascript			= 'onchange="document.adminForm.submit();"';
	$lists['sectionid']	= JHTML::_('list.section',  'filter_sectionid', $filter_sectionid, $javascript );

	// get list of Authors for dropdown filter
	$query = 'SELECT c.created_by, u.name'
	. ' FROM #__content AS c'
	. ' INNER JOIN #__sections AS s ON s.id = c.sectionid'
	. ' LEFT JOIN #__users AS u ON u.id = c.created_by'
	. ' WHERE c.state <> -1'
	. ' AND c.state <> -2'
	. ' GROUP BY u.name'
	. ' ORDER BY u.name'
	;
	$db->setQuery( $query );
	$authors[] 			= JHTML::_('select.option',  '0', '- '. JText::_( 'Select Author' ) .' -', 'created_by', 'name' );
	$authors 			= array_merge( $authors, $db->loadObjectList() );
	$lists['authorid']	= JHTML::_('select.genericlist',   $authors, 'filter_authorid', 'class="inputbox" size="1" onchange="document.adminForm.submit( );"', 'created_by', 'name', $filter_authorid );

	// state filter
	$lists['state']	= JHTML::_('grid.state',  $filter_state );

	// table ordering
	$lists['order_Dir']	= $filter_order_Dir;
	$lists['order']		= $filter_order;

	// search filter
	$lists['search']= $search;
	$lists['position']=$filter_position;
	require_once(JPATH_COMPONENT.DS.'views'.DS.'frontpage.php');
	FrontpageView::showList( $rows, $pageNav, $option, $lists );
}

/**
* Changes the state of one or more content pages
* @param array An array of unique category id numbers
* @param integer 0 if unpublishing, 1 if publishing
*/
function changeFrontPage( $cid=null, $state=0, $option )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	$db 	=& JFactory::getDBO();
	$user 	=& JFactory::getUser();

	JArrayHelper::toInteger($cid);

	if (count( $cid ) < 1) {
		$action = $state == 1 ? 'publish' : ($state == -1 ? 'archive' : 'unpublish');
		JError::raiseError(500, JText::_( 'Select an item to' .$action, true ) );
	}

	$cids = implode( ',', $cid );

	$query = 'UPDATE #__content'
	. ' SET state = '.(int) $state
	. ' WHERE id IN ( '. $cids .' )'
	. ' AND ( checked_out = 0 OR ( checked_out = ' .(int) $user->get('id'). ' ) )'
	;
	$db->setQuery( $query );
	if (!$db->query()) {
		JError::raiseError(500, $db->getErrorMsg() );
	}

	if (count( $cid ) == 1) {
		$row =& JTable::getInstance('content');
		$row->checkin( $cid[0] );
	}

	$cache = & JFactory::getCache('com_content');
	$cache->clean();

	$mainframe->redirect( 'index.php?option='.$option );
}

function removeFrontPage( &$cid, $option )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	$db =& JFactory::getDBO();
	if (!is_array( $cid ) || count( $cid ) < 1) {
		JError::raiseError(500, JText::_( 'Select an item to delete', true ) );
	}
	$fp =& JTable::getInstance('frontpage', 'Table');
	foreach ($cid as $id) {
		if (!$fp->delete( $id )) {
			JError::raiseError(500, $fp->getError() );
		}
		$obj =& JTable::getInstance('content');
		$obj->load( $id );
		$obj->mask = 0;
		if (!$obj->store()) {
			JError::raiseError(500, $fp->getError() );
		}
	}
	$fp->reorder();

	$cache = & JFactory::getCache('com_content');
	$cache->clean();

	$mainframe->redirect( 'index.php?option='.$option );
}

/**
* Moves the order of a record
* @param integer The increment to reorder by
*/
function orderFrontPage( $uid, $inc, $option )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	$db =& JFactory::getDBO();

	$fp =& JTable::getInstance('frontpage','Table');
	$fp->load( $uid );
	$fp->move( $inc );

	$cache = & JFactory::getCache('com_content');
	$cache->clean();

	$mainframe->redirect( 'index.php?option='.$option );
}

/**
* @param integer The id of the article
* @param integer The new access level
* @param string The URL option
*/
function accessMenu( $uid, $access )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	$db = & JFactory::getDBO();
	$row =& JTable::getInstance('content');
	$row->load( $uid );
	$row->access = $access;

	if ( !$row->check() ) {
		return $row->getError();
	}
	if ( !$row->store() ) {
		return $row->getError();
	}

	$cache = & JFactory::getCache('com_content');
	$cache->clean();

	$mainframe->redirect( 'index.php?option=com_particles' );
}

function saveOrder( &$cid )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	$db 	=& JFactory::getDBO();
	$total	= count( $cid );
	$order 	= JRequest::getVar( 'order', array(0), 'post', 'array' );

	for( $i=0; $i < $total; $i++ )
	{
		$query = 'UPDATE #__content_position'
		. ' SET ordering = ' . (int) $order[$i]
		. ' WHERE content_id = ' . (int) $cid[$i];
		$db->setQuery( $query );
		if (!$db->query()) {
			JError::raiseError(500, $db->getErrorMsg() );
		}
	}

	$cache = & JFactory::getCache('com_content');
	$cache->clean();

	$msg 	= JText::_( 'New ordering saved' );
	$mainframe->redirect( 'index.php?option=com_particles', $msg );
}