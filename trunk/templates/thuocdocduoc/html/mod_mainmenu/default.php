<?php
// no direct access
defined('_JEXEC') or die('Restricted access');


if ( ! defined('modMainMenuXMLCallbackDefined') )
{
	function modMainMenuXMLCallback(&$node, $args)
	{
		global $params;
		$user	= &JFactory::getUser();
		$menu	= &JSite::getMenu();
		//print_r($menu);
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
			if (($node->name() == 'a') ) {			
				$filter = JRequest::getVar('filter','','GET');
				if(strpos($node->_attributes['href'],'filter='.$filter)&&!empty($filter))
				{
					$node->addAttribute('class', 'text-underline');
				}
			}
		
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
// time info and slogan below Home page menu
global $mainframe;
$now = JFactory::getDate();
$now->setOffset($mainframe->getCfg('offset',0));

$thu =$now->toFormat("%w");
$thu++;
if($thu<2)
	$thu="Chu nhat";
else
	$thu="Thu ".$thu;
$timeStr = $thu.": ".$now->toFormat("%d/%m/%Y");

$html="<p>".htmlentities($timeStr)."</p>";
$html.="<marquee behavior='scroll' scrollamount='1' direction='left' onmouseover='this.stop()' onmouseout='this.start()'>Chào Mừng Quý Khách đến với website thuốc Đông Dược</marquee>";
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
		//float right menu
		//jQuery('div.menu ul.menu >li:gt(3) >ul').addClass('right_side');
		//alert(jQuery('div.menu ul.menu >li:gt(3) >ul >li:first').size());
		//jQuery('div.menu ul.menu >li:gt(3) ul li').removeClass('reset-bg');
		//jQuery('div.menu ul.menu >li:gt(3) ul').each(function(){
		//jQuery(this).find('li:first').addClass('reset-bg');
		//});
		// datetime and slogen
		jQuery('div.menu >ul.menu >li:first > ul > li').html(\"".$html."\");
});
</script>";