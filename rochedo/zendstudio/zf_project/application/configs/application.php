<?php

// APPLICATION
define("APPLICATION_NAME", "AgilFAP");
define("APPLICATION_VERSION", "2.0");
define('APPLICATION_TITLE', 'Ambiente de Gestão de Informação e Logística.');

// PATHS & FILENAMES

$logFileName = "error_log_" . date('Ym') . ".log";

define("LOG_PATH", APPLICATION_PATH . "/logs/");
define("LOG_FILENAME", $logFileName);
define("LOG_FULL_FILENAME", LOG_PATH . LOG_FILENAME);

// INFORMATION
define("SUPPORT_EMAIL", "agil@facepe.br");