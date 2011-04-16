<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$templateUrl = JURI::root()."templates/".$mainframe->getTemplate();
?>
<link rel="stylesheet" href="modules/mod_photo_slide/asset/style.css" />
<div id="moduel_anhphongsu">
	<div id="moduel_anhphongsu_title">
		<div id="moduel_anhphongsu_title_bor"></div>
		<div id="moduel_anhphongsu_title_bg">
			<a>ẢNH PHÓNG SỰ</a>
		</div>
	</div>
	<div id="moduel_anhphongsu_content">
		<ul id="slideshow">
			<?php 			
			foreach($Article as $aActicle){
				foreach($aActicle['photos'] as $Photo){
			?>
			<li>
				<h3><?php echo "<a href=\"{$aActicle['link']}\" style=\"color:#FFFFFF\">".$aActicle['title']."</a>" ?></h3>
				<span><?php echo $Photo;?></span>
				<p></p>
				<a href=""><img src="" alt="" /></a>
			</li>
			<?php 
				}
			}?>			
		</ul>
		<div id="wrapper">
			<div id="fullsize">
				<div id="imgprev" class="imgnav" title="Previous Image"></div>
				<div id="imglink"></div>
				<div id="imgnext" class="imgnav" title="Next Image"></div>
				<div id="image"></div>
				<div id="information">
					<h3></h3>
					<p></p>
				</div>
			</div>
			<div id="thumbnails" style="display:none">
				<div id="slideleft" title="Slide Left"></div>
				<div id="slidearea">
					<div id="slider"></div>
				</div>
				<div id="slideright" title="Slide Right"></div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="modules/mod_photo_slide/asset/compressed.js"></script>
<script type="text/javascript">
	$('slideshow').style.display='none';
	$('wrapper').style.display='block';
	var slideshow=new TINY.slideshow("slideshow");
	window.onload=function(){
		slideshow.auto=true;
		slideshow.speed=5;
		slideshow.link="linkhover";
		slideshow.info="information";
		slideshow.thumbs="slider";
		slideshow.left="slideleft";
		slideshow.right="slideright";
		slideshow.scrollSpeed=4;
		slideshow.spacing=5;
		slideshow.active="#fff";
		slideshow.init("slideshow","image","imgprev","imgnext","imglink");
	}
</script>