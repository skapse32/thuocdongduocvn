<?php
/**
 * $Id: default.php 11917 2009-05-29 19:37:05Z ian $
 */
defined( '_JEXEC' ) or die( 'Restricted access' );

$cparams = JComponentHelper::getParams ('com_media');
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
?>
  <!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
            <?php echo $this->escape($this->contact->name); ?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<?php echo $this->loadTemplate('form');?>
        <p>
            <br />
            <br />
        </p>
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->
