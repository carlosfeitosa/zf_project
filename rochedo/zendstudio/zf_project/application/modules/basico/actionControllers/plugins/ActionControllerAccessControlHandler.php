<?php

/**
 * Plugin para manipulacao de controle de acesso nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerAccessControlHandler extends Zend_Controller_Plugin_Abstract
{
	public function preDispatch(Zend_Controller_Request_Abstract $request)
	{
		// instanciando controladores
		$controleAcessoOPController = Basico_OPController_ControleAcessoOPController::getInstance();

		// verificando se a acao da aplicacao esta associada a um perfil publico
		if (!$controleAcessoOPController->verificaRequestPublico($request)) {
			// verificando se existe usuario logado
			if (!Basico_OPController_LoginOPController::existeUsuarioLogado()) {
				// montando a url atual para caso o login seja efetuado com sucesso"
				$urlRedirect = $request->getModuleName() . "|" . $request->getControllerName() . "|" . $request->getActionName();

				// montando a url que vai autenticar o usuario
				$urlAutenticacaoUsuarioRedirect = Basico_OPController_UtilOPController::retornaBaseUrl() . "/basico/autenticador/autenticarusuario/urlRedirect/{$urlRedirect}";

				// redirecionando para o formulario de login
				$this->getResponse()->setRedirect($urlAutenticacaoUsuarioRedirect);
			}
		}
	}
}