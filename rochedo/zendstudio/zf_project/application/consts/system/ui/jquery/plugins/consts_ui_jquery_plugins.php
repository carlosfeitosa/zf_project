<?php
/**
 * Arquivo para definição de contantes de configuracao de plugins da UI JQUERY.
 * 
 * Este arquivo contem as constantes para configuracao dos plugins da UI JQUERY
 * 
 * @package core
 * 
 * @author Joao Vascocnelos (joao.vasconcelos@rochedoframework.com)
 * @since 08/11/2012
 */

// DEFINICAO DE CONSTANTES QUE REPRESENTAM PLUGINS JQUERY
define("JQUERY_FORM_PLUGIN_UNIFORM", "UNIFORM");
define("JQUERY_FORM_PLUGIN_IDEALFORM", "IDEALFORM");

// constante que define o plugin default de FORMULARIOS da UI JQuery
define("UI_JQUERY_PLUGIN_FORM_DEFAULT", JQUERY_FORM_PLUGIN_IDEALFORM);

// constantes de configuracao do plugin UNIFORM
define("UI_JQUERY_PLUGIN_UNIFORM_JAVASCRIPT_FILE_PATH", "/js/library/plugins/jquery/uniform/js/jquery.uniform.js");
define("UI_JQUERY_PLUGIN_UNIFORM_CSS_FILE_PATH", "/js/library/plugins/jquery/uniform/css/uniform.default.css");

// constantes de configuracao do plugin IDEALFORM
define("UI_JQUERY_PLUGIN_IDEALFORM_JAVASCRIPT_FILE_PATH", "/js/library/plugins/jquery/idealform/js/jquery.idealforms.min.js");
define("UI_JQUERY_PLUGIN_IDEALFORM_CSS_FILE_PATH", "/js/library/plugins/jquery/idealform/css/jquery.idealforms.min.css");