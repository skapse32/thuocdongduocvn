<?php

// no direct access
defined('_JEXEC') or die('Restricted access');


if ( ! defined('modMainMenuXMLCallbackDefined') )
{
	function modMainMenuXMLCallback(&$node, $args)
	{
		$user	= &JFactory::getUser();
		$menu	= &JSite::getMenu();
		$active	= $menu->getActive();
		$path	= isset($active) ? array_reverse($active->tree) : null;
		
		/*if (($args['end']) && ($node->attributes('level') >= $args['end']))
		{
			$children = $node->children();
			foreach ($node->children() as $child)
			{
				if ($child->name() == 'ul') {
					$node->removeChild($child);
				}
			}
		}*/
		
		if ($node->name() == 'ul') {
			foreach ($node->children() as $child)
			{
				if ($child->attributes('access') > $user->get('aid', 0)) {
					$node->removeChild($child);
				}
			}
		}
		
		if (($node->name() == 'li') && isset($node->ul)) {
			$node->addAttribute('class', 'parent');
		}
		/*	if (($node->name() == 'a') && $args['end']) {			
				$node->addAttribute('class', 'reset-mn');
			}*/
		
		if (isset($path) && (in_array($node->attributes('id'), $path) || in_array($node->attributes('rel'), $path)))
		{
			if ($node->attributes('class')) {
				$node->addAttribute('class', $node->attributes('class').' active');
			} else {
				$node->addAttribute('class', 'active');
			}
		}
		else
		{
			if (isset($args['children']) && !$args['children'])
			{
				$children = $node->children();
				foreach ($node->children() as $child)
				{
					if ($child->name() == 'ul') {
						$node->removeChild($child);
					}
				}
			}
		}
		
		if (($node->name() == 'li') && ($id = $node->attributes('id'))) {
			if ($node->attributes('class')) {
				$node->addAttribute('class', $node->attributes('class').' item'.$id);
			} else {
				$node->addAttribute('class', 'item'.$id);
			}
		}
		
		if (isset($path) && $node->attributes('id') == $path[0]) {
			$node->addAttribute('id', 'current');
		} else {
			$node->removeAttribute('id');
		}
		$node->removeAttribute('rel');
		$node->removeAttribute('level');
		$node->removeAttribute('access');
	}
	define('modMainMenuXMLCallbackDefined', true);
}

modMainMenuHelper::render($params, 'modMainMenuXMLCallback');
echo "<script>
jQuery('document').ready(function(){
jQuery('div.menu ul li:last-child a').addClass('reset-bg');
jQuery('div.menu ul li ul li:last-child').addClass('reset-bg');
//alert(jQuery('div.menu ul.menu >li').size());
jQuery('div.menu ul.menu >li').mouseover(function(){
	if(!jQuery(this).hasClass('active'))	
		jQuery('div.menu ul li.active ul').hide();
});
jQuery('div.menu ul.menu >li').mouseout(function(){	
	jQuery('div.menu ul li.active ul').attr('style','');
});
});
</script>";