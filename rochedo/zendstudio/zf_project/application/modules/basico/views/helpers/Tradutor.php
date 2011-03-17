<?php

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
    		$linguaDestino = Basico_OPController_PessoaOPController::retornaLinguaUsuario();

    	// instanciando controladores
        $tradutorOPController = Basico_OPController_TradutorOPController::getInstance();

        // retornando a traducao
        return $tradutorOPController->retornaTraducao($constanteTextual, $linguaDestino);
    }  
}  