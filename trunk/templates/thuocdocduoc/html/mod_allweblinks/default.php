<?php
  // no direct access
  defined('_JEXEC') or die('Restricted access');
  
  # Clear the content from other modules
  $cs=0;
  $trow=0;
  $Itemid=1;
  $mod_id = $module->id;
  $relpath = JURI::base(true);

  $days_new = $params->get('Ldaysnew', 3);
  $txt_new = $params->get('Ltxtnew', '*');
  $shownew = $params->get('Lshownew', 0);
  $showhits = $params->get('Lshowhits', 0);
  $shownumlnk = $params->get('Lshownumlnk', 1);
  $showheader = $params->get('Lshowheader', 1);
  $showcdes = $params->get('Lshowcdes', 0);
  $showldes = $params->get('Lshowldes', 0);
  $lengthoftitle = $params->get('Llengthoftitle', 23);
  $dotaddlenght = $params->get('Ldotaddlenght', 20);
  $titlepopup = $params->get('Ltitlepopuptxt', '');
  $lnkicon = $params->get('Licon', '');
  $moduleclass_sfx = $params->get('moduleclass_sfx', '');
  $dropdown = $params->get('Ldropdown', 1);
  $caticons = $params->get('Lcaticons', '');
  $caticonh = $params->get('Lcaticonh', '');
  if ($params->get('Lpopuplinks')==1) {$target="target='_blank'"; } else {$target="";};

  $today = getdate();
  $newitem1 = mktime(0, 0, 0, date("m"), date("d")-$days_new, date("Y"));
  $newitem = date("Y-m-d",$newitem1);

  
  /* body */
  $script = "<script>
  function changeLink(me)
  {
	
  }
  </script>";
  $html=$script;
  $html.= "<select class='linked' name='web-links' onchange=\"if(this.value!='') {window.target='_blank';window.location=this.value;}\">";
$html.="<option value=''>------Liên Kết Website------</option>";
//print_r($list);
  foreach ($list as $row) {

  
  $title=$row->title;

  if(strlen($row->title) > $lengthoftitle)
  {
    $row->title = substr($row->title,0,$dotaddlenght);
    $row->title .= "...";
  }
  
  
  

    /* start link list, insert link and icon */
    $URL=JRoute::_("index.php?option=com_weblinks&view=weblink&catid=".$row->catslug."&id=".$row->slug);    
	$html.="<option value='$URL'>$title</option>";
  }
$html.="</select>"; 
echo $html;
//  $content="";

  
?>
 

