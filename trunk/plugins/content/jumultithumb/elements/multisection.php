<?php

defined( 'JPATH_BASE' ) or die( 'Restricted access' );

class JElementMultisection extends JElement
{
	/**
	* Element name
	*
	* @access	protected
	* @var		string
	*/
	var	$_name = 'Multisection';

	function fetchElement($name, $value, &$node, $control_name)
	{
		$db =& JFactory::getDBO();
        $document = &JFactory::getDocument();

        $source = $node->attributes( 'source' );

		$query = 'SELECT id, title FROM #__sections WHERE published = 1 AND scope = "content" ORDER BY title';
		$db->setQuery($query);
		$options = $db->loadObjectList();
	   	array_unshift($options, JHTML::_('select.option', '0', '- '.JText::_('Select Section').' -', 'id', 'title'));

        $document->addScript( '/modules/mod_junewsultra/assets/multilist.js' );

		return JHTML::_( 'select.genericlist',  $options, ''.$control_name.'['.$name.']',
                           'class="inputbox" onchange="changeMultilist(\'params' . $name . '\', \'params' . $source . '\');" size="5" multiple',
                             'id', 'title', (array)explode( ',', $this->_parent->get( $source ) ), $control_name.$name );
	}
}

?>