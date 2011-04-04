<?php

/**
 * Plugin para manipulacao de log nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerLogHandler extends Zend_Controller_Plugin_Abstract
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
		if (!$this->verificaSeProcessaRequest($request))
			return;

		// processando log
		$this->processaLogRequest($request);
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
		$idLogin = Basico_OPController_LoginOPController::retornaIdLoginUsuarioSessao();

		// verificando se existe usuario logado para fazer o log das acoes dos controladores
		if ($idLogin) {
			// recuperando o nome da acao
			$nomeAcao = $request->getActionName();
 
			// recuperando o nome da categoria de log
			$nomeCategoriaLogAcaoInvocada = Basico_OPController_CategoriaOPController::retornaNomeCategoriaLogAcaoControlador(Basico_OPController_UtilOPController::retornaNomeClasseControladorPorRequest($request), $nomeAcao);

			// recuperando o id da categoria de log
			$idCategoriaLogAcaoInvocada = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogAcaoControladorPorNomeCategoria($nomeCategoriaLogAcaoInvocada, true);

			// recuperando id da pessoa logada
			$idPessoaUsuarioLogado = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorIdLogin($idLogin);
			// recuperando o maior perfil vinculado ao usuario logado contra a acao do request
			$idPessoaMaiorPerfilUsuarioLogado = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $request);

			// invocando metodo de log
			Basico_OPController_LogOPController::getInstance()->salvarLog($idPessoaMaiorPerfilUsuarioLogado, $idCategoriaLogAcaoInvocada, DESCRICAO_LOG_CHAMADA_ACAO_CONTROLADOR);
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
			    (!Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaAcaoErrorErrorControllerPorRequest($request))  and 
			    (Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaExisteAcaoControladorPorRequest($request)) and 
			    (Basico_OPController_LoginOPController::existeUsuarioLogado()));
	}
}