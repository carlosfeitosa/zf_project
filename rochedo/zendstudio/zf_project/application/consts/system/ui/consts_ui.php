<?php
/**
 * Arquivo para definição de contantes de configuracao das UIs do sistema
 * 
 * Este arquivo contem as constantes para utilização das UIs
 * 
 * @package Core
 * 
 * @author Joao Vascocnelos (joao.vasconcelos@rochedoframework.com)
 * @since 08/11/2012
 */

// incluindo constantes das UIs disponiveis
require_once "dojo/consts_ui_dojo.php";
require_once "jquery/consts_ui_jquery.php";

// constante que define a UI default do sistema
define("DEFAULT_SYSTEM_UI", UI_DOJO);

