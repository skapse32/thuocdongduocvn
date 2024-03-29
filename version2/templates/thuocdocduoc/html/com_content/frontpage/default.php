<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
$dispatcher	=& JDispatcher::getInstance();
$sectionIds ="1,2,3,4,5";
$sectionIds=explode(',',$sectionIds);
global $mainframe;
$templateUrl = JURI::root()."templates/".$mainframe->getTemplate();
// get all sections
//C:\Working\thuocdongduoc.vn\components\com_content\models\section.php
//require_once JPATH_ROOT.DS.'components'.DS.'com_content'.DS.'models'.DS.'frontpage.php';
require_once dirname(__FILE__).DS.'helper'.DS.'section.php';
require_once JPATH_ROOT.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php';
$mSection = new ContentModelSectionFrontPageHelper();
$sections =array();
foreach($sectionIds as $secId)// get Articles in sections
{
	if($secId)
	{
		//
		$mSection->setId($secId);		
		$sections[$secId]= $mSection->getSection();// get section Info
		$mSection->setState('limit',3);// limit articles can be show in a section
		$sections[$secId]->articles = $mSection->getData();// get articles in the section
		foreach($sections[$secId]->articles as &$artcleTemp)
		{
			$artcleTemp->created_formated = new JDate($artcleTemp->created);
			$artcleTemp->created_formated->setOffset($mainframe->getCfg('offset'));
			$artcleTemp->created_formated= $artcleTemp->created_formated->toFormat('%d/%m/%Y');
			
			$artcleTemp->text = $artcleTemp->introtext;
			
			// Get the page/component configuration and article parameters
			$artcleTemp->params = clone($this->params);
			$aparams = new JParameter($artcleTemp->attribs);
			
			// Merge article parameters into the page configuration
			$artcleTemp->params->merge($aparams);
			
			// Process the content preparation plugins
			JPluginHelper::importPlugin('content');
			$results = $dispatcher->trigger('onPrepareContent', array (& $artcleTemp, & $artcleTemp->params, 0));
			$plg_matches=array();
			$have_images = preg_match_all("|<[\s\v]*img[\s\v][^>]*>|Ui", $artcleTemp->text, $plg_matches, PREG_PATTERN_ORDER) > 0;
			if($have_images)
			{
				$artcleTemp->imgTag= $plg_matches[0][0];
				preg_match_all("/src=\"(.+?)\"/i", $artcleTemp->imgTag, $m);
				$artcleTemp->imgLink= $m[1][0];
			}
		}
	}
}


?>
 <?php foreach( $sections as $section):?>
 <?php
	$defaultSectionLink =JRoute::_(ContentHelperRoute::getSectionRoute($section->id));
	switch((int)$section->id)
	{
		case 2:
				$defaultSectionLink=JRoute::_("index.php?option=com_content&view=section&layout=caythuocvithuoc&id=".$section->id."&Itemid=4");
				$filter='';
			$item = &$section->articles[0];
			$item->params = new JParameter($item->attribs);
			$showTitles =array('tvn','tkh','thv','htvvn','htvkh');
			//unset($art);
			$art= array();
			if(in_array($filter,$showTitles))
				if(strtolower($filter)=='htvvn'||strtolower($filter)=='htvkh')
				{
					$title="Họ ". $item->params->get($filter,'');
				}elseif(strtolower($filter)=='' || strtolower($filter)=='tvn')
				{
					$title=$item->title;
				}
				else
				{
					$title=$item->params->get(strtolower($filter),'');
				}	
			
			for($i=0;$i<count($showTitles);$i++)
			{
				if($showTitles[$i]!=$filter)
				{
					$tmp=$item->params->get($showTitles[$i],'');
					switch(strtolower($showTitles[$i]))
					{
						case "tkh":	//ten khoa hoc	
							if(!empty($tmp))
								$art[]="Tên khoa học: ".	$item->params->get($showTitles[$i],'');
							break;
						case "thv"://ten han viet
							if(!empty($tmp))
								$art[]="Tên hán việt: ".	$item->params->get($showTitles[$i],'');
							break;
						case "htvvn":// ho thuc vat viet nam
							if(!empty($tmp))
								$art[]="Họ thực vật Việt Nam: ".	$item->params->get($showTitles[$i],'');
							break;
						case "htvkh":// ho thuc vat khoa hoc
							if(!empty($tmp))
								$art[]="Họ thực vật khoa học: ".	$item->params->get($showTitles[$i],'');
							break;				
						case "tvn":
							if(!empty($tmp))
								$art[]="Tên Việt Nam: ".	$item->title;
							break;
						default:
							break;
					}
				}		
			}
			if(!empty($title))
				$item->title=$title;
			if(strpos(' '.$art[0],$item->title))
				unset($art[0]);
			$item->introtext=implode('<br/>',$art);
		break;
		case 4:
			$item = &$section->articles[0];
			$param = $item->params = new JParameter($item->attribs);

			if($param->get('t_dbc') != '')
			{
				
				$par[] = "Dạng bào chế:".$param->get('t_dbc');
			}
			if($param->get('t_qcdg') !='')
			{
				
				$par[] = "Quy cách đóng gói:".$param->get('t_qcdg');
			}
			if($param->get('t_nsx')!='')
			{
				
				$par[] = "Nhà sản xuất:".$param->get('t_nsx');
			}
			if($param->get('t_sdk')!='')
			{
				
				$par[] = "Số đăng ký:".$param->get('t_sdk');
			}
			//$display .="</table>";
			if(strpos(' '.$par[0],$item->title))
				unset($par[0]);
			$item->introtext=implode('<br/>',$par);
		break;
		case 5:				
			$defaultSectionLink=JRoute::_("index.php?option=com_content&view=section&layout=thuvien&id=".$section->id."&Itemid=7");
		break;
	}
 ?>
 <!--mdl-3--> 
<div class="mdl-cnt">
    <div class="title">
        <div class="fl-right">
            <a  href="<?php echo $defaultSectionLink ;?>" class="view-all-2">Xem tất cả</a>
        </div>
        <h2>
			<a href="<?php echo $defaultSectionLink;?>">
            <?php echo $section->title;?></a></h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<? if(count($section->articles)):?><!--Hiển thị các bài viết trong section-->
        <!--list box-->
        <?php $firstArticle = $section->articles[0];?>
        <div class="list-box1">
            <?php if(!empty($firstArticle->imgTag)):?>			
            <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($firstArticle->slug, $firstArticle->catslug, $firstArticle->sectionid));//.($firstArticle->sectionid==2?"&Itemid=4":""); ?>">
			<img src="<?php echo $firstArticle->imgLink;?>" class="img" <?php echo $firstArticle->sectionid==5? "style='width:128px;height:155px'":"";?> />
			</a>
			<?php else:?>
            <!--<img src="<?php echo $templateUrl;?>/images/news&event_58.png" class="img" />-->
            <?php endif;?>
            <h4>
				<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($firstArticle->slug, $firstArticle->catslug, $firstArticle->sectionid));//.($firstArticle->sectionid==2?"&Itemid=4":"");?>">
                <?php echo $firstArticle->title;?></a></h4>
            <p>
                <?php echo strip_tags($firstArticle->introtext,'<p><br><a><br/>');?>
               
                <?php// echo $firstArticle->introtext;?>
                </p>
            <?php if($firstArticle->readmore>0):?>
            <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($firstArticle->slug, $firstArticle->catslug, $firstArticle->sectionid));//.($firstArticle->sectionid==2?"&Itemid=4":"");?>">Xem chi tiết</a>
            <?php endif;?>
        </div>
        <!--end list box-->
        <!--list news-->
        <ul class="list2">
			<?php for($i=1;$i<3&&$i<count($section->articles);$i++):?>
            <li><a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($section->articles[$i]->slug, $section->articles[$i]->catslug, $section->articles[$i]->sectionid));//.($firstArticle->sectionid==2?"&Itemid=4":"");?>">
				<?php echo $section->articles[$i]->title;?></a><span class="datepub">(<?php echo $section->articles[$i]->created_formated;?>)</span></li>
            <?php endfor;?>            
        </ul>
        <!--end list news-->
        <?php else:?><!-- Thông báo không có bài viết nào trong Section này-->
        <div class="list-box1">
			<h4>Chưa có bài viết nào trong mục này.</h4>
		</div>
        <?php endif;?>
        
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<!--end-mdl-3-->
<?php endforeach;?>
<!--mdl-3-->
