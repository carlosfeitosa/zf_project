<?php

/**
 * Plugin para manipulacao de log nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerLogHandler extends Zend_Controller_Plugin_Abstract
{
	public function preDispatch(Zend_Controller_Request_Abstract $request)
	{
		// recuperando o id do usuario logado na sessao
		$idLogin = Basico_OPController_LoginOPController::retornaIdLoginUsuarioSessao();
		// verificando se existe usuario logado para fazer o log das acoes dos controladores
		if ($idLogin) {
			// recuperando o nome da acao
			$requestParams = $request->getParams();
			$nomeAcao      = $requestParams[REQUEST_ACTION_KEY];
 
			// recuperando o nome da categoria de log
			$nomeCategoriaLogAcaoInvocada = Basico_OPController_CategoriaOPController::retornaNomeCategoriaLogAcaoControlador(Basico_OPController_UtilOPController::retornaNomeClasseControladorPorRequest($request), $nomeAcao);

			// recuperando o id da categoria de log
			$idCategoriaLogAcaoInvocada = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogAcaoControladorPorNomeCategoria($nomeCategoriaLogAcaoInvocada, true);

			// recuperando informacoes sobre o perfil do usuario logado
			$idPessoaUsuarioLogado = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorIdLogin($idLogin);
			$idPessoaPerfilUsuarioValidadoUsuarioLogado = Basico_OPController_PessoaPerfilOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoaUsuarioLogado)->id;

			// invocando metodo de log
			Basico_OPController_LogOPController::getInstance()->salvarLog($idPessoaPerfilUsuarioValidadoUsuarioLogado, $idCategoriaLogAcaoInvocada, DESCRICAO_LOG_CHAMADA_ACAO_CONTROLADOR);
		}
	}
}