<?php
/**
 * Arquivo de configuração do sistema
 * 
 * Este arquivo contem as configurações do sistema
 * 
 * @package core
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 04/05/2012
 */

// definições da aplicação
define("APPLICATION_NAME", "Rochedo Project");
define("APPLICATION_VERSION", "1.0");
define("APPLICATION_TITLE", "ROCHEDO software");
define("APPLICATION_CVC_USER_RESOLVE_CONFLICT", true);

// definições do rascunho
define("APPLICATION_FORM_DRAFT", true);

// definições do pool de SQL
define("APPLICATION_ENABLE_POOL_SQL", true);

// definições do log
$logSequence = date('Ym');
define("LOG_PATH", APPLICATION_PATH . "/logs/");
define("LOG_FILENAME_PREFIX", "error_log_");
define("LOG_FILENAME_SULFIX", ".log");
define("LOG_FILENAME", LOG_FILENAME_PREFIX . $logSequence . LOG_FILENAME_SULFIX);
define("LOG_FULL_FILENAME", LOG_PATH . LOG_FILENAME);

// definições do .htaccess
define("HTACCESS_FULLFILENAME", PUBLIC_PATH . "/.htaccess");

// definições de módulos
define("APPLICATION_MODULES_PATH", APPLICATION_PATH . "/modules");

// definições do e-mail de suporte
define("SUPPORT_EMAIL", "agil@facepe.br");

// definições de configuração de e-mail
define("SMTP_SERVER_AUTH_METHOD", "login");
define("SMTP_SERVER_HOST", "smtp.rochedoframework.com");
define("SMTP_SERVER_PORT", 587);
define("SMTP_USERNAME", "nao.responda@rochedoframework.com");
define("SMTP_PASSWORD", "nao#respond@");

// definições do captcha
define("CAPTCHA_IMAGE_DIR", "/images/captcha/");
define("CAPTCHA_IMAGE_URL", "/images/captcha/");
define("CAPTCHA_FONT_PATH", "/fonts/typewcond_bold.otf");

// definições do DOJO
define("DOJO_LOCAL_PATH", "/js/dojo/dojo.js");
define("DOJO_STYLE_SHEET_PATH", "/js/dijit/themes/rochedo/rochedo.css");
define("DOJO_STYLE_SHEET_MODULE", "dijit.themes.rochedo");

// definições de javascripts
define("DEFAULT_JAVASCRIPT_FILE_PATH", "/js/default_scripts.js");
define("DEFAULT_JAVASCRIPT_MASKS_FILE_PATH", "/js/default_masks_scripts.js");
define("DEFAULT_JAVASCRIPT_MASKS_JQUERY_FILE_PATH", "/js/plugins/maskMoney/jquery.maskMoney.js");
define("DEFAULT_JAVASCRIPT_JQUERY_RASCUNHO", "/js/rascunho.js");
define("JQGRID_JAVASCRIPT_FILE_PATH", "/js/plugins/jquery/jqGrid/js/jquery.jqGrid.min.js");
define("JQGRID_JAVASCRIPT_LANGUAGE_FILE_PATH", "/js/plugins/jquery/jqGrid/js/i18n/grid.locale-pt-br.js");
define("JQGRID_JAVASCRIPT_DEBUG_FILE_PATH", "/js/plugins/jquery/jqGrid/js/grid.loader.js");
define("JQGRID_ROCHEDO_CUSTOM_JAVASCRIPT_FILE_PATH", "/js/plugins/jquery/jqGrid/js/rochedo.custom.jqgrid.js");

// definições de css
define("JQGRID_CSS_FILE_PATH", "/js/plugins/jquery/jqGrid/css/ui.jqgrid.css");
define("JQUERY_UI_CSS_FILE_PATH", "/js/jquery/ui/jquery-ui-1.8.18.custom.css");

// definições de sugestão de login
define("NUMERO_SUGESTOES_LOGIN_TOTAL", 6);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_LOGIN", 2);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_NOME", 2);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_EMAIL", 2);