<?php

/**
 * Plugin controle de request nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerDicionarioDadosHandler extends Zend_Controller_Plugin_Abstract implements Basico_Controller_Plugin_Interface_RochedoPluginGenerico
{
	/**
	 * Atributo para ativacao do plugin
	 * 
	 * @var Boolean
	 */
	protected static $_pluginAtivo = true;

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
		if (self::checaProcessamento($request)) {
			// processando request
			self::processa($request);
		}

		
	}

	/**
	 * posDispatch - Metodo que roda depois do dispacho do plugin de dicionario de dados
	 * 
	 * @see Basico_Controller_Plugin_Interface_RochedoPluginGenerico::posDispatch()
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 21/11/2012
	 */
	public function postDispatch(Zend_Controller_Request_Abstract $request)
	{
		;
	}
	
	/**
	 * metodo que checa se o request eh para ser processado pelo plugin
	 * 
	 * @see Basico_Controller_Plugin_Interface_RochedoPluginGenerico::posDispatch()
	 * 
	 * @return Boolean - Retorna se pode processar o request ou nao
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 21/11/2012
	 */
	public static function checaProcessamento(Zend_Controller_Request_Abstract $request)
	{
		// retorna se pode processar o request ou nao
		return self::verificaSeProcessaRequest($request);
	}
	
	/**
	 * metodo que processa o request
	 * 
	 * @see Basico_Controller_Plugin_Interface_RochedoPluginGenerico::processa()
	 * 
	 * @return void
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 21/11/2012
	 */
	public static function processa(Zend_Controller_Request_Abstract $request)
	{
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
	private static function verificaSeProcessaRequest(Zend_Controller_Request_Abstract $request)
	{
		// retornando se o request deve ser processado
		return ((self::$_pluginAtivo) and
				(!self::verificaRequestErrorController($request)) and
				(!self::verificaRequestDecodeTokenController($request)) and
				(!self::verificaRequestSucessoResetaDb($request)) and
				(!self::verificaRequestResetaDb($request)));
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
	private static function verificaRequestErrorController(Zend_Controller_Request_Abstract $request)
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
	private static function verificaRequestDecodeTokenController(Zend_Controller_Request_Abstract $request)
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
	private static function verificaRequestResetaDb(Zend_Controller_Request_Abstract $request)
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
	private static function verificaRequestSucessoResetaDb(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo default, controlador error, acao error
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'administrador') and ($request->getActionName() === 'sucessoresetadb'));
	}
}