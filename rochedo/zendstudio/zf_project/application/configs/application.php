<?php
/**
 * Arquivo para definição de constantes de configuração do sistema.
 */
// APPLICATION
define("APPLICATION_NAME", "Rochedo Project");
define("APPLICATION_VERSION", "1.0");
define('APPLICATION_TITLE', 'ROCHEDO software');

// PATHS & FILENAMES
$logSequence = date('Ym');

define("LOG_PATH", APPLICATION_PATH . "/logs/");
define("LOG_FILENAME_PREFIX", "error_log_");
define("LOG_FILENAME_SULFIX", ".log");
define("LOG_FILENAME", LOG_FILENAME_PREFIX . $logSequence . LOG_FILENAME_SULFIX);
define("LOG_FULL_FILENAME", LOG_PATH . LOG_FILENAME);

// INFORMATION
define("SUPPORT_EMAIL", "agil@facepe.br");

// E-MAIL VALIDATION
define("FORM_VALIDATOR_EMAILADDRESS_CHECK_DEEP_MX", false);

//CAPTCHA IMAGES/FONTS FOLDERS
define("CAPTCHA_IMAGE_DIR","../public/images/captcha/");
define("CAPTCHA_IMAGE_URL", "../../../public/images/captcha/");
define("CAPTCHA_FONT_PATH", "../public/fonts/typewcond_bold.otf");

//DOJO DIRECTORIES
define("DOJO_LOCAL_PATH", "../../js/dojo/dojo.js");
define("DOJO_STYLE_SHEET_PATH", "../../js/dijit/themes/tundra/tundra.css");
define("DOJO_STYLE_SHEET_MODULE", "dijit.themes.tundra");

//JAVASCRIPT FILES
define("DEFAULT_JAVASCRIPT_FILE_PATH", "../../js/default_scripts.js");