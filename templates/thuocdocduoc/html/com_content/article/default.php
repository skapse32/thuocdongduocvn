<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$menus = &JSite::getMenu();
$menu  = $menus->getActive();
?>
<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
			<?php if ($this->params->get('link_category')) : ?>
				<?php echo '<a style="color:#85193C" href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->article->catslug, $this->article->sectionid)).'">'; ?>
			<?php endif; ?>
            <?php echo $this->escape($this->article->category); ?>
            <?php if ($this->params->get('link_category')) : ?>
				<?php echo '</a>'; ?>
			<?php endif; ?>
            </h2>
        <img src="<?php echo $templateUrl;?>/images/news&amp;event_107.png" />
    </div>
    <div class="cnt">
        <!--list box-->
        <div class="detail">
<!--            <img src="<?php echo $templateUrl;?>/images/news&amp;event_116.png" class="img4" />-->
            <h1>
               <?php echo $this->escape($this->article->title); ?></h1>
				<?php  if (!$this->params->get('show_intro')) :
					echo $this->article->event->afterDisplayTitle;
				endif; ?>
				<?php echo $this->article->event->beforeDisplayContent; ?>
				<?php echo $this->article->introtext; ?>
				<br/><br/>
            <?php echo $this->article->text; ?>
            <p class="link-back">
                <a href="javascript:history.go(-1)" class="color5">&laquo; Back</a></p>
            <br />
            <!--list news-->
            <div id="related-items">
				<!---Auto load content from module related-items using jQuery-->
            </div>
            
            <!--end list news-->
        </div>
        <!--end list box-->
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&amp;event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->