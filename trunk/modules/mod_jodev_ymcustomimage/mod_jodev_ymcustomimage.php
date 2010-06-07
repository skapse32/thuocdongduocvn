<?php

/**
* @version $Id: mod_jodev_ym_custom_image.php 1.1
* Jodev Yahoo Messenger Custom Image
* Created by Jerry Wijaya - http://www.jerrywijaya.com
* Email: me@jerrywijaya.com
* URL: - http://www.jerrywijaya.com
* 		 - http://www.mp3global.com
* 		 - http://www.pdfresult.com
* 		 - http://www.invisiblebreak.com
* 		 - http://www.joomlapoetry.com
* 		 - http://www.mosquitomagazine.com
* Created date: August, 2008
* @package Joomla 1.5.4
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
* Joomla is Free Software
*/

/** ensure this file is being included by a parent file **/
defined('_JEXEC') or die( 'Restricted access' );

$uri =& JURI::getInstance();

$moduleclass_sfx 	= $params->get( 'moduleclass_sfx', '' );
$yahooid 					= $params->get( 'yahooid', 'mp3global' );
$style 						= $params->get( 'style', "0" );
$yahooimage 			= $params->get( 'yahooimage', "0" );
$customimage 			= $params->get( 'customimage', "0" );
$align 						= $params->get( 'align', "center" );

$image_online 		= $params->get( 'image_online', $uri->base() . "/modules/mod_jodev_ymcustomimage/jodev_ymcustomimage/customonline0.gif" );
$image_offline 		= $params->get( 'image_offline', $uri->base() . "/modules/mod_jodev_ymcustomimage/jodev_ymcustomimage/customonffine0.gif" );

if(!$style || $style==0 || $style=="0") {
  echo '<a href="ymsgr:sendIM?'.$yahooid.'"><img src="http://opi.yahoo.com/online?u='.$yahooid.'&m=g&t='.$yahooimage.'"  border="0" /></a>';
} else {
	$pageurl = "http://mail.opi.yahoo.com/online?u=".$yahooid."&m=a&t=1";
	if(function_exists('curl_init')) {
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt ($ch, CURLOPT_URL, $pageurl );
		$status = curl_exec ( $ch );
		if($status == "01") {
			$online = true;
		} else {
			$online = false;
		}
		curl_close($ch);
	} else {
		$file = fopen($pageurl, "r");
		$read = fread($file, 200);
		$read = ereg_replace($yahooid, "", $read);
		if ($y = strstr ($read, "00")) {
			$online = false;
		} elseif ($y = strstr ($read, "01")) {
			$online = true;
		}
		fclose($file);
	}
	ob_start();
	echo '<div><div><div><h3>Hỗ trợ trực tuyến</h3><div class="" align="'.$align.'"><br/><a href="ymsgr:sendIM?'.$yahooid.'">';
	if($style=="1") {
		if($online) {
			echo '<img class="rs-float" src="'.$uri->base().'/modules/mod_jodev_ymcustomimage/jodev_ymcustomimage/customonline'.$customimage.'.gif" border="0" />';
		} else {
			echo '<img class="rs-float" src="'.$uri->base().'/modules/mod_jodev_ymcustomimage/jodev_ymcustomimage/customoffline'.$customimage.'.gif" border="0" />';
		}
	} else {
		if($online) {
			echo '<img class="rs-float" src="'.$image_online.'" border="0" />';
		} else {
			echo '<img class="rs-float" src="'.$image_offline.'" border="0" />';
		}
	}
	echo '</a><br/><br/></div></div></div></div>';
	$html = ob_get_contents();
	ob_end_clean();
}
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
?>
                    <?php echo $html;?>
