<?php

/**
 * Plugin para manipulacao de controle de acesso nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerAccessControlHandler extends Zend_Controller_Plugin_Abstract
{
	/**
	 * Atributo para ativacao do plugin
	 * 
	 * @var Boolean
	 */
	protected $_pluginAtivo = true;
	
	public function preDispatch(Zend_Controller_Request_Abstract $request)
	{
		// verificando se o request deve ser processado
		if (!$this->verificaSeProcessaRequest($request))
			return;

		// verificando o acesso
		self::verificaAcessoRequest($request);
	}

	/**
	 * Verifica o acesso ao request
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return void
	 */
	public static function verificaAcessoRequest(Zend_Controller_Request_Abstract $request)
	{
		// instanciando controladores
		$controleAcessoOPController = Basico_OPController_ControleAcessoOPController::getInstance();

		// verificando se a acao da aplicacao esta ativa
		if (!$controleAcessoOPController->verificaRequestAtivoPorRequest($request)) {
			// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
			$request->setModuleName('basico');
			$request->setControllerName('controleacesso');
			$request->setActionName('acaoaplicacaodesativada');

			// parando a execucao do plugin
			return;
		}

		// verificando se a acao da aplicacao esta associada a um perfil publico
		if (!$controleAcessoOPController->verificaRequestPublicoPorRequest($request)) {
			// verificando se existe usuario logado
			if (!Basico_OPController_LoginOPController::existeUsuarioLogado()) {
				// recuperando informacoes do request
				$moduleRequest     = $request->getModuleName();
				$controllerRequest = $request->getControllerName();
				$actionRequest     = $request->getActionName();
				$paramsRequest     = $request->getParams();

				// montando a url atual para caso o login seja efetuado com sucesso
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
			} else {
				// verificando se o usuario logado possui o perfil para a requisicao solicitada
				if (!$controleAcessoOPController->verificaPermissaoAcessoRequestPerfilPorRequest($request)) {
					// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
					$request->setModuleName('basico');
					$request->setControllerName('controleacesso');
					$request->setActionName('acaoaplicacaonaopermitida');
		
					// parando a execucao do plugin
					return;
				}
			}
		}
	}

	/**
	 * Verifica se o plugin deve processar o request
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private function verificaSeProcessaRequest(Zend_Controller_Request_Abstract $request)
	{
		// retornando se o request deve ser processado
		return (($this->_pluginAtivo) and 
				(Basico_OPController_ControleAcessoOPController::getInstance()->verificaRequestCadastrado($request, true)) and
				(!Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaAcaoErrorErrorControllerPorRequest($request)) and
				(Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaExisteAcaoControladorPorRequest($request)));
	}
}