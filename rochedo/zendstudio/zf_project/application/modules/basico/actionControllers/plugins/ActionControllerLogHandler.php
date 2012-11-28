<?php

/**
 * Plugin para manipulacao de log nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerLogHandler extends Zend_Controller_Plugin_Abstract implements Basico_Controller_Plugin_Interface_RochedoPluginGenerico
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
	 * posDispatch - Metodo que roda depois do dispacho do plugin de controle de acesso
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
		// retornando resultado da verificacao para checar se o plugin vai processar o request
		return !( (!Basico_OPController_DBUtilOPController::checaBancoLevantado()) or (!self::verificaSeProcessaRequest($request)) );
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
		// processando log
		self::processaLogRequest($request);
	}

	/**
	 * Processa o request, gerando o log de operacoes
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return void
	 */
	public static function processaLogRequest(Zend_Controller_Request_Abstract $request)
	{
		// recuperando o id do usuario logado na sessao
		$idLogin = Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao();

		// verificando se existe usuario logado para fazer o log das acoes dos controladores
		if ($idLogin) {
			// recuperando o nome da acao
			$nomeAcao = $request->getActionName();
 
			// recuperando o nome da categoria de log
			$nomeCategoriaLogAcaoInvocada = Basico_OPController_CategoriaOPController::retornaNomeCategoriaLogAcaoControlador(Basico_OPController_UtilOPController::retornaNomeClasseControladorPorRequest($request), $nomeAcao);

			// recuperando o id da categoria de log
			$idCategoriaLogAcaoInvocada = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogAcaoControladorPorNomeCategoriaViaSQL($nomeCategoriaLogAcaoInvocada, true);

			// recuperando id da pessoa logada
			$idPessoaUsuarioLogado = Basico_OPController_PessoaLoginOPController::retornaIdPessoaPorIdLoginViaSQL($idLogin);
			// recuperando o maior perfil vinculado ao usuario logado contra a acao do request
			$idPessoaMaiorPerfilUsuarioLogado = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $request);
			
			if (isset($idPessoaUsuarioLogado))
				// invocando metodo de log
				Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaMaiorPerfilUsuarioLogado, $idCategoriaLogAcaoInvocada, DESCRICAO_LOG_CHAMADA_ACAO_CONTROLADOR);
		}		
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
			    (!Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaAcaoErrorErrorControllerPorRequest($request))  and 
			    (Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaExisteAcaoControladorPorRequest($request)) and 
			    (Basico_OPController_PessoaLoginOPController::existeUsuarioLogado()));
	}
}