<?php

/*
 * exemplo retirado de:
 * http://blog.fedecarg.com/2008/12/27/testing-zend-framework-controllers/
 */

error_reporting(E_ALL | E_STRICT);

ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);

date_default_timezone_set('America/Recife');

define('APPLICATION_PATH', realpath(dirname(__FILE__) . '/../../application'));
define('APPLICATION_ENV', 'testing_mssql');
define('LIBRARY_PATH', realpath(dirname(__FILE__) . '/../library'));
define('TESTS_PATH', realpath(dirname(__FILE__)));

$_SERVER['SERVER_NAME'] = 'http://localhost';

$includePaths = array(LIBRARY_PATH, get_include_path());
set_include_path(implode(PATH_SEPARATOR, $includePaths));

require_once "Zend/Loader.php";
Zend_Loader::registerAutoload();

Zend_Session::$_unitTestEnabled = true;
Zend_Session::start();