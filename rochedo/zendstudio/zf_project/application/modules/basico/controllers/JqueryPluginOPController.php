<?php
/**
 * Controlador de Plugins do JQuery
 * 
 * Controlador responsavel pelos plugins JQuery do sistema
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 08/11/2012
 */

class Basico_OPController_JqueryPluginOPController
{
	/**
	 * Costante que define o plugins default para formularios da UI JQUERY
	 * 
	 * @var String
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	const DEFAULT_FORM_PLUGIN = UI_JQUERY_PLUGIN_FORM_DEFAULT;
	
	/**
	 * Definicao de constantes dos plugins de FORMULARIOS disponiveis
	 * 
	 * @var String
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	const PLUGIN_UNIFORM   = UI_JQUERY_FORM_PLUGIN_UNIFORM;
	const PLUGIN_IDEALFORM = UI_JQUERY_FORM_PLUGIN_IDEALFORM;
	
	/**
	 * Constantes de configuracao do plugin JQuery UNIFORM
	 * 
	 * @var String
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	const JQUERY_PLUGIN_UNIFORM_JAVASCRIPT_PATH = UI_JQUERY_PLUGIN_UNIFORM_JAVASCRIPT_FILE_PATH;
	const JQUERY_PLUGIN_UNIFORM_CSS_PATH        = UI_JQUERY_PLUGIN_UNIFORM_CSS_FILE_PATH;
	
	/**
	 * Constantes de configuracao do plugin JQuery IDEALFORM
	 * 
	 * @var String
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	const JQUERY_PLUGIN_IDEALFORM_JAVASCRIPT_PATH = UI_JQUERY_PLUGIN_IDEALFORM_JAVASCRIPT_FILE_PATH;
	const JQUERY_PLUGIN_IDEALFORM_CSS_PATH        = UI_JQUERY_PLUGIN_IDEALFORM_CSS_FILE_PATH;
	
	
}