<!-- All comment -->
<style>
	.paggin a
	{
		font-weight:normal;
		font-size:11px;
	}
</style>
<?php
	jimport("joomla.utilities.date");
	
	foreach($this->comment as $comment)
	{
		$datepost=new JDate($comment->cdate);
		$datepost= $datepost->toFormat("%d/%m/%Y");
?>
	<div class="list-box3" style="font-size:11px;">  
    	<i><?php echo $comment->Name.' - '.$datepost;?></i>	<br>
        <?php echo $comment->Comment;?>
    </div>
<?php
	}
	if(!count($this->comment))
		echo "<center style='font-size:12px;'>Chưa có phản hồi nào</center>";
?>

<?php echo $this->commentpage->getPagesLinks();?>