<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$dispatcher	=& JDispatcher::getInstance();
?>
<?php JHTML::_('stylesheet', 'poll_bars.css', 'components/com_poll/assets/'); ?>
<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
            Kết quả bình chọn</h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<div style="padding:5px">
       
        <form action="index.php" method="post" name="poll" id="poll">
		<div class="poll-result">
			<div class="poll-left">
				<div class="poll-title" style="font-weight:bold"><?php echo $this->escape($this->params->get('page_title')); ?></div>
				<div class="poll-graph" style="line-height:12pt">
					<?php echo $this->loadTemplate('graph'); ?>
				</div>
			</div>
			<div class="poll-right"><?php echo JText::_('Select Poll'); ?>
				<?php echo $this->lists['polls']; ?></div>
			<div class="clear"></div>
		</div>
		</form>
		
       <div style="clear:both"></div>
    </div> 
	<br/>
	<br/>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>

<!--end-mdl-3-->


