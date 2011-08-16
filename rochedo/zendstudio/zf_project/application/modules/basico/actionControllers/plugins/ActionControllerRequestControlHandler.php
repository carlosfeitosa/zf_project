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

	/**
	 * Metodo que roda antes do dispacho
	 * 
	 * (non-PHPdoc)
	 * @see Zend_Controller_Plugin_Abstract::preDispatch()
	 * 
	 * @return void
	 */
	public function preDispatch(Zend_Controller_Request_Abstract $request)
	{
		// verificando se o request pode ser executado
		if (!$this->verificaRequestPossivel($request)) {
			// transformando o request
			$request->setModuleName('basico');
			$request->setControllerName('controleacesso');
			$request->setActionName('acaoaplicacaochamadasemtoken');
		}

		// verificando se o request deve ser processado
		if (!$this->verificaSeProcessaRequest($request))
			return;

		// controlando o request
		self::controlaRequest($request);
	}

	/**
	 * Controla o request
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @retun void
	 */
	public static function controlaRequest(Zend_Controller_Request_Abstract $request)
	{
		// recuperando informacoes a decodificacao do token
		$token = $request->getParam('t');
		$urlDestino = Basico_OPController_TokenOPController::getInstance()->decodeTokenUrlPorToken($token);

		// registrando a url no pool de requests
		Basico_OPController_SessionOPController::registraUrlPoolRequests($urlDestino);

		// verificando se o request eh do tipo post
		if ($request->isPost()) {
			// recuperando o post
			$ultimoPost = $request->getPost();
			// recuperando chaves do post
			$chavesPost = array_keys($ultimoPost);

			// verificando se o post possui chave
			if ((is_array($ultimoPost[$chavesPost[0]]))) {
				// registrando na sessao o nome da primeira chave encontrada no post
				Basico_OPController_SessionOPController::registraChavePostUltimoRequest($chavesPost[0]);
			} else {
				Basico_OPController_SessionOPController::registraChavePostUltimoRequest(null);
			}
			// verificando se o post veio de um subformulario
			if (is_array($ultimoPost[$chavesPost[0]])) {
				// registrando na sessao o post do ultimo request, do subformulario
				Basico_OPController_SessionOPController::registraPostUltimoRequest($ultimoPost[$chavesPost[0]]);
			} else {
				// registrando na sessao o post do ultimo request
				Basico_OPController_SessionOPController::registraPostUltimoRequest($ultimoPost);
			}
		}

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

			// chamando o plugin de log
			Basico_Controller_Plugin_ActionControllerLogHandler::processaLogRequest($request);

			// chamando o controle de acesso
			Basico_Controller_Plugin_ActionControllerAccessControlHandler::verificaAcessoRequest($request);

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

	/**
	 * Verifica se o request esta relacionado a acao index do modulo default, controlador index
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private function verificaRequestIndexAplicacao(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo default, controlador index, acao index
		return (($request->getModuleName() === 'default') and ($request->getControllerName() === 'index') and ($request->getActionName() === 'index'));
	}

	/**
	 * Verifica se o request esta relacionado a acao error do modulo default, controlador error
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private function verificaRequestErrorAplicacao(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo default, controlador error, acao error
		return (($request->getModuleName() === 'default') and ($request->getControllerName() === 'error') and ($request->getActionName() === 'error'));
	}

	/**
	 * Verifica se o request pode ser executado pelo usuario (acoes chamadas diretamente pela url, sem passar por decodificacao de token)
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private function verificaRequestPossivel(Zend_Controller_Request_Abstract $request)
	{
		// verificando se o request nao eh do tipo decode token, index da aplicacao, controlador de erros e checagem de ambiente de desenvolvimento
		return !((!$this->verificaRequestIndexAplicacao($request)) and 
		         (!$this->verificaRequestErrorAplicacao($request)) and 
		         (!$this->verificaRequestTokenDecode($request)) and 
		         (!Basico_OPController_UtilOPController::ambienteDesenvolvimento()));
	}
}