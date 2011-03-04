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
		$idLogin = Basico_LoginControllerController::retornaIdLoginUsuarioSessao();
		// verificando se existe usuario logado para fazer o log das acoes dos controladores
		if ($idLogin) {
			// recuperando o nome da acao
			$requestParams = $request->getParams();
			$nomeAcao      = $requestParams[REQUEST_ACTION_KEY];
 
			// recuperando o nome da categoria de log
			$nomeCategoriaLogAcaoInvocada = Basico_CategoriaControllerController::retornaNomeCategoriaLogAcaoControlador(Basico_UtilControllerController::retornaNomeClasseControladorPorRequest($request), $nomeAcao);

			// recuperando o id da categoria de log
			$idCategoriaLogAcaoInvocada = Basico_CategoriaControllerController::getInstance()->retornaIdCategoriaLogAcaoControladorPorNomeCategoria($nomeCategoriaLogAcaoInvocada, true);

			// recuperando informacoes sobre o perfil do usuario logado
			$idPessoaUsuarioLogado = Basico_LoginControllerController::getInstance()->retornaIdPessoaPorIdLogin($idLogin);
			$idPessoaPerfilUsuarioValidadoUsuarioLogado = Basico_PessoaPerfilControllerController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoaUsuarioLogado)->id;

			// invocando metodo de log
			Basico_LogControllerController::getInstance()->salvarLog($idPessoaPerfilUsuarioValidadoUsuarioLogado, $idCategoriaLogAcaoInvocada, DESCRICAO_LOG_CHAMADA_ACAO_CONTROLADOR);
		}
	}
}