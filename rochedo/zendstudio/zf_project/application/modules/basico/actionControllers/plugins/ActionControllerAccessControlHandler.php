<?php

/**
 * Plugin para manipulacao de controle de acesso nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerAccessControlHandler extends Zend_Controller_Plugin_Abstract
{
	protected $_pluginAtivo = true;
	
	public function preDispatch(Zend_Controller_Request_Abstract $request)
	{
		// verificando se o plugin esta ativo
		if (!$this->_pluginAtivo)
			return;

		// instanciando controladores
		$controleAcessoOPController = Basico_OPController_ControleAcessoOPController::getInstance();

		// verificando se a acao da aplicacao esta associada a um perfil publico
		if (!$controleAcessoOPController->verificaRequestPublico($request)) {		
			// verificando se existe usuario logado
			if (!Basico_OPController_LoginOPController::existeUsuarioLogado()) {
				// recuperando informacoes do request
				$moduleRequest     = $request->getModuleName();
				$controllerRequest = $request->getControllerName();
				$actionRequest     = $request->getActionName();
				$paramsRequest     = $request->getParams();

				// montando a url atual para caso o login seja efetuado com sucesso"
				$requestUrlRedirect = Zend_Controller_Action_HelperBroker::getStaticHelper('url')->url($paramsRequest, null, true); 

				// configurando variaveis para request de autenticacao
				$moduleAutenticador     = 'basico';
				$controllerAutenticador = 'autenticador';
				$actionAutenticador     = 'autenticarusuario';
				
				// verificando se o request atual nao eh uma solicitacao de autenticacao para evitar loop infinito
				if (($moduleRequest === $moduleAutenticador) and ($controllerRequest === $controllerAutenticador) and ($actionRequest === $actionAutenticador))
					return;

				// modificando o request
				$request->setParam('urlRedirect', $requestUrlRedirect);
				$request->setModuleName('basico');
				$request->setControllerName('autenticador');
				$request->setActionName('autenticarusuario');
			}
		}
	}
}