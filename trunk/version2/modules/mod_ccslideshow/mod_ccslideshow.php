<?php
/**
 * Creative Clans Slide Show Module version 1.1
 * 
 * @package    Joomla
 * @subpackage Modules
 * @link http://www.creativeclans.nl
 * @license        GNU/GPL
 * mod_ccslideshow is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * 
 * The flash CCSlideShow.swf file used in this module is released under another 
 * license. See http://www.creativeclans.nl for more info. 
 */

/** ensure this file is being included by a parent file */
defined( '_JEXEC' ) or die( 'Restricted access' ); 

require_once( dirname(__FILE__).DS.'mod_ccslideshow_functions.php' );

// Module Params
$moduleclass_sfx         = $params->get( 'moduleclass_sfx', '' );
$width                   = intval($params->get( 'width', 400 ));
$height                  = intval($params->get( 'height', 300 ));

$par = array();
$par['backgroundColor']         = trim($params->get( 'backgroundColor', '0xFFFFFF' ));
$par['loops']                   = intval($params->get( 'loops', 0));
$par['wait']                    = intval($params->get( 'wait', 3000));
$par['effectTime']              = intval($params->get( 'effectTime', 1));
$par['includeEffects']          = trim($params->get( 'includeEffects' ));
$par['excludeEffects']          = trim($params->get( 'excludeEffects' ));
$par['stopOnMouseOver']         = $params->get( 'stopOnMouseOver', 'no');
$par['enableLinks']             = $params->get( 'enableLinks', 'no');
$par['link']                    = trim($params->get( 'link', '' ));
$par['linkTarget']              = trim($params->get( 'linkTarget', '_blank' ));
$par['path']                    = trim($params->get( 'path', '' ));
$par['order']                   = $params->get( 'order', 'forward');
$par['slides']                  = intval($params->get( 'slides', 0));
$par['borderStyle']             = $params->get( 'borderStyle', 'none');
$par['borderColor']            = trim($params->get( 'borderColor', '0x000000' ));
$par['borderThickness']         = intval($params->get( 'borderThickness', 1));
$par['borderAlpha']             = intval($params->get( 'borderAlpha', 1.0));
$par['captionStyle']            = $params->get( 'captionStyle', 'none');
$par['captionType']             = $params->get( 'captionType', 'text');
$par['captionBackgroundColor']  = trim($params->get( 'captionBackgroundColor', '0x000000' ));
$par['captionColor']            = trim($params->get( 'captionColor', '0xFFFFFF' ));
$par['captionText']             = trim($params->get( 'captionText', '' ));
$par['captionTextRightMargin']  = intval($params->get( 'captionTextRightMargin', 0));
$par['captionTextLeftMargin']   = intval($params->get( 'captionTextLeftMargin', 0));
$par['captionTextBottomMargin'] = intval($params->get( 'captionTextBottomMargin', 0));
$par['captionTextFont']         = trim($params->get( 'captionTextFont', 'Times New Roman' ));
$par['captionTextFontSize']     = intval($params->get( 'captionTextFontSize', 12));
$par['captionBackgroundAlpha']  = trim($params->get( 'captionBackgroundAlpha', '1.0' ));
$par['captionPosition']         = $params->get( 'captionPosition', 'top');
$par['captionHorizontalOffset'] = intval($params->get( 'captionHorizontalOffset', 0));
$par['captionVerticalOffset']   = intval($params->get( 'captionVerticalOffset', 0));
$par['captionImage']            = trim($params->get( 'captionImage', '' ));
$image                          = trim($params->get( 'images', '' ));
$url                            = trim($params->get( 'links', '' ));
$title                          = trim($params->get( 'captions', '' ));

// print_r($_SERVER);
// $module_path = $_SERVER['DOCUMENT_ROOT'] . JURI::root(true).'/modules/mod_ccslideshow/';
$module_path = dirname(__FILE__).DS;

// check and create effect strings
if ($par['includeEffects'] != '') $par['includeEffects'] = checkEffects($par['includeEffects']);
if ($par['excludeEffects'] != '') $par['excludeEffects'] = checkEffects($par['excludeEffects']);

// check and create slide info strings
if ($image != '') $image = checkSlideInfo($image);
if ($url != '') $url = checkSlideInfo($url);
if ($title != '') $title = checkSlideInfo($title);

// Build config XML file
$xml_data = '<?xml version="1.0" encoding="utf-8"?>'."\n";
$xml_data .= "<parameters>\n";
foreach ($par as $key=>$value) {
	$xml_data .= "<parameter name=\"$key\">$value</parameter>\n";
}
$xml_data .= "</parameters>\n";

// Write config XML file
$xmlconfig_filename = $module_path.'xmlconfig'.$module->id.'.xml';
$xmlconfig_file = fopen($xmlconfig_filename,'w');
fwrite($xmlconfig_file, $xml_data);
fclose($xmlconfig_file);

// Build slides XML file
$xml_data = '<?xml version="1.0" encoding="utf-8"?>'."\n";
$xml_data .= "<images>\n";
for($i=0; $i<count($image); $i++)
{
  $xml_data .= "<image>\n";
  $xml_data .= "<itemName>".trim($image[$i])."</itemName>\n";
  if (isset($title[$i]))
  {
    $xml_data .= "<itemCaption>".trim($title[$i])."</itemCaption>\n";
  }
  else
  {
    $xml_data .= "<itemCaption></itemCaption>\n";
  }
  if (isset($url[$i]))
  {
    $xml_data .= "<itemLink>".trim($url[$i])."</itemLink>\n";
  }
  else
  {
    $xml_data .= "<itemLink></itemLink>\n";
  }
  $xml_data .= "</image>\n";
}
$xml_data .= '</images>'."\n";

// Write slides XML file
$xmlslides_filename = $module_path.'xmlslides'.$module->id.'.xml';
$xmlslides_file = fopen($xmlslides_filename,'w');
fwrite($xmlslides_file, $xml_data);
fclose($xmlslides_file);

?>
<div id="cc-is<?php echo $module->id; ?>" class="ccslideshow<?php echo $moduleclass_sfx; ?>" style="width:<?php echo $width."px"; ?>; height:<?php echo $height."px"; ?>;">
    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
            codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0"
            width="<?php echo $width; ?>" height="<?php echo $height; ?>">
      <param name="wmode" value="opaque" />
      <param name="movie" value="<?php echo JURI::root().'modules/mod_ccslideshow/CCSlideShow.swf'; ?>" />
      <param name="FlashVars" value="config=<?php echo 'modules/mod_ccslideshow/xmlconfig'.$module->id.'.xml'; ?>&amp;slides=<?php echo 'modules/mod_ccslideshow/xmlslides'.$module->id.'.xml'; ?>" />
      <embed src="<?php echo JURI::root().'modules/mod_ccslideshow/CCSlideShow.swf'; ?>" 
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             wmode="opaque"
             width="<?php echo $width; ?>" height="<?php echo $height; ?>" 
      			 FlashVars="config=<?php echo 'modules/mod_ccslideshow/xmlconfig'.$module->id.'.xml'; ?>&amp;slides=<?php echo 'modules/mod_ccslideshow/xmlslides'.$module->id.'.xml'; ?>" />
    </object>
</div>