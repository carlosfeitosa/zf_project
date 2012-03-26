<?php
class Basico_ControleacessoController extends Zend_Controller_Action
{
    /**
	 * Inicializa controlador Administrador
	 * 
	 * @return void
	 */
	public function init()
    {
		return;
    }
    
    /**
     * Ação para mostrar mensagem de acao aplicacao desativada
     * 
     * @return void
     */
    public function acaoaplicacaodesativadaAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoaUsuarioLogado = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());

    	// recuperando informacoes para log
    	$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $this->_request);
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_ACAO_DESATIVADA, true);
    	$mensagemLog = LOG_MSG_TENTATIVA_ACESSO_ACAO_DESATIVADA;

		// salvando log
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_TITULO'));
        $subtituloView = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_SUBTITULO'));
        $mensagemView  = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_MENSAGEM'));

        // montando link para voltar para a pagina anterior
        $textoLink = $this->view->tradutor('MENSAGEM_TEXTO_LINK_AQUI');
        $linkPaginaAnterior = "<a href='#' onClick=" . Basico_OPController_UtilOPController::retornaStringEntreCaracter(JAVASCRIPT_HISTORY_GO_BACK, "'") . ">{$textoLink}</a>";

        // substituindo a tag do link pelo link
        $mensagemView = str_replace(TAG_LINK, $linkPaginaAnterior, $mensagemView);

    	// carregando array do cabecalho da view
		$content[] = $tituloView;
		$content[] = $subtituloView;
		$content[] = $mensagemView;
	            
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Ação para mostrar mensagem de acao aplicacao desativada
     * 
     * @return void
     */
    public function acaoaplicacaonaopermitidaAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoaUsuarioLogado = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());

    	// recuperando informacoes para log
    	$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $this->_request);
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_ACAO_NAO_PERMITIDA, true);
    	$mensagemLog = LOG_MSG_TENTATIVA_ACESSO_ACAO_NAO_PERMITIDA;

		// salvando log
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_TITULO'));
        $subtituloView = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_SUBTITULO'));
        $mensagemView  = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_MENSAGEM'));

        // montando link para voltar para a pagina anterior
        $textoLink = $this->view->tradutor('MENSAGEM_TEXTO_LINK_AQUI');
        $linkPaginaAnterior = "<a href='#' onClick=" . Basico_OPController_UtilOPController::retornaStringEntreCaracter(JAVASCRIPT_HISTORY_GO_BACK, "'") . ">{$textoLink}</a>";

        // substituindo a tag do link pelo link
        $mensagemView = str_replace(TAG_LINK, $linkPaginaAnterior, $mensagemView);

    	// carregando array do cabecalho da view
		$content[] = $tituloView;
		$content[] = $subtituloView;
		$content[] = $mensagemView;
	            
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Ação para mostrar mensagem de acao aplicacao chamada sem ser atraves de um token decode
     * 
     * @return void
     */
    public function acaoaplicacaochamadasemtokenAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoaUsuarioLogado = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());

    	// recuperando informacoes para log
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_ACAO_INDISPONIVEL_ATRAVES_DE_URL, true);
    	$mensagemLog = LOG_MSG_TENTATIVA_ACESSO_ACAO_INDISPONIVEL_ATRAVES_DE_URL;

    	// verificando se existe usuario logado
    	if ($idPessoaUsuarioLogado) {
    		// recuperando o id do maior perfil do usuario logado
    		$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $this->_request);
    	} else {
    		// recuperando o id de pessoa perfil sistema
    		$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();
    	}

		// salvando log
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_TITULO'));
        $subtituloView = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_SUBTITULO'));
        $mensagemView  = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_MENSAGEM'));

        // montando link para voltar para a pagina anterior
        $textoLink = $this->view->tradutor('MENSAGEM_TEXTO_LINK_AQUI');
        $linkPaginaAnterior = "<a href='#' onClick=" . Basico_OPController_UtilOPController::retornaStringEntreCaracter(JAVASCRIPT_HISTORY_GO_BACK, "'") . ">{$textoLink}</a>";

        // substituindo a tag do link pelo link
        $mensagemView = str_replace(TAG_LINK, $linkPaginaAnterior, $mensagemView);

    	// carregando array do cabecalho da view
		$content[] = $tituloView;
		$content[] = $subtituloView;
		$content[] = $mensagemView;
	            
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Ação para mostrar mensagem de acao aplicacao chamada sem ser atraves de um token decode
     * 
     * @return void
     */
    public function metodovalidacaoacaofalhouAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoaUsuarioLogado = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());

    	// recuperando informacoes para log
    	$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $this->_request);
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_ACAO_INDISPONIVEL_ATRAVES_DE_URL, true);
    	$mensagemLog = LOG_MSG_TENTATIVA_ACESSO_ACAO_INDISPONIVEL_ATRAVES_DE_URL;

		// salvando log
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_TITULO'));
        $subtituloView = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_SUBTITULO'));
        $mensagemView  = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_CONTROLE_ACESSO_METODO_VALIDACAO_FALHOU_MENSAGEM'));

        // montando link para voltar para a pagina anterior
        $textoLink = $this->view->tradutor('MENSAGEM_TEXTO_LINK_AQUI');
        $linkPaginaAnterior = "<a href='#' onClick=" . Basico_OPController_UtilOPController::retornaStringEntreCaracter(JAVASCRIPT_HISTORY_GO_BACK, "'") . ">{$textoLink}</a>";

        // substituindo a tag do link pelo link
        $mensagemView = str_replace(TAG_LINK, $linkPaginaAnterior, $mensagemView);

    	// carregando array do cabecalho da view
		$content[] = $tituloView;
		$content[] = $subtituloView;
		$content[] = $mensagemView;
	            
	    // setando o cabecalho na view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Ação para mostrar mensagem de ip do usuario diferente do ip do usuario autenticado no momento do logon
     * 
     * @return void
     */
    public function ipusuariodiferentedoipdousuarioautenticadonasessaoAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoaUsuarioLogado = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());

    	// recuperando informacoes para log
    	$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoaUsuarioLogado);
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO, true);
    	$mensagemLog = LOG_MSG_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO;

		// salvando log
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_TITULO'));
        $subtituloView = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_SUBTITULO'));
        $mensagemView  = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_CONTROLE_ACESSO_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO_MENSAGEM'));

    	// carregando array do cabecalho da view
		$content[] = $tituloView;
		$content[] = $subtituloView;
		$content[] = $mensagemView;
	            
	    // enviado conteúdo para a view
		$this->view->content = $content;

		// efetuando logoff
		Basico_OPController_PessoaLoginOPController::removeRegistroIdLoginUsuarioSessao();

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    public function hostbanidoAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoaUsuarioLogado = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());

    	// verificando se existe usuario logado
    	if ($idPessoaUsuarioLogado) {
    		// recuperando o id da pessoa perfil logada
    		$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoaUsuarioLogado);

			// efetuando logoff
			Basico_OPController_PessoaLoginOPController::removeRegistroIdLoginUsuarioSessao();
    	} else {
    		// recuperando o id da pessoa perfil do sistema
    		$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();
    	}

    	// recuperando informacoes para log
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_TENTATIVA_ACESSO_HOST_BANIDO, true);
    	$mensagemLog = LOG_MSG_TENTATIVA_ACESSO_HOST_BANIDO;

		// salvando log
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

		// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_HOST_BANIDO_TITULO'));
        $subtituloView = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_CONTROLE_ACESSO_HOST_BANIDO_SUBTITULO'));
        $mensagemView  = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_CONTROLE_ACESSO_HOST_BANIDO_MENSAGEM'));

    	// carregando array do cabecalho da view
		$content[] = $tituloView;
		$content[] = $subtituloView;
		$content[] = $mensagemView;
	            
	    // enviado conteúdo para a view
		$this->view->content = $content;

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}