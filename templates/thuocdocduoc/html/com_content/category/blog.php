<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$cat = &$this->category;
if($cat->id == 15):
function getFilter($option)
{
	$db = &JFactory::getDBO();
	$db->setQuery("SELECT title,alias FROM #__categories WHERE section='$option' ORDER BY title");
	$results = $db->loadObjectList();
	return $results;
}
	$viewby=JRequest::getVar('viewby',array(),'default','array');	
	$dcomFilter=array();
	$dcomFilter[] ='com_filter_alpha';
	$dcomFilter[] ='com_filter_t_nhomdieutri';
	$dcomFilter[] ='com_filter_t_dangbaoche';
	$xemTheo=array();
	foreach($dcomFilter as $dc)
	{
			$xemTheo[$dc]=getFilter($dc);
	}				
	$this->assign('xemtheo',$xemTheo);
endif;
global $mainframe;
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();

//inlcude class
require_once dirname(__FILE__).DS.'helper'.DS.'category.php';
$mCategory = new ContentModelCategoryHelper();
$mCategory->setId($cat->id);
JRequest::setVar("limit",10);
$limitstart	= JRequest::getVar('limitstart', 0, '', 'int');
$limit	= JRequest::getVar('limit', 0, '', 'int');
$items = &$mCategory->getData();
$total = &$mCategory->getTotal();
$sectionid = $items[0]->sectionid;
//echo "xxxxx";die;
$pagination = new JPagination($total,$limitstart,$limit);
?>
<!--mdl-3-->
<form id="frm-sort" action ="<?php echo JRequest::getURI();?>" method='GET'>
<div class="mdl-cnt">
    <div class="title">
    	<?php if($cat->id == 15):?>
          <div class="fl-right">       
            <label>
                Xem theo:</label>
            <select name="viewby[alpha]" onchange='this.form.submit()' style="width:70px">
				<option value="">Alpha Be</option>
                <?php foreach($this->xemtheo['com_filter_alpha'] as &$xt):?>
					<option value="<?php echo base64_encode($xt->title);?>" <?php echo @$viewby['alpha']==base64_encode($xt->title)? "selected":"";?>><?php echo ucfirst($xt->title);?></option>
                <?php endforeach;?>
            </select>
            &nbsp;&nbsp;&nbsp;
            <select name="viewby[t_dbc]" onchange='this.form.submit()' style="width:90px">
				<option value="">Dạng bào chế</option>
                <?php foreach($this->xemtheo['com_filter_t_dangbaoche'] as &$xt):?>
					<option value="<?php echo base64_encode($xt->title);?>" <?php echo @$viewby['t_dbc']==base64_encode($xt->title)? "selected":"";?>><?php echo ucfirst($xt->title);?></option>
                <?php endforeach;?>
            </select>
            &nbsp;&nbsp;&nbsp;
            <select name="viewby[t_ndt]" onchange='this.form.submit()' style="width:90px">
				<option value="">Nhóm điều trị</option>
                <?php foreach($this->xemtheo['com_filter_t_nhomdieutri'] as &$xt):?>
					<option value="<?php echo base64_encode($xt->title);?>" <?php echo @$viewby['t_ndt']==base64_encode($xt->title)? "selected":"";?>><?php echo ucfirst($xt->title);?></option>
                <?php endforeach;?>
            </select>
        <input type="hidden" name="option" value="<?php echo JRequest::getVar('option','');?>"/>
        <input type="hidden" name="view" value="<?php echo JRequest::getVar('view','');?>"/>
        <?php if(JRequest::getVar('layout','')!=''):?>
        <input type="hidden" name="layout" value="<?php echo JRequest::getVar('layout','');?>"/>
        <?php endif;?>
        <input type="hidden" name="filter" value="<?php echo JRequest::getVar('filter','');?>"/>
        <input type="hidden" name="Itemid" value="<?php echo JRequest::getVar('Itemid','');?>"/>
        <input type="hidden" name="id" value="<?php echo JRequest::getVar('id','');?>"/>        
   </div>
	<?php endif;?>
        <h2 style='min-width:50px'>
            <?php echo $cat->title;?></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<!--list box-->
		<?php if(count($items)):?>				
		<?php foreach ($items as $item) : ?>
		
			<?php
			$item->text = $item->introtext;
			
			// Get the page/component configuration and article parameters
			$item->params = clone($this->params);
			$aparams = new JParameter($item->attribs);
			
			//// Merge article parameters into the page configuration
			$item->params->merge($aparams);
			
			// Process the content preparation plugins
			//echo $item->text;
			$results = $dispatcher->trigger('onPrepareContent', array (& $item, & $item->params, 0));
			$plg_matches=array();
			$have_images = preg_match_all("|<[\s\v]*img[\s\v][^>]*>|Ui", $item->text, $plg_matches, PREG_PATTERN_ORDER) > 0;
			if($have_images)
			{
				$item->imgTag= $plg_matches[0][0];
				preg_match_all("/src=\"(.+?)\"/i", $item->imgTag, $m);
				$item->imgLink= $m[1][0];
			}
			?>
			<div class="list-box2">
				<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>">
					<?php if(!empty($item->imgLink)):?>	
									
					<img src="<?php echo $item->imgLink;?>" alt="Loading" class="<?php echo $sectionid==5? "img3":"img2";?>" />
					<?php endif;?>
					</a> <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));?>" class="link_title">
						<?php echo $item->title;?></a>
				<p>		
                <?php 
								if(strtolower($cat->title)=='thuốc')
								{
							?>
                            <table width="380px">
                            	<?php
                                	if($aparams->get('t_dbc') !='')
									{
								?>
                            	<tr>
                                	<td width="131">Dạng bào chế:</td>
                                  <td width="237"><?php echo $aparams->get('t_dbc');?></td>
                              </tr>
                              <?php }?>
                              <?php if($aparams->get('t_qcdg') !=''){?>
                              <tr>
                                	<td>Quy cách đóng gói:</td>
                                    <td><?php echo $aparams->get('t_qcdg');?></td>
                              </tr>
                              <?php } ?>
                              <?php if($aparams->get('t_nxs')) { ?>
                              <tr>
                                	<td>Nhà sản xuất:</td>
                                    <td><?php echo $aparams->get('t_nxs');?></td>
                              </tr>
                              <?php }?>
                              <?php if($aparams->get('t_sdk')) {?>
                                <tr>
                                	<td>Số đăng ký:</td>
                                    <td><?php echo $aparams->get('t_sdk');?></td>
                                </tr>
                               <?php }?> 
                            </table>
                           <?php
                           }
						   ?>			
					<?php  echo  strip_tags($item->introtext,"<p><a><br><br/>");?>
					</p>
			</div>
		<?php endforeach;?>        
		<?php else:?>
			<center><p>Chưa có bài viết nào</p></center>
		<?php endif;?>
        <!--end list box-->
        <center>
            <p>
                <br />
                <br />
                &nbsp;<br />
                &nbsp;</p>
            <?php echo $pagination->getPagesLinks();?>
            <?php if(isset($_GET['day'])&&isset($_GET['month'])&&isset($_GET['year'])):?>
    <?php require_once dirname(__FILE__).DS.'helper'.DS.'viewdate.php';?>
    <?php echo JviewbyDate::HTMLrender(JRequest::getInt('id'));?>
    <?php endif;?>
        </center>
        
    </div>    
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->

</form>