<?php
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
 ?>
<div id="moduel_video">
    <div id="moduel_video_title">
        <div id="moduel_video_title_video">
            <a>VIDEO</a></div>
        <div id="moduel_video_title_audio">
            <a>AUDIO</a></div>
    </div>
    <div id="moduel_video_content">
        <div id="moduel_video_content">
            <div id="moduel_video_content_video">
                <img src="<?php echo $templateUrl;?>/images/pic5.jpg" />
            </div>
            <div class="clear">
            </div>
            <fieldset>
                <a>Mã nhúng</a>
                <input name="" type="text" style="border: solid 1px #7f9db9; width: 246px; height: 19px"
                    value="http://c-quence.deviantart.com/gallery/#/d21mgaf" />
            </fieldset>
            <div class="clear">
            </div>
            <ul>
                <li>
                    <input type="image" src="<?php echo $templateUrl;?>/images/bt_xem.jpg" />
                    <a>em muon song ben anh tron doi</a> </li>
                <li>
                    <input type="image" src="<?php echo $templateUrl;?>/images/bt_nghe.jpg" />
                    <a>em muon song ben anh tron doi</a> </li>
                <li>
                    <input type="image" src="<?php echo $templateUrl;?>/images/bt_xem.jpg" />
                    <a>em muon song ben anh tron doi</a> </li>
            </ul>
            <div class="clear">
            </div>
            <div class="yahoo">
                <a href="#?page=2">&lt; </a><span class="current">1</span><a href="#?page=2">2</a><a
                    href="#?page=3">3</a>...<a href="#?page=199">199</a><a href="#?page=200">200</a><a
                        href="#?page=2"> &gt; </a>
            </div>
        </div>
    </div>
</div>