<?php
/**
 * Helper responsavel por facilitar o acesso as funções do rascunho.
 */

class Basico_Controller_Action_Helper_Rascunho extends Zend_Controller_Action_Helper_Abstract
{
    /**
    * Exclui o rascunho
    * 
    * @return void
    */
    public function processar()  
    {
    	// recuperando o request
   		$request = Basico_OPController_UtilOPController::retornaUserRequest();

   		// excluindo rascunho
   		Basico_OPController_FormularioRascunhoOPController::getInstance()->excluirRascunho($request);
    }
}