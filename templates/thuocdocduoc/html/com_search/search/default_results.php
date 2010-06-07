<?php defined('_JEXEC') or die('Restricted access'); 
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
?>


<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
            Kết quả tìm kiếm</h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
        <center>
            <p class="paggin size12 bold">
                &nbsp;&nbsp;&nbsp;Có <span style="padding: 0;"><?php echo $this->total;?> kết quả</span> được tìm thấy!</p>
        </center>
        <!--list box-->     
        <?php if(count($this->results)):?>
        <?php foreach( $this->results as $result ) : ?>
		<?php 
		$result->introtext =$result->text;
		$result->text = $result->alltext;
		
		// Get the page/component configuration and article parameters
		//$item->params = clone($this->params);
		//$aparams = new JParameter($item->attribs);
		
		// Merge article parameters into the page configuration
		//$item->params->merge($aparams);
		
		// Process the content preparation plugins
		
		$xx = $dispatcher->trigger('onPrepareContent', array (& $result, & $result->params, 0));
		
		
		$plg_matches=array();
		$have_images = preg_match_all("|<[\s\v]*img[\s\v][^>]*>|Ui", $result->alltext, $plg_matches, PREG_PATTERN_ORDER) > 0;
		if($have_images)
		{
		$result->imgTag= $plg_matches[0][0];
		preg_match_all("/src=\"(.+?)\"/i", $result->imgTag, $m);
		$result->imgLink= $m[1][0];
		}
		?>
        <div class="list-box2">
				<?php if ( $result->href ) :
									if ($result->browsernav == 1 ) : ?>
										<a href="<?php echo JRoute::_($result->href); ?>" target="_blank">
									<?php else : ?>
										<a href="<?php echo JRoute::_($result->href); ?>">
						<?php endif;
									if ( $result->href ) : ?>
										</a>
						<?php endif;?>
					<?php endif; ?>  
			<?php if(!empty($result->imgLink)):?>      
            <a href="<?php echo JRoute::_($result->href); ?>" <?php echo  $result->browsernav == 1 ?"target='_blank'":"";?> >
                <img src="<?php echo $result->imgLink;?>" class="img2" /></a> 
            <?php endif;?>
            <a href="<?php echo JRoute::_($result->href); ?>" <?php echo  $result->browsernav == 1 ?"target='_blank'":"";?> class="link_title">            
                    <?php echo $this->escape($result->title);?></a><p>
                        <?php echo $result->introtext; ?></p>
        </div>
        <?php endforeach;?>
        <?php endif;?>
        <!--end list box-->        
        <center>
            <p>
                <br />
                <br />
                &nbsp;<br />
                &nbsp;</p>
            <?php echo is_object($this->pagination)? $this->pagination->getPagesLinks():''; ?>
        </center>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->
