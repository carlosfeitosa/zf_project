<?php
/**
 * Arquivo para definiçãoo de constantes de configuração do sistema.
 */


/*
 * APPLICATION
 */
define("APPLICATION_NAME", "Rochedo Project");
define("APPLICATION_VERSION", "1.0");
define('APPLICATION_TITLE', 'ROCHEDO software');

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
define("BASICO_VIEW_HELPERS_PATH", APPLICATION_PATH . "/modules/basico/views/helpers");
define("BASICO_CONTROLLER_HELPERS_PATH", APPLICATION_PATH . "/modules/basico/controllers/helpers");
#define("BASICO_CONTROLLER_FORMS_PATH", APPLICATION_PATH . "/modules/basico/forms");

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
define("SMTP_SERVER_HOST", "mail.rochedoproject.com");
define("SMTP_USERNAME", "info@rochedoproject.com");
define("SMTP_PASSWORD", "@info#rochedo@");

/*
 * CAPTCHA IMAGES/FONTS FOLDERS
 */
define("CAPTCHA_IMAGE_DIR","../public/images/captcha/");
define("CAPTCHA_IMAGE_URL", "../../../public/images/captcha/");
define("CAPTCHA_FONT_PATH", "../public/fonts/typewcond_bold.otf");

/*
 * DOJO DIRECTORIES
 */
define("DOJO_LOCAL_PATH", "/js/dojo/dojo.js");
define("DOJO_STYLE_SHEET_PATH", "/js/dijit/themes/nihilo/nihilo.css");
define("DOJO_STYLE_SHEET_MODULE", "dijit.themes.nihilo");

/*
 * JAVASCRIPT FILES
 */
define("DEFAULT_JAVASCRIPT_FILE_PATH", "/js/default_scripts.js");
define("MENU_JAVASCRIPT_FILE_PATH", "/js/dhtmlMenu.js");

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

if (!defined("DEFAULT_USER_LANGUAGE"))
    define("DEFAULT_USER_LANGUAGE", DEFAULT_SYSTEM_LANGUAGE);