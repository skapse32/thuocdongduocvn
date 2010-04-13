<?php
/**
 * @version		$Id: plg_yos_search_content.php $
 * @package		Joomla
 * @copyright	Copyright (C) 2005 - 2008 YOS Team. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

$mainframe->registerEvent( 'onSearch', 'plgYOSSearchContent' );
$mainframe->registerEvent( 'onSearchAreas', 'plgYOSSearchContentAreas' );

JPlugin::loadLanguage( 'plg_yos_search_content' );

/**
 * @return array An array of search areas
 */
function &plgYOSSearchContentAreas()
{
	static $areas = array(
		'content' => 'Articles'
	);
	return $areas;
}

/**
 * Content Search method
 * The sql must return the following fields that are used in a common display
 * routine: href, title, section, created, text, browsernav
 * @param string Target search string
 * @param string mathcing option, exact|any|all
 * @param string ordering option, newest|oldest|popular|alpha|category
 * @param mixed An array if the search it to be restricted to areas, null if search all
 */
function plgYOSSearchContent( $text, $phrase='', $ordering='', $areas=null )
{
	global $mainframe;

	$db		=& JFactory::getDBO();
	$user	=& JFactory::getUser(); 
		
	require_once(JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');
	require_once(JPATH_SITE.DS.'administrator'.DS.'components'.DS.'com_search'.DS.'helpers'.DS.'search.php');

	$searchText = $text;
	if (is_array( $areas )) {
		if (!array_intersect( $areas, array_keys( plgYOSSearchContentAreas() ) )) {
			return array();
		}
	}

	//	Begin edited here by tungnt
	$isRunPageRankCaculate	=	!isset($ordering) || $ordering === 'matches' || $ordering === '';
	//	load plugin params info 
 	$plugin			=& JPluginHelper::getPlugin('search', 'plg_yos_search_content');
 	$pluginParams	= new JParameter( $plugin->params );
	//Define parameters 
	$point_occurrence_in_title		=	$pluginParams->def( 'point_occurrence_in_title'		, 10 );
	$point_occurrence_in_fulltext	=	$pluginParams->def( 'point_occurrence_in_fulltext'	, 1 );
	//	End edited by tungnt
	
	$sContent 						= $pluginParams->get(	'search_content'		, 1		);
	$sUncategorised					= $pluginParams->get(	'search_uncategorised'	, 1		);
	$sArchived 						= $pluginParams->get(	'search_archived'		, 1		);
	$limit 							= $pluginParams->def(	'search_limit'			, 50	);
	
	
	
	$nullDate 		= $db->getNullDate();
	$date =& JFactory::getDate();
	$now = $date->toMySQL();

	$text = trim( $text );
	if ($text == '') {
		return array();
	}

	$wheres = array();
	switch ($phrase) {
		case 'exact':
			$text		= $db->Quote( '%'.$db->getEscaped( $text, true ).'%', false );
			$wheres2 	= array();
			$wheres2[] 	= 'a.title LIKE '.$text;
			$wheres2[] 	= 'a.introtext LIKE '.$text;
			$wheres2[] 	= 'a.`fulltext` LIKE '.$text;
			$wheres2[] 	= 'a.metakey LIKE '.$text;
			$wheres2[] 	= 'a.metadesc LIKE '.$text;
			$where 		= '(' . implode( ') OR (', $wheres2 ) . ')';
			break;

		case 'all':
		case 'any':
		default:
			$words = explode( ' ', $text );
			$wheres = array();
			foreach ($words as $word) {
				$word		= $db->Quote( '%'.$db->getEscaped( $word, true ).'%', false );
				$wheres2 	= array();
				$wheres2[] 	= 'a.title LIKE '.$word;
				$wheres2[] 	= 'a.introtext LIKE '.$word;
				$wheres2[] 	= 'a.`fulltext` LIKE '.$word;
				$wheres2[] 	= 'a.metakey LIKE '.$word;
				$wheres2[] 	= 'a.metadesc LIKE '.$word;
				$wheres[] 	= implode( ' OR ', $wheres2 );
			}
			$where = '(' . implode( ($phrase == 'all' ? ') AND (' : ') OR ('), $wheres ) . ')';
			break;
	}

	$morder = '';
	switch ($ordering) {
		case 'oldest':
			$order = 'a.created ASC';
			break;

		case 'popular':
			$order = 'a.hits DESC';
			break;

		case 'alpha':
			$order = 'a.title ASC';
			break;

		case 'category':
			$order = 'b.title ASC, a.title ASC';
			$morder = 'a.title ASC';
			break;

		case 'newest':
			default:
			$order = 'a.created DESC';
			break;
	}

	$rows = array();

	// search articles
	if ( $sContent && $limit > 0 )
	{
		$query = 'SELECT a.title AS title, a.metadesc, a.metakey,'
		. ' a.created AS created,'
		. ' CONCAT(a.introtext, a.`fulltext`) AS text,'
		. ' CONCAT_WS( "/", u.title, b.title ) AS section,'
		. ' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'
		. ' CASE WHEN CHAR_LENGTH(b.alias) THEN CONCAT_WS(":", b.id, b.alias) ELSE b.id END as catslug,'
		. ' u.id AS sectionid,'
		. ' "2" AS browsernav'
		. ' FROM #__content AS a'
		. ' INNER JOIN #__categories AS b ON b.id=a.catid'
		. ' INNER JOIN #__sections AS u ON u.id = a.sectionid'
		. ' WHERE ( '.$where.' )'
		. ' AND a.state = 1'
		. ' AND u.published = 1'
		. ' AND b.published = 1'
		. ' AND a.access <= '.(int) $user->get( 'aid' )
		. ' AND b.access <= '.(int) $user->get( 'aid' )
		. ' AND u.access <= '.(int) $user->get( 'aid' )
		. ' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )'
		. ' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'
		. ' GROUP BY a.id'
		. ' ORDER BY '. $order
		;
		$db->setQuery( $query, 0, $limit );
		$db->setQuery($query);
		$list = $db->loadObjectList();
		$limit -= count($list);

		if(isset($list))
		{
			foreach($list as $key => $item)
			{
				$list[$key]->href = ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid);
			}
		}
		$rows[] = $list;
	}

	// search uncategorised content
	if ( $sUncategorised && $limit > 0 )
	{
		$query = 'SELECT id, a.title AS title, a.created AS created, a.metadesc, a.metakey, '
		. ' a.introtext AS text,'
		. ' "2" as browsernav, "'. $db->Quote(JText::_('Uncategorised Content')) .'" AS section'
		. ' FROM #__content AS a'
		. ' WHERE ('.$where.')'
		. ' AND a.state = 1'
		. ' AND a.access <= '.(int) $user->get( 'aid' )
		. ' AND a.sectionid = 0'
		. ' AND a.catid = 0'
		. ' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )'
		. ' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'
		. ' ORDER BY '. ($morder ? $morder : $order)
		;
		$db->setQuery( $query, 0, $limit );
		$list2 = $db->loadObjectList();
		$limit -= count($list2);

		if(isset($list2))
		{
			foreach($list2 as $key => $item)
			{
				$list2[$key]->href = ContentHelperRoute::getArticleRoute($item->id);
			}
		}

		$rows[] = $list2;
	}

	// search archived content
	if ( $sArchived && $limit > 0 )
	{
		$searchArchived = JText::_( 'Archived' );

		$query = 'SELECT a.title AS title, a.metadesc, a.metakey,'
		. ' a.created AS created,'
		. ' a.introtext AS text,'
		. ' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'
		. ' CASE WHEN CHAR_LENGTH(b.alias) THEN CONCAT_WS(":", b.id, b.alias) ELSE b.id END as catslug,'
		. ' u.id AS sectionid,'
		. ' "2" AS browsernav'
		. ' FROM #__content AS a'
		. ' INNER JOIN #__categories AS b ON b.id=a.catid AND b.access <= ' .$user->get( 'gid' )
		. ' INNER JOIN #__sections AS u ON u.id = a.sectionid'
		. ' WHERE ( '.$where.' )'
		. ' AND a.state = -1'
		. ' AND u.published = 1'
		. ' AND b.published = 1'
		. ' AND a.access <= '.(int) $user->get( 'aid' )
		. ' AND b.access <= '.(int) $user->get( 'aid' )
		. ' AND u.access <= '.(int) $user->get( 'aid' )
		. ' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )'
		. ' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'
		. ' ORDER BY '. $order
		;
		$db->setQuery( $query, 0, $limit );
		$list3 = $db->loadObjectList();

		if(isset($list3))
		{
			foreach($list3 as $key => $item)
			{
				$list3[$key]->href = ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid);
			}
		}

		$rows[] = $list3;
	}

	$results = array();
	if(count($rows))
	{
		foreach($rows as $row)
		{
			$new_row = array();
			foreach($row AS $key => $article) {
				if(searchHelper::checkNoHTML($article, $searchText, array('text', 'title', 'metadesc', 'metakey'))) {
					$new_row[]			=	$article;
					//	begin added by tungnt 
					if ( $isRunPageRankCaculate ) {
						$obj_pageRank		=	new pageRankCaculate($searchText, $phrase, $point_occurrence_in_title, $point_occurrence_in_fulltext, $article);
						$obj_pageRank->caculate();
						$article->score		=	$obj_pageRank->get('_score');
					}
					//	end added by tungnt
				}
			}
			$results = array_merge($results, (array) $new_row);
		}
	}
	/***********************************************************************************************
	* ---------------------------------------------------------------------------------------------
	*  CACULATE ORDER FOR ITEMS BEFORE RETURN SECTION
	* ---------------------------------------------------------------------------------------------
	***********************************************************************************************/
	//	sort results array
	if ( $isRunPageRankCaculate )
		$results	=	pageRankCaculate::vsort($results,'score', false, true);

	return $results;
}
/**
 * Class used to decide the pagerank of an article
 *
 */
class pageRankCaculate extends JObject {
	
	var $_score								=	0;
	var $_obj_data							=	null;
	var $_searchText						=	null;
	var $_phrase							=	null;
	var $_point_occurrence_in_title			=	null;
	var $_point_occurrence_in_fulltext		=	null;
	
	function pageRankCaculate( $searchText, $phrase, $point_occurrence_in_title, $point_occurrence_in_fulltext, $object ){
		//$this->_searchText					=	str_replace( '\'', '', str_replace( '%', '', $searchword ) );
		$this->_searchText						=	$searchText;
		$this->_phrase							=	$phrase;
		$this->_point_occurrence_in_title		=	$point_occurrence_in_title;
		$this->_point_occurrence_in_fulltext	=	$point_occurrence_in_fulltext;
		$this->_obj_data						=	$object;
	}
	
	function caculate(){
		$cleanText_title						=	JFilterOutput::cleanText( $this->_obj_data->title );
		$cleanText_text							=	JFilterOutput::cleanText( $this->_obj_data->text );
		switch ($this->_phrase) {
			case 'exact':
				//	if $_searchText occur in title then + 10 point		
				$no_occ_in_title					=	substr_count( $cleanText_title	, $this->_searchText );
				//$no_occ_in_title					=	preg_match_all( '/'.$this->_searchText.'/i'	, $cleanText_title	, $matches_1);
				//$no_occ_in_title					=	count($matches_1);
				$this->_score						+=	$no_occ_in_title * $this->_point_occurrence_in_title;
				
				//	if $_searchText occur in fulltext then + 1 point
				$no_occ_in_fulltext					=	substr_count( $cleanText_text	, $this->_searchText );
				$this->_score						+=	$no_occ_in_fulltext * $this->_point_occurrence_in_fulltext;
				break;
			case 'all':
			case 'any':
			default:
				$words = explode( ' ', strtolower($this->_searchText) );
				foreach ($words as $word) {
					//	if $_searchText occur in title  then + 10 point		
					$no_occ_in_title					=	substr_count( strtolower($cleanText_title)	, $word );
					$this->_score						+=	$no_occ_in_title * $this->_point_occurrence_in_title;
					
					//	if $_searchText occur in fulltext then + 1 point
					$no_occ_in_fulltext					=	substr_count( strtolower($cleanText_text)	, $word );
					$this->_score						+=	$no_occ_in_fulltext * $this->_point_occurrence_in_fulltext;
				}
				break;
		}
	}
		
	/**
	* Sorts an array of objects by the value of one of the object properties or array keys
	*
	* @param array $array
	* @param key value $id
	* @param boolean $sort_ascending
	* @param boolean $is_object_array
	* @return array
	*/
	function vsort($array, $id="id", $sort_ascending=true, $is_object_array = false) {
		$temp_array = array();
		while(count($array)>0) {
			$lowest_id = 0;
			$index=0;
			if($is_object_array){
				foreach ($array as $item) {
					if (isset($item->$id)) {
						if ($array[$lowest_id]->$id) {
							if ($item->$id<$array[$lowest_id]->$id) {
								$lowest_id = $index;
							}
						}
					}
					$index++;
				}
			}else{
				foreach ($array as $item) {
					if (isset($item[$id])) {
						if ($array[$lowest_id][$id]) {
							if ($item[$id]<$array[$lowest_id][$id]) {
								$lowest_id = $index;
							}
						}
					}
					$index++;
				}
			}
			$temp_array[] = $array[$lowest_id];
			$array = array_merge(array_slice($array, 0,$lowest_id), array_slice($array, $lowest_id+1));
		}
		if ($sort_ascending) {
			return $temp_array;
		} else {
			return array_reverse($temp_array);
		}
	}
}
