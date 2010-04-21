<?php

defined('_JEXEC') or die('Restricted Access');

$mainframe->registerEvent('onPrepareContent', 'plgImageResize');

function plgImageResize(&$row, &$params, $page)
{

	// find all image tags in the content
	$pattern = '/<img.src="([^"]*)".([^>]*)>/';
	preg_match_all($pattern, $row->text, $matches);

	// iterate through them and replace with cached version
	for($i = 0; $i< count($matches[0]); $i++)	
	{
		$replacements[] = getCache($matches[1][$i], $matches[2][$i]) . "<br>";
	}

	for($i = 0; $i < count($replacements); $i++)
	{
		$row->text = str_replace($matches[0][$i],$replacements[$i] ,$row->text);		
	}

}

function getCache($imagePath, $restofTag)
{
	
	//first, check to see if the rest of the tag has the width parameter
	$wPattern = '/width="([^"]*)"/';
	preg_match($wPattern, $restofTag, $match);

	if($match[1] > 0)
		$width = $match[1];
	else{
		$imgData = getimagesize($imagePath);
		$width = $imgData[0];		
	}
	
	$fileName = getFileName($imagePath);
	$imageDir = getDir($imagePath);
	$imageCacheDir = "cache/" . getDir($imagePath);


	$fileNameCache = $width . "-" . $fileName;

	$cache = $imageCacheDir . "/" . $fileNameCache;

	// create the cache if it doesn't exist
	if(!is_dir($imageCacheDir))
		mkdir($imageCacheDir,0777,true);
	
	// create the file if it doesn't exist
	if(!file_exists($cache)) {
		exec('convert -resize "' . $width . '" "' . $imageDir . "/" . $fileName . '" "' . $cache . '"');
	}
	
	if(!file_exists($cache))
		return null;

	return "<img src=\"$cache\" $restofTag >";
}


function getDir($fileName){
	$pos = strrpos($fileName, "/");
	if(!$pos)
		return ".";
		
	return substr($fileName,0, $pos);
}

function getFileName($data){
	$pos = strrpos($data, "/");
	if(!$pos)
		return ".";
		
	return substr($data,$pos+1, strlen($data) - $pos - 1);	
}

function getExtension($fileName){
	$pos = strrpos($fileName, ".");
	if(!$pos)
		return null;
		
	return substr($fileName,$pos +1, strlen($fileName) - $pos -1);
}

?>