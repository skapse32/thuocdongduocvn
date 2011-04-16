<?php
class modAvReloadedHelper {
    /**
     * Retrieves the actual video
     *
     * @param array $params An object containing the module parameters
     * @return The code for embedding the video
     * @access public
     */
    function getVideo($params, $mod) {
        $code = '';
        $res = null;
        static $cnt = 0;
        $app = &JFactory::getApplication();
        if (JPluginHelper::importPlugin('content', 'avreloaded')) {
            if ($params->get('popup', 0)) {
                $plcode = preg_replace('#\s+#', ' ', $params->get('mediacode', ''));
                $res = $app->triggerEvent('onAvReloadedGetVideo', array($plcode));
                // There should be exacty ONE return value in the result, because
                // this is a custom event type!
                if (is_array($res) && (count($res) == 1)) {
                    $w = $params->get('pwidth', 320);
                    $h = $params->get('pheight', 240);
                    $url = JURI::root() . '/modules/mod_avreloaded/helper2.php?id=' . $mod->id;
                    $code = '<script type="text/javascript">';
                    $code .= "\nvar avrPopupWin".$cnt." = null;\nfunction avrOpenPopup".$cnt."() {\n";
                    $code .= "  if ((avrPopupWin".$cnt." == null) || (avrPopupWin".$cnt.".closed == true)) {\n";
                    $code .= "    avrPopupWin".$cnt." = window.open('".$url."','avrpopup".$cnt."','status=no,toolbar=no,";
                    $code .= "scrollbars=no,titlebar=no,menubar=no,resizable=no,";
                    $code .= "width=".$w.",height=".$h.",directories=no,location=no');\n";
                    $code .= "  }\n  avrPopupWin".$cnt.".focus();\n  return false;\n";
                    $code .= "}\n</script>\n";
                    $linktxt = $params->get('linktxt', '');
                    if ($linktxt != '') {
                        $code .= $params->get('header_text', '') .
                            '<a href="#" onclick="return avrOpenPopup'.$cnt.'()">' .  $linktxt . '</a>' .
                            $params->get('footer_text', '');
                    } else {
                        $code .= $params->get('header_text', '') .
                            $params->get('footer_text', '');
                    }
                    $cnt++;
                }
            } else {
                $code = $params->get('header_text', '') .
                    preg_replace('#\s+#', ' ', $params->get('mediacode', '')) .
                    $params->get('footer_text', '');
                $res = $app->triggerEvent('onAvReloadedGetVideo', array($code));
                // There should be exacty ONE return value in the result, because
                // this is a custom event type!
                if (is_array($res) && (count($res) == 1)) {
                    $code = $res[0];
                }
            }
        }
        
        return $code;
    }
}
