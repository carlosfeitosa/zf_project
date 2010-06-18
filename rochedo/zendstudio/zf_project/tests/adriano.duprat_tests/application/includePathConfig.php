<?php

/**
 * @author Adriano Lemos
 * @copyright Rochedo Project.
 * @license Commercial
 *
 *A função deste módulo é fazer com que o PHPUnit se integre aos módulos do framework da aplicação
 *
 */
//Define Timezone do PHPUnit
date_default_timezone_set('America/Recife');

// Define path to application library directory
defined('APPLICATION_PATH_LIBRARY')
    || define('APPLICATION_PATH_LIBRARY', realpath(dirname(__FILE__) . '/../../library'));

    
// Define o include path de testes á partir das constantes construídas acima    
set_include_path(get_include_path()
                 . PATH_SEPARATOR . APPLICATION_PATH_LIBRARY
);


