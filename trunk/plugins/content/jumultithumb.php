<?php
/**
* @version: jumultithumb.php
* @package plg_jumultithumb
* @author Denys Nosov
* @license http://creativecommons.org/licenses/by-nc-nd/3.0/ Creative Commons Attribution-Noncommercial-No Derivative Works 3.0 License
* @version 2.2
* @description: Joomla Multipurpose plugin for creating thumbnails of images, using LightBox libraries.
*/

defined( '_JEXEC' ) or die( 'Restricted access' );
$mainframe->registerEvent('onPrepareContent', 'JUMultithumb');
error_reporting(0);

class  plgContentJThumbs extends JPlugin
{
	function plgContentJThumbs (&$subject )
	{
		parent::__construct( $subject);
	}
}

$option=JRequest :: getCmd('option');

if( ($option == 'com_content') || ($option == 'com_myblog') )
{
	$mainframe->registerEvent( 'onPrepareContent', 'JUMultithumb' );
	$mainframe->registerEvent( 'onPrepareContent', 'JUMultithumbHead' );
	$mainframe->registerEvent( 'onBeforeDisplayContent', 'JUMultithumbLink' );
}

function jumultithumb(&$article)
{
	$article->text      = preg_replace('#<img(.*?)mce_src="(.*?)"(.*?)>#s', "<img\\1\\3>", $article->text);
	$regex      = "#<img(.*?)>#s";
	$article->text  = preg_replace_callback( $regex, 'JUMultithumbReplacer', $article->fulltext );
	
	return true;
}

function JUMultithumbLink( &$article, &$params )
{
	$option=JRequest :: getCmd('option');
	$view=JRequest :: getCmd('view');
	$layout=JRequest :: getCmd('layout');
	
	if( $option!= 'com_content')
	{
		return true;
	}
	
	$regex="/<img(.*?)>\s*(<\/img>)?/ ";
	
	if( ($view=='frontpage') || ($layout=='blog') )
	{
		if( $article->readmore_link )
		{
			$article->text = preg_replace( $regex, '<a title="'. $article->title .'" href="'.$article->readmore_link.'">$0</a>',$article->text );
		}
	}
}

function JUMultithumbReplacer ( &$matches )
{
	global $mainframe;
	
	$view		    = JRequest::getVar('view');
	$Itemid		    = JRequest::getVar('Itemid');
	$show		    = JRequest::getVar('show');
	$plugin         = & JPluginHelper::getPlugin('content', 'jumultithumb');
	$pluginParams   = new JParameter( $plugin->params );
	$juimgresmatche = $matches[1];
	
	preg_match('#src="(.*?)"#s',$juimgresmatche,$imgsource);
	$imgsource  = $imgsource[1];
	$imgsource  = str_replace(JURI::base(), '', $imgsource);
	
	preg_match('#alt="(.*?)"#s',$juimgresmatche,$imgalt);
	$imgalt    = $imgalt[1];
	
	preg_match('#title="(.*?)"#s',$juimgresmatche,$imgtitle);
	$imgtitle   = $imgtitle[1];
	
	preg_match('#align="(.*?)"#s',$juimgresmatche,$imgalign);
	$imgalign   = $imgalign[1];
	
	preg_match('#style="(.*?)"#s',$juimgresmatche,$imgstyle);
	$imgstyle   = $imgstyle[1];
	
	preg_match('#style="(.*?)"#s',$juimgresmatche,$imgstyle2);
	$imgstyle2   = $imgstyle2[1];
	
	if( $imgalign )
	{
		$imgstyle     = 'float: '. $imgalign .';';
		$img_class    = ' ju'. $imgalign;
	} elseif( $imgstyle )
	{
		$imgstyle2    = preg_replace('#float: (.*?);#s', '\\1', $imgstyle2);
		$img_class    = ' ju'. $imgstyle2;
	}
	
	if ( $pluginParams->get('resall','1') == '0' )
	{
		preg_match('#class="(.*?)"#s',$juimgresmatche,$imgclass);
		$imgclass   = $imgclass[1];
		
		if ($imgclass != "juimage")
		{
			$limage = '<img '. $juimgresmatche . ( $imgalt ? ' alt="'.$imgalt.'"' : '' ) . ( $imgtitle ? ' title="'. $imgtitle .'"' : '' ) .( $imgstyle ? ' style="'. $imgstyle .'"' : '' ) .' class="juimage'. $img_class .'" />';
			
			return $limage;
			
		} elseif ($imgclass == "noimage")
		{
			$limage = '<img '. $juimgresmatche . ( $imgalt ? ' alt="'.$imgalt.'"' : '' ) . ( $imgtitle ? ' title="'. $imgtitle .'"' : '' ) .( $imgstyle ? ' style="'. $imgstyle .'"' : '' ) .' class="juimage'. $img_class .' noimage" />';
			
			return $limage;
		}
		
	} else
	{
		preg_match('#class="(.*?)"#s',$juimgresmatche,$imgclass);
		$imgclass   = $imgclass[1];
		
		if ( ($imgclass == "noimage") || ($imgclass == "nothumbnail") )
		{
			$juimgresmatche = str_replace(' class="noimage"', '', $juimgresmatche);
			$juimgresmatche = str_replace(' class="nothumbnail"', '', $juimgresmatche);
			$juimgresmatche = str_replace(' /', '', $juimgresmatche);
			
			$limage = '<img '. $juimgresmatche . ( $imgalt ? ' alt="'.$imgalt.'"' : ' alt=""' ) . ( $imgtitle ? ' title="'. $imgtitle .'"' : '' ) . ( $imgstyle ? ' style="'. $imgstyle .'"' : '' ) .' class="juimage'. $img_class .' noimage" />';
			
			return $limage;
		}
	}
	
	if( ($view == 'article') || ($show) )
	{
		if($Itemid == trim( $pluginParams->get('menu_item1') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew1');
			$newmaxheight   = $pluginParams->get('maxheightnew1');
			$newwidth       = $pluginParams->get('widthnew1');
			$newheight      = $pluginParams->get('heightnew1');
			$newcropzoom    = $pluginParams->get('cropzoomnew1');
			$newnoresize    = $pluginParams->get('noresizenew1');
		} elseif($Itemid == trim( $pluginParams->get('menu_item2') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew2');
			$newmaxheight   = $pluginParams->get('maxheightnew2');
			$newwidth       = $pluginParams->get('widthnew2');
			$newheight      = $pluginParams->get('heightnew2');
			$newcropzoom    = $pluginParams->get('cropzoomnew2');
			$newnoresize    = $pluginParams->get('noresizenew2');
		} elseif($Itemid == trim( $pluginParams->get('menu_item3') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew3');
			$newmaxheight   = $pluginParams->get('maxheightnew3');
			$newwidth       = $pluginParams->get('widthnew3');
			$newheight      = $pluginParams->get('heightnew3');
			$newcropzoom    = $pluginParams->get('cropzoomnew3');
			$newnoresize    = $pluginParams->get('noresizenew3');
		} elseif($Itemid == trim( $pluginParams->get('menu_item4') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew4');
			$newmaxheight   = $pluginParams->get('maxheightnew4');
			$newwidth       = $pluginParams->get('widthnew4');
			$newheight      = $pluginParams->get('heightnew4');
			$newcropzoom    = $pluginParams->get('cropzoomnew4');
			$newnoresize    = $pluginParams->get('noresizenew4');
		} elseif($Itemid == trim( $pluginParams->get('menu_item5') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew5');
			$newmaxheight   = $pluginParams->get('maxheightnew5');
			$newwidth       = $pluginParams->get('widthnew5');
			$newheight      = $pluginParams->get('heightnew5');
			$newcropzoom    = $pluginParams->get('cropzoomnew5');
			$newnoresize    = $pluginParams->get('noresizenew5');
		} elseif($Itemid == trim( $pluginParams->get('menu_item6') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew6');
			$newmaxheight   = $pluginParams->get('maxheightnew6');
			$newwidth       = $pluginParams->get('widthnew6');
			$newheight      = $pluginParams->get('heightnew6');
			$newcropzoom    = $pluginParams->get('cropzoomnew6');
			$newnoresize    = $pluginParams->get('noresizenew6');
		} elseif($Itemid == trim( $pluginParams->get('menu_item7') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew7');
			$newmaxheight   = $pluginParams->get('maxheightnew7');
			$newwidth       = $pluginParams->get('widthnew7');
			$newheight      = $pluginParams->get('heightnew7');
			$newcropzoom    = $pluginParams->get('cropzoomnew7');
			$newnoresize    = $pluginParams->get('noresizenew7');
		} elseif($Itemid == trim( $pluginParams->get('menu_item8') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew8');
			$newmaxheight   = $pluginParams->get('maxheightnew8');
			$newwidth       = $pluginParams->get('widthnew8');
			$newheight      = $pluginParams->get('heightnew8');
			$newcropzoom    = $pluginParams->get('cropzoomnew8');
			$newnoresize    = $pluginParams->get('noresizenew8');
		} elseif($Itemid == trim( $pluginParams->get('menu_item9') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew9');
			$newmaxheight   = $pluginParams->get('maxheightnew9');
			$newwidth       = $pluginParams->get('widthnew9');
			$newheight      = $pluginParams->get('heightnew9');
			$newcropzoom    = $pluginParams->get('cropzoomnew9');
			$newnoresize    = $pluginParams->get('noresizenew9');
		} elseif($Itemid == trim( $pluginParams->get('menu_item10') ))
		{
			$newmaxwidth    = $pluginParams->get('maxwidthnew10');
			$newmaxheight   = $pluginParams->get('maxheightnew10');
			$newwidth       = $pluginParams->get('widthnew10');
			$newheight      = $pluginParams->get('heightnew10');
			$newcropzoom    = $pluginParams->get('cropzoomnew10');
			$newnoresize    = $pluginParams->get('noresizenew10');
		} else {
			$newmaxwidth    = $pluginParams->get('maxwidth');
			$newmaxheight   = $pluginParams->get('maxheight');
			$newwidth       = $pluginParams->get('width');
			$newheight      = $pluginParams->get('height');
			$newcropzoom    = $pluginParams->get('cropzoom');
			$newnoresize    = $pluginParams->get('noresize');
		}
		
		if( $newnoresize == '1' )
		{
			$juimgresmatche = str_replace(' /', '', $juimgresmatche);
			$limage = '<img '. $juimgresmatche . ( $imgalt ? ' alt="'.$imgalt.'"' : ' alt=""' ) . ( $imgtitle ? ' title="'. $imgtitle .'"' : '' ) .( $imgstyle ? ' style="'. $imgstyle .'"' : '' ) .' class="juimage'. $img_class .'" />';
			
			return $limage;
		}
		
		if($pluginParams->get('a_watermark','0') == '1')
		{
			switch ( $pluginParams->get('wmposition') )
			{
				case 'top':
					$wmp    =   'T';
					break;
				case 'bottom':
					$wmp    =   'B';
					break;
				case 'left':
					$wmp    =   'L';
					break;
				case 'right':
					$wmp    =   'R';
					break;
				case 'center':
					$wmp    =   'C';
					break;
				case 'topleft':
					$wmp    =   'TL';
					break;
				case 'topright':
					$wmp    =   'TR';
					break;
				case 'bottomleft':
					$wmp    =   'BL';
					break;
				case 'bottomright':
					$wmp    =   'BR';
					break;
			}
			
			$a_watermark_orig   = '&amp;zc=0&amp;fltr[]=wmi|watermark.png|'. $wmp;
			
			if($pluginParams->get('maxsize_orig','0') == '1')
			{
				$imgsrc_orig        = '../../../' . $imgsource . '&amp;w='. $newmaxwidth .'&amp;h='. $newmaxheight .'&amp;q=100'. $a_watermark_orig;
			} else{
				$imgsrc_orig        = '../../../' . $imgsource . '&amp;w=&amp;h=&amp;q=100'. $a_watermark_orig;
			}
			
		} else
		{
			if($pluginParams->get('maxsize_orig','0') == '1')
			{
				$imgsrc_orig        = '../../../' . $imgsource . '&amp;w='. $newmaxwidth .'&amp;h='. $newmaxheight .'&amp;q=100';
			} else{
				$imgsrc_orig        = '../../../' . $imgsource . '&amp;w=&amp;h=&amp;q=100';
			}
		}
		
		if ($imgclass == "photogallimg")
		{
			$imgsrc    = '../../../' . $imgsource . '&amp;w=130&amp;h=130&amp;q='.$pluginParams->get('quality') . '&amp;zc=1';
		} else {
			$imgsrc    = '../../../' . $imgsource . '&amp;w='. $newwidth .'&amp;h='. $newheight .'&amp;q='.$pluginParams->get('quality') . ( $newcropzoom == '1' ? '&amp;zc=1' : '' );
		}
		
		$imgsrc = base64_encode($imgsrc);
		
		if($pluginParams->get('secimg','1') == '1')
		{
			$image = JURI::base() .'plugins/content/jumultithumb/'. $imgsrc .'.jpg';
			
			if($pluginParams->get('a_watermark','0') == '1')
			{
				$imgsource = JURI::base() .'plugins/content/jumultithumb/'. base64_encode( $imgsrc_orig ) .'.jpg';
			} else {
				if($pluginParams->get('maxsize_orig','0') == '1')
				{
					$imgsource = JURI::base() .'plugins/content/jumultithumb/'. base64_encode( $imgsrc_orig ) .'.jpg';
				}
			}
			
		} else
		{
			$image = JURI::base() .'plugins/content/jumultithumb/img.php?src='. $imgsrc;
			
			if($pluginParams->get('a_watermark','0') == '1')
			{
				$imgsource = JURI::base() .'plugins/content/jumultithumb/img.php?src='. base64_encode( $imgsrc_orig );
			} else {
				if($pluginParams->get('maxsize_orig','0') == '1')
				{
					$imgsource = JURI::base() .'plugins/content/jumultithumb/img.php?src='. base64_encode( $imgsrc_orig ); 
				}
			}
		}
		
		$limage = '<a href="' . $imgsource . '"'. ( $imgtitle ? ' title="'. $imgtitle .'"' : '' ) .'rel="lightbox[den]"><img src="'. $image .'"' . ( $imgalt ? ' alt="'.$imgalt.'"' : ' alt=""' ) .( $imgstyle ? ' style="'. $imgstyle .'"' : '' ) .' class="juimage'. $img_class .'" /></a>';
		
	} elseif($view == 'frontpage')
	{
		$f_newwidth       = $pluginParams->get('f_width');
		$f_newheight      = $pluginParams->get('f_height');
		$f_newcropzoom    = $pluginParams->get('f_cropzoom');
		
		$imgsrc    = '../../../' . $imgsource . '&amp;w='. $f_newwidth .'&amp;h='. $f_newheight .'&amp;q='. $pluginParams->get('quality') . ( $f_newcropzoom == '1' ? '&amp;zc=1' : '' );
		
		$imgsrc = base64_encode($imgsrc);
		
		if($pluginParams->get('secimg','1') == '1')
		{
			$image = JURI::base() .'plugins/content/jumultithumb/'. $imgsrc .'.jpg';
		} else
		{
			$image = JURI::base() .'plugins/content/jumultithumb/img.php?src='. $imgsrc;
		}
		
		$limage = '<img src="'. $image .'"'. ( $imgalt ? ' alt="'.$imgalt.'"' : ' alt=""' ) . ( $imgtitle ? ' title="'. $imgtitle .'"' : '' ) .( $imgstyle ? ' style="'. $imgstyle .'"' : '' ) .' class="juimage'. $img_class .'" />';
		
	} else
	{
		if($Itemid == trim( $pluginParams->get('menu_item1') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew1');
			$b_newheight      = $pluginParams->get('b_heightnew1');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew1');
		} elseif($Itemid == trim( $pluginParams->get('menu_item2') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew2');
			$b_newheight      = $pluginParams->get('b_heightnew2');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew2');
		} elseif($Itemid == trim( $pluginParams->get('menu_item3') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew3');
			$b_newheight      = $pluginParams->get('b_heightnew3');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew3');
		} elseif($Itemid == trim( $pluginParams->get('menu_item4') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew4');
			$b_newheight      = $pluginParams->get('b_heightnew4');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew4');
		} elseif($Itemid == trim( $pluginParams->get('menu_item5') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew5');
			$b_newheight      = $pluginParams->get('b_heightnew5');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew5');
		} elseif($Itemid == trim( $pluginParams->get('menu_item6') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew6');
			$b_newheight      = $pluginParams->get('b_heightnew6');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew6');
		} elseif($Itemid == trim( $pluginParams->get('menu_item7') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew7');
			$b_newheight      = $pluginParams->get('b_heightnew7');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew7');
		} elseif($Itemid == trim( $pluginParams->get('menu_item8') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew8');
			$b_newheight      = $pluginParams->get('b_heightnew8');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew8');
		} elseif($Itemid == trim( $pluginParams->get('menu_item9') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew9');
			$b_newheight      = $pluginParams->get('b_heightnew9');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew9');
		} elseif($Itemid == trim( $pluginParams->get('menu_item10') ))
		{
			$b_newwidth       = $pluginParams->get('b_widthnew10');
			$b_newheight      = $pluginParams->get('b_heightnew10');
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew10');
		} else {
			$b_newwidth       = $pluginParams->get('b_width');
			$b_newheight      = $pluginParams->get('b_height');
			$b_newcropzoom    = $pluginParams->get('b_cropzoom');
		}
		if($view=='section'&&JRequest::getVar('layout')=='thuvien')
		{
			$b_newwidth       = 130;
			$b_newheight      = 150;
			$b_newcropzoom    = $pluginParams->get('b_cropzoomnew10');
		}
		$imgsrc    = '../../../' . $imgsource . '&amp;w='. $b_newwidth .'&amp;h='. $b_newheight .'&amp;q='.$pluginParams->get('quality') . ( $b_newcropzoom == '1' ? '&amp;zc=1' : '' );
		
		$imgsrc = base64_encode($imgsrc);
		
		if($pluginParams->get('secimg','1') == '1')
		{
			$image = JURI::base() .'plugins/content/jumultithumb/'. $imgsrc .'.jpg';
		} else
		{
			$image = JURI::base() .'plugins/content/jumultithumb/img.php?src='. $imgsrc;
		}
		
		$limage = '<img src="'. $image .'"'. ( $imgalt ? ' alt="'.$imgalt.'"' : ' alt=""' ) . ( $imgtitle ? ' title="'. $imgtitle .'"' : '' ) .( $imgstyle ? ' style="'. $imgstyle .'"' : '' ) .' class="juimage'. $img_class .'" />';
	}
	if(eregi('^(f|ht)tps?://', $imgsource))
	{
		$limage= "<img src=\"$imgsource\" alt='' class='juimage' />";
	}
	return $limage;
}

function JUMultithumbHead(&$article, &$params)
{
	global $mainframe;
	
	$view		= JRequest::getVar('view');
	
	$plugin         = & JPluginHelper::getPlugin('content', 'jumultithumb');
	$pluginParams   = new JParameter( $plugin->params );
	
	$config = &JFactory::getConfig();
	$locale = $config->getValue('config.language');
	
	if ( $pluginParams->get('uselightbox','1') == '1' )
	{
		if($pluginParams->get("jujq") == '0')
		{
			$jujqinstall = '<script type="text/javascript" src="'. JURI::base() .'plugins/content/jumultithumb/media/jqlightbox/js/jquery.js"></script>';
		} else {
			$jujqinstall = '';
		}
		switch ( $pluginParams->get('selectlightbox') ) {
			
			case 'shadowbox':
				if ( file_exists( JPATH_SITE.'/plugins/content/jumultithumb/media/shadowbox/src/lang/shadowbox-'. $locale .'.js'))
				{
					$loadLang   = $locale;
				} else {
					$loadLang   = 'en-GB';
				}
				
				$juhead = '<script type="text/javascript" src="'. JURI::base() .'plugins/content/jumultithumb/media/shadowbox/src/adapter/shadowbox-mootools.js"></script>
						<script type="text/javascript" src="'. JURI::base() .'plugins/content/jumultithumb/media/shadowbox/src/shadowbox.js"></script>
						<script type="text/javascript">
						Shadowbox.loadSkin(\''. $pluginParams->get('skinshadowbox','denys') .'\', \''. JURI::base() .'plugins/content/jumultithumb/media/shadowbox/src/skin\');
						Shadowbox.loadLanguage(\''. $loadLang .'\', \''. JURI::base() .'plugins/content/jumultithumb/media/shadowbox/src/lang\');
						Shadowbox.loadPlayer([\'img\'], \''. JURI::base() .'plugins/content/jumultithumb/media/shadowbox/src/player\');
						window.onload = function(){
						Shadowbox.init();
						};
						</script>
						';
				break;
			
			case 'slimbox':
				if ( file_exists( JPATH_SITE.'/plugins/content/jumultithumb/media/slimbox/js/slimbox_'. $locale .'.js'))
				{
					$loadLang   = $locale;
				} else {
					$loadLang   = 'en-GB';
				}
				
				$juhead = '<link type="text/css" rel="stylesheet" href="'. JURI::base() .'plugins/content/jumultithumb/media/slimbox/css/slimbox.css" />
						<script type="text/javascript" src="'. JURI::base() .'plugins/content/jumultithumb/media/slimbox/js/slimbox_'. $locale .'.js"></script>
						';
				break;
			
			case 'jqlightbox':
				$jqlbparam  = "jQuery('a[@rel*=lightbox]').lightBox({\n";
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && ( $pluginParams->get("overlayBgColor") ) )
				{
					$jqlbparam  .=  "overlayBgColor: '". $pluginParams->get("overlayBgColor") ."',\n";
				} else {
					$jqlbparam  .=  "overlayBgColor: '#000',\n";
				}
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && $pluginParams->get("overlayOpacity") )
				{
					$jqlbparam  .=  "overlayOpacity: '". $pluginParams->get("overlayOpacity") ."',\n";
				} else {
					$jqlbparam  .=  "overlayOpacity: '0.8',\n";
				}
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && $pluginParams->get("imageLoading") )
				{
					$jqlbparam  .=  "imageLoading: '". $pluginParams->get("imageLoading") ."',\n";
				} else {
					$jqlbparam  .=  "imageLoading: '". JURI::base() ."plugins/content/jumultithumb/media/jqlightbox/images/lightbox-ico-loading.gif',\n";
				}
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && $pluginParams->get("imageBtnClose") )
				{
					$jqlbparam  .=  "imageBtnClose: '". $pluginParams->get("imageBtnClose") ."',\n";
				} else {
					$jqlbparam  .=  "imageBtnClose: '". JURI::base() ."plugins/content/jumultithumb/media/jqlightbox/images/lightbox-btn-close.gif',\n";
				}
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && $pluginParams->get("imageBtnPrev") )
				{
					$jqlbparam  .=  "imageBtnPrev: '". $pluginParams->get("imageBtnPrev") ."',\n";
				} else {
					$jqlbparam  .=  "imageBtnPrev: '". JURI::base() ."plugins/content/jumultithumb/media/jqlightbox/images/lightbox-btn-prev.gif',\n";
				}
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && $pluginParams->get("imageBtnNext") )
				{
					$jqlbparam  .=  "imageBtnNext: ". $pluginParams->get("imageBtnNext") .",\n";
				} else {
					$jqlbparam  .=  "imageBtnNext: '". JURI::base() ."plugins/content/jumultithumb/media/jqlightbox/images/lightbox-btn-next.gif',\n";
				}
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && $pluginParams->get("containerResizeSpeed") )
				{
					$jqlbparam  .=  "containerResizeSpeed: '". $pluginParams->get("containerResizeSpeed") ."',\n";
				} else {
					$jqlbparam  .=  "containerResizeSpeed: '400',\n";
				}
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && $pluginParams->get("txtImage") )
				{
					$jqlbparam  .=  "txtImage: '". $pluginParams->get("txtImage") ."',\n";
				} else {
					$jqlbparam  .=  "txtImage: 'Image',\n";
				}
				if( ( $pluginParams->get('jqlightboxparam') == '1' ) && $pluginParams->get("txtOf") )
				{
					$jqlbparam  .=  "txtOf: '". $pluginParams->get("txtOf") ."'\n";
				} else {
					$jqlbparam  .=  "txtOf: 'of'\n";
				}
				$jqlbparam  .= "});";
				
				$juhead = '<link type="text/css" rel="stylesheet" href="'. JURI::base() .'plugins/content/jumultithumb/media/jqlightbox/css/lightbox.css" />
						'. $jujqinstall .'
						<script type="text/javascript" src="'. JURI::base() .'plugins/content/jumultithumb/media/jqlightbox/js/lightbox.js"></script>
						<script type="text/javascript">
						jQuery.noConflict();
						jQuery(function() {
						'. $jqlbparam .'
						});
						</script>
						';
				break;
			
		}
		
		if($view == 'article')
		{
			$mainframe->addCustomHeadTag($juhead);
			$mainframe->addCustomHeadTag('<meta name="generator" content="2009 (c) JUMultiThumb, developer: Denys Nosov (http://joomla-ua.org and http://denys.org.ua)" />');
		}
		
	}
	return true;
}
?>