<?php

/**
 * Plugin controle de metadados
 * 
 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerMetadataHandler extends Zend_Controller_Plugin_Abstract implements Basico_Controller_Plugin_Interface_RochedoPluginGenerico
{
	/**
	 * Atributo para ativacao do plugin
	 * 
	 * @var Boolean
	 */
	protected static $_pluginAtivo = true;
	
	/**
	 * Atributo para definicao do id da acao aplicacao relacionada ao request 
	 * 
	 * @var null|Int
	 */
	protected static $_idAcaoAplicacao;

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
		// verificando se processa request
		if (self::checaProcessamento($request)) {
			// processando request
			self::processa($request);
		}
	}
	
	/**
	 * posDispatch - Metodo que roda depois do dispacho do plugin de metadados
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
		// verificando se o plugin esta ativo
		if ((!self::$_pluginAtivo) or (!Basico_OPController_DBUtilOPController::tabelaExiste('dicionario_expressao', 'basico'))) {
			return false;
		}
		
		// recuperando id da acao_aplicacao
		$idAcaoAplicacao = Basico_OPController_AcaoAplicacaoOPController::getInstance()->retornaIdAcaoAplicacaoPorNomeModuloNomeControladorNomeAcao($request->getModuleName(), $request->getControllerName(), $request->getActionName());
		
		if (null === $idAcaoAplicacao)
			throw new Exception(MSG_ERRO_ACAO_APLICACAO_NAO_ENCONTRADA);

		// setando id da acao aplicacao no atributo do plugin
		self::$_idAcaoAplicacao = $idAcaoAplicacao;
		
		return true;
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
		// adicionando textos da visao a view
		Basico_OPController_AcaoAplicacaoAssocVisaoOPController::getInstance()->adicionaTituloSubTituloMensagemVisao(Zend_Layout::getMvcInstance()->getView(), self::$_idAcaoAplicacao);
	}
}