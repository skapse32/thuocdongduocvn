<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
?>
<?php
$view = JRequest::getVar('view');
if($view =='article')
{
?>
<div id="moduel9_tinkhac_title">
      <p style="text-transform:uppercase;">Các tin khác</p>
</div>
<div id="moduel9_tinkhac_content">
    <div id="moduel9_tinkhac_content1">
<?php
	for($i = 0; $i<4;$i++):
		$results = $dispatcher->trigger('onPrepareContent', array (& $rows[$i], & $item->params, 0));
	//	echo JUtility::dump($rows[$i]);die;
		$link   = ContentHelperRoute::getArticleRoute($rows[$i]->slug, $rows[$i]->catslug, $rows[$i]->sectionid);
		if($i%2==0)
			echo "<div class='clear'></div>";
?>

        <div id="moduel9_tinkhac_content1_detail">
			<?php if(!empty($rows[$i]->imgLink)):?>
                 <a href="<?php echo $link;?>">
                 <img src="<?php echo $rows[$i]->imgLink;?>"  width="63" height="41" />
                 </a>
                 <p>
			<?php else:?>
			<p style="padding:0 5px 0 5px">
			<?php endif;?>
                    <a href="<?php echo $link;?>"><?php echo $rows[$i]->title;?></a>
                  </p>
        </div>
		
<?php
			
?>
	
<?php		
		
	endfor;	
?>

</div></div>
<div id="moduel9_tinkhac_content2">
	<div id="moduel9_docnhieunhat_content">
    	<?php
        
			for($i=4;$i<count($rows);$i++)
			{
				$link   = ContentHelperRoute::getArticleRoute($rows[$i]->slug, $rows[$i]->catslug, $rows[$i]->sectionid);
				if($i%2!=0)
				{
					$class = 'class="link"';
				}
				else $class = "";
		?>
        	<div id="moduel9_docnhieunhat_content_link1" <?php echo $class;?>>
            <a href="<?php echo $link;?>"><?php echo $rows[$i]->title;?></a>
            </div>
        <?php
			}
		?>
    </div>
</div>
       
<?php
}
?>