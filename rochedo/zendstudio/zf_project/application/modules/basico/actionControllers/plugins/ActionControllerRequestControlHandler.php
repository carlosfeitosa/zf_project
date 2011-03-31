<?php

/**
 * Plugin controle de request nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerRequestControlHandler extends Zend_Controller_Plugin_Abstract
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

		// recuperando informacoes a decodificacao do token
		$token = $request->getParam('t');
		$urlDestino = Basico_OPController_TokenOPController::getInstance()->decodeTokenUrlPorToken($token);

		// inicializando variaveis
		$nomeModuloDestino      = '';
		$nomeControladorDestino = '';
		$nomeAcaoDestino        = '';
		$arrayParametrosDestino = array();

		// decodificando a url
		if (Basico_OPController_UtilOPController::decodeNomeModuloNomeControladorNomeAcaoParametrosPorUrlMVC($urlDestino, $nomeModuloDestino, $nomeControladorDestino, $nomeAcaoDestino, $arrayParametrosDestino)) {
			// transformando o request
			$request->setModuleName($nomeModuloDestino);
			$request->setControllerName($nomeControladorDestino);
			$request->setActionName($nomeAcaoDestino);
			// loop para inclusao dos parametros
			foreach ($arrayParametrosDestino as $chaveParametroDestino => $valorParametroDestino) {
				// setando o parametro no request
				$request->setParam($chaveParametroDestino, $valorParametroDestino);
			}

			// parando a execucao do plugin
			return;
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
				($this->verificaRequestTokenDecode($request)));
	}

	/**
	 * Verifica se o request esta relacionado a decodificacao de um token
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private function verificaRequestTokenDecode(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo basico, controlador token, acao decode
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'token') and ($request->getActionName() === 'decode'));
	}
}