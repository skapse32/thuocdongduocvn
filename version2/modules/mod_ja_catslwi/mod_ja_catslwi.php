<?php
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
require_once (JPATH_SITE .DS.'modules'.DS.'mod_ja_catslwi'.DS.'helper.php');

JHTML::stylesheet('',modJaSLWI::getFile('ja_catslwi.css','modules/mod_ja_catslwi/mod_ja_catslwi/','templates/'.$mainframe->getTemplate().'/css/'));

$height = intval($params->get('height'));
$catid = $params->get('catid','');
$numelem = $params->get('numelem',3);
$autoresize 			= 	intval (trim( $params->get( 'autoresize', 0) ));
$maxchars 				= 	intval (trim( $params->get( 'maxchars', 200 ) ));
$iwidth 				= 	intval (trim( $params->get( 'iwidth', 100 ) ));
$iheight 				= 	intval (trim( $params->get( 'iheight', 100 ) ));

$color = $params->get('textcolor');
if ($color) $color = " color:#$color;";
$bgcolor = $params->get('bgcolor');
if ($bgcolor) $bgcolor = " background-color:#$bgcolor;";
$trans = intval($params->get('transparent'));

$list =  modJaSLWI::getList($catid, $numelem);

if (!$trans) $trans = 100;
$xheight = intval($params->get('expandheight'));

global $ja_catslwi_id;
if (!defined( '_MOD_JA_CATSLWI')) {
	echo '
	<script type="text/javascript" src="'.JURI::base().'modules/mod_ja_catslwi/mod_ja_catslwi/mod_ja_catslwi.js"></script>
	<script type="text/javascript">
		jaSLWI.expandH = '.$xheight.';
	</script>';
	define( '_MOD_JA_CATSLWI', 1 );
	$ja_catslwi_id = 0;
}

foreach($list as $l){
	$l->text = $l->introtext.$l->fulltext;
	$link   = JRoute::_(ContentHelperRoute::getArticleRoute($l->slug, $l->catslug, $l->sectionid));
	$image = modJaSLWI::replaceImage ($l, $autoresize, $maxchars, $iwidth, $iheight );

echo '
<div '.($link ? 'onclick="location.href=\''.$link.'\'"' : '').' class="ja-catslwi" style="height: '.$height.'px;'.$image.' '.($link ? ' cursor: pointer;' : '').'">
	<div class="ja-catslwi-container">
		<p>&nbsp;</p>
		<div class="ja-catslwi-text">
		<div id="ja-catslwi-textbg'.(++$ja_catslwi_id).'" class="ja-catslwi-content" style="height:'.$xheight.'px;'.$bgcolor.'">
		<script type="text/javascript">
			textbg = document.getElementById("ja-catslwi-textbg'.($ja_catslwi_id).'");
			textbg.style.opacity = '.($trans/100).';
			textbg.style.filter = \'alpha(opacity='.$trans.')\';
		</script>
		</div>
		<div class="ja-catslwi-display" style="height:'.$xheight.'px;'.$color.'"><h3>'.$l->title.'</h3>'.$l->introtext.'</div>
		</div>
	</div>
</div>';
}
?>
