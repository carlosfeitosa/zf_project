<?php

// APPLICATION
define("APPLICATION_NAME", "AgilFAP");
define("APPLICATION_VERSION", "2.0");
define('APPLICATION_TITLE', 'Ambiente de Gestão de Informação e Logística.');

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

// SMTP SETTINGS
global $smtpServer;
global $smtpAuth;
global $smtpLogin;
global $smtpPassword;

$smtpServer = 'mail.rochedoproject.com';
$smtpAuth = 'login';
$smtpLogin = 'info@rochedoproject.com';
$smtpPassword = '@info#rochedo@';