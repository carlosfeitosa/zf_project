<?php

require_once(APPLICATION_PATH . "/modules/basico/controllers/TradutorControllerController.php");

class Basico_View_Helper_Tradutor extends Zend_View_Helper_Abstract
{
    /**
    * Traduz uma constante textual para a língua especificada
    * 
    * @param String $constanteTextual
    * @param String $linguaDestino
    * 
    * @return String
    */
    public function tradutor($constanteTextual, $linguaDestino = null)  
    {
    	// verificando se foi passado uma ligua para traducao
    	if (!isset($linguaDestino))
    		$linguaDestino = Basico_PessoaControllerController::retornaLinguaUsuario();

    	// recuperando o controlador de traducoes
        $controladorTradutor = Basico_TradutorControllerController::init();

        // retornando a traducao
        return $controladorTradutor->retornaTraducao($constanteTextual, $linguaDestino);
    }  
}  