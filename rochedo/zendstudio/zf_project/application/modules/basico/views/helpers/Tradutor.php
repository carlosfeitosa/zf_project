<?php

require_once(APPLICATION_PATH . "/modules/basico/controllers/TradutorControllerController.php");

class Basico_View_Helper_Tradutor extends Zend_View_Helper_Abstract
{
    /**
    * Traduz uma constante textual para a língua especificada
    * @param String $constanteTextual
    * @param String $linguaDestino
    * @return String
    */
    public function tradutor($constanteTextual, $linguaDestino = DEFAULT_SYSTEM_LANGUAGE)  
    {  
        $controladorTradutor = Basico_TradutorControllerController::init();
        
        return $controladorTradutor->retornaTraducao($constanteTextual, $linguaDestino);
    }  
}  