<?php

/**
 * Plugin para manipulacao de log nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerLogHandler extends Zend_Controller_Plugin_Abstract
{
	public function preDispatch(Zend_Controller_Request_Abstract $request)
	{
		// verificando se existe usuario logado para fazer o log das acoes dos controladores
		if (Basico_LoginControllerController::retornaIdLoginUsuarioSessao()) {
			// recuperando o nome da acao
			$requestParams = $request->getParams();
			$nomeAcao      = $requestParams['action'];
 
			// recuperando o nome da categoria de log
			$nomeCategoriaLogAcaoInvocada = Basico_CategoriaControllerController::retornaNomeCategoriaLogAcaoControlador(Basico_UtilControllerController::retornaNomeControladorPorRequest($request), $nomeAcao);

			Basico_UtilControllerController::print_debug($nomeCategoriaLogAcaoInvocada);
		}
	}
}