<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<div class="mdl-cnt">
<div class="componentheading">
	<div class="title">
		<h2><?php echo $this->escape($this->message->title) ; ?></h2>
        <img src="templates/thuocdocduoc/images/news&event_107.png" />
    </div>
</div>
<div class="cnt">
    <div class="message" style="padding-left:5px; line-height:18px;">
        <?php echo $this->escape($this->message->text) ; ?>
    </div>
</div>
<img class="img-rounded" src="templates/thuocdocduoc/images/news&event_73.png" />
</div>