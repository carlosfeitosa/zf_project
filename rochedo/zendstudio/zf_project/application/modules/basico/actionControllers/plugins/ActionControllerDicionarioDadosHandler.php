<?php

/**
 * Plugin controle de request nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerDicionarioDadosHandler extends Zend_Controller_Plugin_Abstract
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
		// verificando se o request deve ser processado
		if (!$this->verificaSeProcessaRequest($request)) {
			// parando a execução do plugin
			return;
		}

		// processando diferenças no dicionário de dados
		Basico_OPController_DicionarioDadosOPController::getInstance()->processaDiferencaDicionarioDados();
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
				(!$this->verificaRequestErrorController($request)) and
				(!$this->verificaRequestDecodeTokenController($request)) and
				(!$this->verificaRequestSucessoResetaDb($request)) and
				(!$this->verificaRequestResetaDb($request)));
	}

	/**
	 * Verifica se o request esta relacionado a acao error do modulo default, controlador error
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 06/07/2012
	 */
	private function verificaRequestErrorController(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo default, controlador error, acao error
		return (($request->getModuleName() === 'default') and ($request->getControllerName() === 'error') and ($request->getActionName() === 'error'));
	}

	/**
	 * Verifica se o request esta relacionado a acao decote do modulo basico, controlador token
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 30/07/2012
	 */
	private function verificaRequestDecodeTokenController(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo default, controlador error, acao error
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'token') and ($request->getActionName() === 'decode'));
	}

	/**
	 * Verifica se o request esta relacionado a acao resetadb do modulo basico, controlador administrador
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private function verificaRequestResetaDb(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo default, controlador error, acao error
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'administrador') and ($request->getActionName() === 'resetadb'));
	}

	/**
	 * Verifica se o request esta relacionado a acao sucessoresetadb do modulo basico, controlador administrador
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private function verificaRequestSucessoResetaDb(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo default, controlador error, acao error
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'administrador') and ($request->getActionName() === 'sucessoresetadb'));
	}
}