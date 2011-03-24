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

    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	            
	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}