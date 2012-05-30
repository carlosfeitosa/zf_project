<?php
/**
 * Arquivo para definiçãoo de constantes de configuração do sistema.
 */

/**
 * Requires
 */
require_once APPLICATION_PATH . "/consts/consts.php";

/*
 * APPLICATION
 */
define("APPLICATION_NAME", "Rochedo Project");
define("APPLICATION_VERSION", "1.0");
define("APPLICATION_TITLE", "ROCHEDO software");
define("APPLICATION_CVC_USER_RESOLVE_CONFLICT", true);
define("APPLICATION_INVALID_REQUEST_TOKEN_REDIRECT_TO_INDEX", true);
define("APPLICATION_DATABASE_MAKE_CHECKSUM", true);
define("APPLICATION_DATABASE_CHECK_CHECKSUM", true);
define("APPLICATION_DATABASE_RESET_MAKE_SYSTEM_CHECKSUM", true);
define("APPLICATION_DATABASE_MAKE_SYSTEM_CHECKSUM_MAXTIME_SECONDS", 1200);
define("APPLICATION_ADMIN_MEMORY_SIZE", "512M");
define("APPLICATION_DICIONARIO_DADOS_MEMORY_SIZE", "256M");
define("APPLICATION_CRYPT_SALT", "$6$");
define("APPLICATION_FORM_DRAFT", true);
define("APPLICATION_ENABLE_POOL_SQL", true);

/*
 * SEGURANCA
 */
define("TEMPO_EXPIRACAO_SESSAO_SEGUNDOS", 600);
define("QUANTIDADE_TENTATIVAS_FALHAS_MINIMA_ENVIO_MENSAGEM_ALERTA", 3);

/*
 * LOG PATHS & FILENAMES
 */
$logSequence = date('Ym');
define("LOG_PATH", APPLICATION_PATH . "/logs/");
define("LOG_FILENAME_PREFIX", "error_log_");
define("LOG_FILENAME_SULFIX", ".log");
define("LOG_FILENAME", LOG_FILENAME_PREFIX . $logSequence . LOG_FILENAME_SULFIX);
define("LOG_FULL_FILENAME", LOG_PATH . LOG_FILENAME);

/*
 * MODULO BASICO PATHS & FILENAMES
 */
define("BASICO_VIEW_SCRIPTS_PATH", APPLICATION_PATH . "/modules/basico/views/scripts");
define("BASICO_VIEW_HELPERS_PATH", APPLICATION_PATH . "/modules/basico/views/helpers");
define("BASICO_CONTROLLER_HELPERS_PATH", APPLICATION_PATH . "/modules/basico/actionControllers/helpers");
define("BASICO_DB_SCRIPTS_PATH", APPLICATION_PATH . "/../scripts/db");
define("BASICO_DB_PGSQL_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/pgsql");
define("BASICO_DB_MSSQL_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/mssql");
define("BASICO_DB_PGSQL_CREATE_SCHEMA_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/pgsql/schema");
define("BASICO_DB_MSSQL_CREATE_SCHEMA_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/mssql/schema");
define("BASICO_DB_PGSQL_DATA_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/pgsql/data");
define("BASICO_DB_MSSQL_DATA_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/mssql/data");
define("HTACCESS_FULLFILENAME", PUBLIC_PATH . "/.htaccess");
define("HOSTS_DENNY", APPLICATION_PATH . "/modules/basico/config/hosts_denny.ini");


/**
 * CONFIGURACAO DOS MODULOS
 */
define("APPLICATION_MODULES_PATH", APPLICATION_PATH . "/modules");

/*
 * SUPPORT E-MAIL INFO
 */
define("SUPPORT_EMAIL", "agil@facepe.br");

/*
 * E-MAIL VALIDATION
 */
define("FORM_VALIDATOR_EMAILADDRESS_CHECK_DEEP_MX", false);

/*
 * E-MAIL CONFIG 
 */
define("SMTP_SERVER_AUTH_METHOD", "login");
define("SMTP_SERVER_HOST", "smtp.rochedoframework.com");
define("SMTP_SERVER_PORT", 587);
define("SMTP_USERNAME", "nao.responda@rochedoframework.com");
define("SMTP_PASSWORD", "nao#respond@");

/*
 * CAPTCHA IMAGES/FONTS FOLDERS
 */
define("CAPTCHA_IMAGE_DIR", "/images/captcha/");
define("CAPTCHA_IMAGE_URL", "/images/captcha/");
define("CAPTCHA_FONT_PATH", "/fonts/typewcond_bold.otf");

/*
 * DOJO DIRECTORIES
 */
define("DOJO_LOCAL_PATH", "/js/dojo/dojo.js");
define("DOJO_STYLE_SHEET_PATH", "/js/dijit/themes/rochedo/rochedo.css");
define("DOJO_STYLE_SHEET_MODULE", "dijit.themes.rochedo");

/*
 * JAVASCRIPT FILES
 */
define("DEFAULT_JAVASCRIPT_FILE_PATH", "/js/default_scripts.js");
define("DEFAULT_JAVASCRIPT_MASKS_FILE_PATH", "/js/default_masks_scripts.js");
define("DEFAULT_JAVASCRIPT_MASKS_JQUERY_FILE_PATH", "/js/plugins/maskMoney/jquery.maskMoney.js");
define("DEFAULT_JAVASCRIPT_JQUERY_RASCUNHO", "/js/rascunho.js");
define("JQGRID_JAVASCRIPT_FILE_PATH", "/js/plugins/jquery/jqGrid/js/jquery.jqGrid.min.js");
define("JQGRID_JAVASCRIPT_LANGUAGE_FILE_PATH", "/js/plugins/jquery/jqGrid/js/i18n/grid.locale-pt-br.js");
define("JQGRID_JAVASCRIPT_DEBUG_FILE_PATH", "/js/plugins/jquery/jqGrid/js/grid.loader.js");
define("JQGRID_ROCHEDO_CUSTOM_JAVASCRIPT_FILE_PATH", "/js/plugins/jquery/jqGrid/js/rochedo.custom.jqgrid.js");

/*
 * CSS FILES
 */
define("JQGRID_CSS_FILE_PATH", "/js/plugins/jquery/jqGrid/css/ui.jqgrid.css");
define("JQUERY_UI_CSS_FILE_PATH", "/js/jquery/ui/jquery-ui-1.8.18.custom.css");

/*
 * MENU JAVASCRIPT/CSS FILES
 */
define("MENU_API_JAVASCRIPT_FILE", "/js/menu/api.js");
define("MENU_CODE_JAVASCRIPT_FILE", "/js/menu/menucode.js");
define("MENU_MONTADOR_JAVASCRIPT_FILE", "/js/menu/montaMenu.js");
define("MENU_CSS_FILE", "/css/menu.css");

/*
 * LANGUAGE SETTINGS
 */
define("DEFAULT_SYSTEM_LANGUAGE", LANGUAGE_PT_BR);
define("DEFAULT_SYSTEM_DATETIME_LOCALE", "en_US");
define("DEFAULT_SYSTEM_DATETIME_LOCALE_PT_BR", "pt_BR");
define("DEFAULT_DATABASE_DATETIME_FORMAT", "yyyy-MM-dd HH:mm:ss");
define("DEFAULT_PG_DATABASE_DATETIME_FORMAT", "yyyy-MM-dd HH:mm:ss");
define("DEFAULT_MSSQL_DATABASE_DATETIME_FORMAT", "yyyy-MM-dd HH:mm:ss");


define("DEFAULT_DATETIME_FORMAT_PT_BR", "dd/MM/yyyy HH:mm:ss");
/*
 * SUGESTAO DE LOGIN
 */
define("NUMERO_SUGESTOES_LOGIN_TOTAL", 6);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_LOGIN", 2);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_NOME", 2);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_EMAIL", 2);