<?php

defined( 'JPATH_BASE' ) or die( 'Restricted access' );

class JElementMulticategory extends JElement
{
	/**
	* Element name
	*
	* @access	protected
	* @var		string
	*/
	var	$_name = 'Multicategory';

	function fetchElement($name, $value, &$node, $control_name)
	{
		$db =& JFactory::getDBO();
        $document = &JFactory::getDocument();

        $document->addScript( '/modules/mod_junewsultra/assets/multicategory.js' );

		$section = $node->attributes('section');
		$class   = $node->attributes('class');
		$source  = $node->attributes('source');
		if (!$class) {
			$class = "inputbox";
		}

		if (!isset ($section)) {
			// alias for section
			$section = $node->attributes('scope');
			if (!isset ($section)) {
				$section = 'content';
			}
		}

		if ($section == 'content') {
			// This might get a conflict with the dynamic translation - TODO: search for better solution
			$query = 'SELECT c.id, CONCAT_WS( "/",s.title, c.title ) AS title' .
				' FROM #__categories AS c' .
				' LEFT JOIN #__sections AS s ON s.id=c.section' .
				' WHERE c.published = 1' .
				' AND s.scope = '.$db->Quote($section).
				' ORDER BY s.title, c.title';
		} else {
			$query = 'SELECT c.id, c.title' .
				' FROM #__categories AS c' .
				' WHERE c.published = 1' .
				' AND c.section = '.$db->Quote($section).
				' ORDER BY c.title';
		}
		$db->setQuery($query);
		$options = $db->loadObjectList();
		array_unshift($options, JHTML::_('select.option', '0', '- '.JText::_('Select Category').' -', 'id', 'title'));

		return JHTML::_( 'select.genericlist',  $options, ''.$control_name.'['.$name.']',
                           'class="'.$class.'" onchange="changeMultilist(\'params'. $name . '\', \'params' . $source . '\');" size="10" multiple',
						     'id', 'title', (array)explode( ',', $this->_parent->get( $source ) ), $control_name.$name );
	}
}

?>