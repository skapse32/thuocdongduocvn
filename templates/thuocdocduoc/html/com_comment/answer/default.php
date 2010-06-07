<?php
defined('_JEXEC') or die('Restricted access');
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
?>
 <!--mdl-3-->
<?php foreach($this->greeting as $row):?>
<?php //if(!count($row->items)) continue;?>
<div class="mdl-cnt">
    <div class="title">
        <h2>
            <?php echo $row->name;?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
    <?php if(count($row->items)):?>
		<?php foreach($row->items as $item):?>
        <!--list box-->
        <div class="list-box2" id="comment<?php echo $item->id;?>">
            <a href="javascript:void(0)" class="link_title"><?php echo $item->title;?></a>
            <a style="float:right;" class="show-hide-q" href="javascript:void(0)" >Hiện/Ẩn Câu trả lời</a>
            <p>
                <?php echo $item->content;?></p>
            <p class="q-answer" style="display:none;margin:5px 0 5px 0px;border:1px dotted #85193C;background:#FFF;padding:5px"> <?php echo $item->answer_content;?></p>
        </div>        
        <!--end list box-->
        <?php endforeach;?>
        <?php else:?>
			<p style="text-align:center">Chưa có câu hỏi nào</p>
        <?php endif;?>
        <center>
            <p>
                <br />
                <br />
                &nbsp;<br />
                &nbsp;</p>
           <?php echo $this->pagination->getPagesLinks(); ?>
        </center>
        <p>
            <br />
            <br />
        </p>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
 <?php endforeach;?>
<!--end-mdl-3-->
<script language='javascript'>
jQuery('document').ready(function(){
	jQuery('a.show-hide-q').click(function(){
		divParent = jQuery(this).parents('div.list-box2');
		answer = divParent.find('p.q-answer');
		isHide = answer.is(':hidden');
		if(isHide)
			answer.slideDown();
		else
			answer.slideUp();
			
	});
});
</script>