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
		// definindo o contexto
		$pdfParametros = array('suffix' => 'pdf', 'headers' => array('Content-Type' => 'application/pdf'));
		$xlsParametros = array('suffix' => 'xls', 'headers' => array('Content-Type' => 'application/xls'));
		$plaintextParametros = array('suffix' => 'plaintext', 'headers' => array('Content-Type' => 'application/plaintext'));
		$impressaoParametros = array('suffix' => 'impressao', 'headers' => array('Content-Type' => 'application/impressao'));
        
		// adicionando os contextos e definindo as permissoes por acao
    	$this->_helper->contextSwitch()
    					->addContext('pdf', $pdfParametros)
    					->addContext('xls', $xlsParametros)
    					->addContext('plaintext', $plaintextParametros)
    					->addContext('impressao', $impressaoParametros)
        	            ->addActionContext('cadastrarusuarionaovalidado', array('pdf', 'plaintext', 'impressao'))
						->setAutoJsonSerialization(true)
						->initContext();
    }
    
    /**
     * Ação para mostrar mensagem de acao aplicacao desativada
     * 
     * @return void
     */
    public function acaoaplicacaodesativadaAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoaUsuarioLogado = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_LoginOPController::retornaIdLoginUsuarioSessao());

    	// recuperando informacoes para log
    	$idPessoaPerfil = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $this->_request);
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogTentativaAcessoAcaoDesativada();
    	$mensagemLog = LOG_MSG_TENTATIVA_ACESSO_ACAO_DESATIVADA;

		// salvando log
		Basico_OPController_LogOPController::getInstance()->salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_TITULO');
        $subtituloView = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_SUBTITULO');
        $mensagemView  = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_MENSAGEM');

        // montando link para voltar para a pagina anterior
        $textoLink = $this->view->tradutor('MENSAGEM_TEXTO_LINK_AQUI');
        $linkPaginaAnterior = "<a href='#' onClick=" . Basico_OPController_UtilOPController::retornaStringEntreCaracter(JAVASCRIPT_HISTORY_GO_BACK, "'") . ">{$textoLink}</a>";

        // substituindo a tag do link pelo link
        $mensagemView = str_replace(TAG_LINK, $linkPaginaAnterior, $mensagemView);

    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	            
	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;
		
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
    	$idPessoaUsuarioLogado = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_LoginOPController::retornaIdLoginUsuarioSessao());

    	// recuperando informacoes para log
    	$idPessoaPerfil = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $this->_request);
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogTentativaAcessoAcaoNaoPermitida();
    	$mensagemLog = LOG_MSG_TENTATIVA_ACESSO_ACAO_NAO_PERMITIDA;

		// salvando log
		Basico_OPController_LogOPController::getInstance()->salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_TITULO');
        $subtituloView = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_SUBTITULO');
        $mensagemView  = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_NAO_PERMITIDA_MENSAGEM');

        // montando link para voltar para a pagina anterior
        $textoLink = $this->view->tradutor('MENSAGEM_TEXTO_LINK_AQUI');
        $linkPaginaAnterior = "<a href='#' onClick=" . Basico_OPController_UtilOPController::retornaStringEntreCaracter(JAVASCRIPT_HISTORY_GO_BACK, "'") . ">{$textoLink}</a>";

        // substituindo a tag do link pelo link
        $mensagemView = str_replace(TAG_LINK, $linkPaginaAnterior, $mensagemView);

    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	            
	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;
		
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
    	$idPessoaUsuarioLogado = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_LoginOPController::retornaIdLoginUsuarioSessao());

    	// recuperando informacoes para log
    	$idPessoaPerfil = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest($idPessoaUsuarioLogado, $this->_request);
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogTentativaAcessoAcaoIndisponivelAtravesDeUrl();
    	$mensagemLog = LOG_MSG_TENTATIVA_ACESSO_ACAO_INDISPONIVEL_ATRAVES_DE_URL;

		// salvando log
		Basico_OPController_LogOPController::getInstance()->salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView    = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_TITULO');
        $subtituloView = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_SUBTITULO');
        $mensagemView  = $this->view->tradutor('VIEW_CONTROLE_ACESSO_ACAO_DESATIVADA_MENSAGEM');

        // montando link para voltar para a pagina anterior
        $textoLink = $this->view->tradutor('MENSAGEM_TEXTO_LINK_AQUI');
        $linkPaginaAnterior = "<a href='#' onClick=" . Basico_OPController_UtilOPController::retornaStringEntreCaracter(JAVASCRIPT_HISTORY_GO_BACK, "'") . ">{$textoLink}</a>";

        // substituindo a tag do link pelo link
        $mensagemView = str_replace(TAG_LINK, $linkPaginaAnterior, $mensagemView);

    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	            
	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}