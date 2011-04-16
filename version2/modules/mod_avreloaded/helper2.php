<?php

// $Id: helper2.php 695 2008-01-19 17:17:46Z Fritz Elfert $

// Set flag that this is a parent file
define( '_JEXEC', 1 );
define('JPATH_BASE', realpath(dirname(__FILE__)."/../..") );
define( 'DS', DIRECTORY_SEPARATOR );

require_once ( JPATH_BASE .DS.'includes'.DS.'defines.php' );
require_once ( JPATH_BASE .DS.'includes'.DS.'framework.php' );

$mainframe =& JFactory::getApplication('site');
$mainframe->initialise();

jimport('joomla.application.module.helper');

class avrPopupHelper extends JObject {

    var $_module = null;
    var $_param  = null;

    function __construct() {
        JResponse::clearHeaders();
        JResponse::allowCache(false);
        JResponse::setHeader('Content-Type', 'text/html; charset=utf-8');
        $this->_module =& JModuleHelper::getModule('avreloaded');
        if (is_null($this->_module)) {
            $this->_error('mod_avreloaded disabled');
        }
        $this->_param = new JParameter($this->_module->params);
    }

    function _pget($param, $default = null) {
        return $this->_param->get($param, $default);
    }

    function _error($msg = 'unknown error') {
        JResponse::setBody('<html><head></head><body>');
        JResponse::appendBody($msg."<br />\n");
        JResponse::appendBody('</body></html>');
        $this->_close();
    }

    function _close() {
        $app = &JFactory::getApplication();
        echo JResponse::toString($app->getCfg('gzip'));
        exit(0);
    }

    function doRequest() {
        if (JRequest::getMethod() == 'GET') {
            $mpath = '/modules/mod_avreloaded';
            $id = JRequest::getString('id', '');
            if ($id != '') {
                // An ugly workaround for incapabilities of JModuleHelper
                // in getting an instance of a module.
                $instance = null;
                $modules =& JModuleHelper::_load();
                $total = count($modules);
                for ($i = 0; $i < $total; $i++) {
                    if ($modules[$i]->id == $id) {
                        $instance =& $modules[$i];
                        break;
                    }
                }
                if (is_null($instance)) {
                    $this->_error('mod_avreloaded instance "'.$id.'" disabled');
                }
                $this->_module = $instance;
                $this->_param = new JParameter($instance->params);
                $mpath = '/modules/mod_' . $instance->name;
            }
            $a =& JFactory::getApplication('site');
            $d =& JFactory::getDocument();
            JResponse::clearHeaders();
            JResponse::setHeader('Content-Type', 'text/html; charset=utf-8');
            JResponse::setBody("<html><head>\n");
            if (JPluginHelper::importPlugin('content', 'avreloaded')) {
                $code = $this->_pget('mediacode', '');
                $res = null;
                $res = $a->triggerEvent('onAvReloadedGetVideo', array($code));
                // There should be exacty ONE return value in the result, because
                // this is a custom event type!
                if (is_array($res) && (count($res) == 1)) {
                    // Get JS includes, placed into the doc by plg_avreloaded and put them
                    // into the header.
                    foreach ($d->_scripts as $src => $type) {
                        $src = str_replace($mpath, '', $src);
                        JResponse::appendBody('<script type="'.$type.'" src="'.$src.'"></script>'."\n");
                    }
                    JResponse::appendBody('<style type=text/css>'."\n");
                    JResponse::appendBody('body { padding-left:0px; padding-right:0px; padding-top:0px; padding-bottom:0px; margin:0px; width:100%; height:100%; }'."\n");
                    JResponse::appendBody("</style>\n");
                    JResponse::appendBody("</head><body>\n");
                    $code = str_replace($mpath, '', $res[0]);
                } else {
                    JResponse::appendBody('</head><body>Could not load avreloaded plugin');
                }
                JResponse::appendBody($code);
            } else {
                JResponse::appendBody('</head><body>');
            }
            JResponse::appendBody('</body></html>');
            $this->_close();
        }
        $this->_error('invalid request');
    }
}

$o = new avrPopupHelper();
$o->doRequest();
