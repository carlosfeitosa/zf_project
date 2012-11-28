<?php
/**
 * Arquivo para definição de contantes de configuracao da UI JQUERY.
 * 
 * Este arquivo contem as constantes para utilização da UI JQUERY
 * 
 * @package core
 * 
 * @author Joao Vascocnelos (joao.vasconcelos@rochedoframework.com)
 * @since 08/11/2012
 */

// incluindo arquivo de constantes de configuracao dos plugins JQUERY 
require_once "plugins/consts_ui_jquery_plugins.php";

// constante que representa a UI JQuery no sistema
define("UI_JQUERY", "JQUERY");

// definicao de constantes de paths dos arquivos JS relacionados a UI JQUERY
define("UI_JQUERY_JAVASCRIPT_FILE_PATH", "/js/library/jquery/jquery-1.7.2.min.js");
define("UI_JQUERY_UI_CUSTOM_JAVASCRIPT_FILE_PATH", "/js/library/jquery/ui/jquery-ui-1.8.16.custom.min.js");
define("UI_JQUERY_DATETIMEPICKER_ADDON_JAVASCRIPT_FILE_PATH", "/js/library/jquery/ui/jquery.ui.datepicker.addon.js");
define("UI_JQUERY_SLIDER_ACCESS_JAVASCRIPT_FILE_PATH", "/js/library/jquery/ui/jquery.ui.sliderAccess.js");

// definições de css
define("UI_JQUERY_UI_CSS_FILE_PATH", "/js/library/jquery/ui/jquery-ui-1.8.18.custom.css");
define("UI_JQUERY_DATETIMEPICKER_ADDON_CSS_FILE_PATH", "/js/library/jquery/ui/jquery.ui.datepicker.addon.css");