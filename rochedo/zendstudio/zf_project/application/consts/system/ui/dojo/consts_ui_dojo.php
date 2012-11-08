<?php
/**
 * Arquivo para definição de contantes de configuracao da UI DOJO.
 * 
 * Este arquivo contem as constantes para utilização da UI DOJO
 * 
 * @package core
 * 
 * @author Joao Vascocnelos (joao.vasconcelos@rochedoframework.com)
 * @since 08/11/2012
 */

// incluindo arquivo de constantes de configuracao dos plugins JQUERY 
require_once "plugins/consts_ui_dojo_plugins.php";

// constante que representa a UI DOJO no sistema
define("UI_DOJO", "DOJO");

// CONSTANTES DE DEFINICAO DE DOJOTYPES
DEFINE("UI_DOJO_DOJOTYPE_VALIDATION_TEXT_BOX", "dijit.form.ValidationTextBox");
DEFINE("UI_DOJO_DOJOTYPE_BUTTON", "dijit.form.Button");
DEFINE("UI_DOJO_DOJOTYPE_SIMPLE_TEXTAREA", "dijit.form.SimpleTextarea");
DEFINE("UI_DOJO_DOJOTYPE_RADIO_BUTTON", "dijit.form.RadioButton");
DEFINE("UI_DOJO_DOJOTYPE_FILTERING_SELECT", "dijit.form.FilteringSelect");
DEFINE("UI_DOJO_DOJOTYPE_CHECK_BOX", "dijit.form.CheckBox");
