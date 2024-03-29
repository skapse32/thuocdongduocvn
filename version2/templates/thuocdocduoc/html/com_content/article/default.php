﻿<?php // no direct access
defined('_JEXEC') or die('Restricted access');
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$menus = &JSite::getMenu();
$menu  = $menus->getActive();
?>
<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2 style='min-width:50px;'>
			<?php if ($this->params->get('link_category')) : ?>
				<?php 
					switch($this->article->sectionid){
						case 2:
						case 3:
							echo '<a style="color:#85193C" href="'.JRoute::_(ContentHelperRoute::getSectionRoute($this->article->sectionid)).'">'; 
						break;
						default:
							echo '<a style="color:#85193C" href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->article->catslug, $this->article->sectionid)).'">'; 
						break;
					}
					
					?>
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
            <h1 >
               <?php echo $this->escape($this->article->title); ?></h1>
               <?php 
			   	if($this->params->get('t_dbc')!=''):
					echo "<strong>"."Dạng bào chế: "."</strong>".$this->params->get('t_dbc').'<br>';
				endif;
               ?>
             
               <?php 
			   	if($this->params->get('t_qcdg')!=''):
					echo "<strong>"."Quy cách đóng gói: "."</strong>".$this->params->get('t_qcdg').'<br>';
				endif;
               ?>
               
               <?php 
			   	if($this->params->get('t_nxs')!=''):
					echo "<strong>"."Nhà sản xuất: "."</strong>".$this->params->get('t_nxs').'<br>';
				endif;
               ?>
               
               <?php 
			   	if($this->params->get('t_sdk')!=''):
					echo "<strong>"."Số đăng ký: "."</strong>".$this->params->get('t_sdk');
				endif;
               ?> 
               <br />                       
				<?php  if (!$this->params->get('show_intro')) :
					echo $this->article->event->afterDisplayTitle;
				endif; ?>
				<?php echo $this->article->event->beforeDisplayContent; ?>
				<?php echo $this->article->introtext; ?>
				<br/><br/>
            <?php echo $this->article->text; ?>   
            <div id="cc"         ></div>
            <?php echo $this->article->event->afterDisplayContent; ?>
          <!--  <p class="link-back">
                <a href="javascript:history.go(-1)" class="color5">&laquo; Back</a></p>
            <br />-->            
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