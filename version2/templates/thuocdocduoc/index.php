<?php
/**
 * @copyright	Copyright (C) 2010 - 2011 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * @author Le Hoang Long 
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<script language="javascript" src="<?php echo $this->baseurl ?>/templates/thuocdocduoc/js/jquery-1.4.2.min.js" ></script>
<jdoc:include type="head" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/thuocdocduoc/css/reset.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/thuocdocduoc/css/style.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/thuocdocduoc/css/template.css" type="text/css" />

<!--[if lte IE 6]>
<link href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body>
    <div class="wrapper" id="top">
        <!--header-->
        <div class="header">
            <a href="<?php echo JURI::root();?>"> <!-- class="logo"-->
            <img src="<?php echo $this->params->get('logo'); ?>" width='255' height='73' style='margin-top:15px'/>
            </a> <!--<a href="<?php echo JURI::root();?>">-->
                <!-- banner top-->
                <span class="adv" style="display:block">
                <div style='float: left; margin: 0px 0px 0px 25px;width:693 border: 1px solid #CBCBCB;'>
					<?php if($this->countModules('top')) : ?>
					<jdoc:include type="modules" name="top" />
					<?php else:?>
					
					<img class="adv" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/news&event_03.png"  />
					
					<?php endif;?>
				</div>
                </span>
			<!--</a>-->
             
            <!--<img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/news&event_09.png" class="hotline" />-->
            
            
        </div>
        <!--endheader-->
        <!--menu-bar-->
        <div class="mn-bar">
            <img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/news&event_20.png" class="fl-right" />
            <img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/news&event_15.png" />
            <div class="menu">
                <jdoc:include type="modules" name="user3" />                
            </div>
        </div>
        <!--end-menu-bar-->
        <!--body-->
        <div class="body">
            <!--left-->
            <?php if($this->countModules('left')) : ?>
            <div class="cols1">                
                
					<jdoc:include type="modules" name="left" style="rounded" />
				
            </div>
            <?php endif; ?>
            <!--end-left-->
            <!--center-->
            <div class="cols2">
				<!-- module user1-->
				<?php if($this->countModules('user1')) : ?>
					<div class="slide-show">
						<jdoc:include type="modules" name="user1" style="xhtml" />
					</div>
				<?php endif;?>                
                <div class="clear"></div>
                <!--Component-->
                <jdoc:include type="message" />
                <jdoc:include type="component" />                
                <jdoc:include type="modules" name="user2" style="xhtml" />
            </div>
            <!--end-center-->
            <!--right-->
            <?php if($this->countModules('right')) : ?>
            <div class="cols1">
               <jdoc:include type="modules" name="right" style="rounded"/>
            </div>
            <?php endif;?>
            <!--end-right-->
        </div>
        <!--end-body-->
        <!--footer-->        
        <?php if($this->countModules("footer")):?>
			<div>
			<jdoc:include type="modules" name="footer" style="xhtml"/>
			</div>
        <?php endif;?>
        <!--end-footer-->
    </div>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-16424167-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<div style="display:none" id="slogand_temp">
	<a style="font-weight:normal;color:#032B3F" href="<?php echo $this->params->get('slogand_url');?>">
	<?php echo $this->params->get('slogand'); ?>
	</a>
</div>
</body>
</html>
