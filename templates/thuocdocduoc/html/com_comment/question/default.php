<?php
defined('_JEXEC') or die('Restricted access');
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
?>
 <!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
            Câu hỏi chưa trả lời</h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<?php foreach($this->greeting as $row):?>
        <!--list box-->
        <div class="list-box2">
            <a href="javascript:void(0)" class="link_title"><?php echo $row->title;?></a>
            <p>
                <?php echo $row->content;?></p>
        </div>        
        <!--end list box-->
        <?php endforeach;?>
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
<!--end-mdl-3-->
