<?php
/**
 * Controlador Email
 * 
 * @uses Basico_Model_Email
 */
class Basico_EmailController extends Basico_AbstractActionController_RochedoGenericActionController
{
    /**
	 * Inicializa controlador de controle de acesso
	 * 
	 * @return void
	 */
	public function init()
    {
    	return;
    }

	/**
	 * Inicializa os controladores necessários para operação deste action controller
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractActionController_RochedoGenericActionController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/06/2012
	 */
	protected function _initControllers()
	{
		return;
	}

    /**
     * Valida um e-mail
     * 
     * @return void
     */
    public function validaremailAction()
    {
    	// recuperando o token da sessao
    	$token = $this->getRequest()->getParam('t');

    	// recuperando o objeto token e-mail
    	$tokenObj = Basico_OPController_CpgTokenOPController::getInstance()->retornaObjetoTokenEmailPorToken($token);

    	// verificando se o objeto existe
    	if ($tokenObj == null){
    		// encaminhado para a ação de erro token invalido
    		return $this->_redirect($this->view->urlEncryptModuleControllerAction($this->view->url(array('module' => 'basico', 'controller' => 'token', 'action' => 'errotokeninvalido', null, true))));
    	}
    	
    	// recuperando o e-mail
    	$email   = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaObjetoEmailPorId($tokenObj->idGenericoProprietario);
    	
    	// verificando se o email eh primario
    	if (!Basico_OPController_ContatoCpgEmailOPController::getInstance()->verificaEmailPrimario($email)) {
    		
    		// validando o email
    		Basico_OPController_ContatoCpgEmailOPController::getInstance()->validarEmail($email);
    		
    		// carregando mensagem na view
    		Basico_OPController_AcaoAplicacaoAssocVisaoOPController::adicionaContentVisao($this->view, Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor("VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO")));
    		
    		// renderizando a view
    		$this->_helper->Renderizar->renderizar();
    		
    		return;
    	}

    	//verificando se o usuario possui o perfil de UsuarioValidado
    	if (Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->possuiPerfilUsuarioValidadoPorEmail($email)) {
    		// encaminhado para a ação erroemailvalidadoexistentenosistema do loginController
            return $this->_redirect($this->view->urlEncryptModuleControllerAction($this->view->url(array('module' => 'basico', 'controller' => 'email', 'action' => 'erroemailvalidadoexistentenosistema', null, true))));
    	}
    	
    	// recuperando data hora de expiracao
    	$dataHoraExpiracaoUnixTimeStamp = Basico_OPController_UtilOPController::retornaTimestamp($tokenObj->datahoraExpiracao);
    	// recuperando a data hora atual
    	$dataHoraAtualUnixTimeStamp = Basico_OPController_UtilOPController::retornaTimestamp();

    	// verificando se o objeto existe
    	if ($email != null) {
			// checando expiracao do token
	    	if ($dataHoraExpiracaoUnixTimeStamp < $dataHoraAtualUnixTimeStamp){
	    		// encaminhado para a ação de token expirado
	    		return $this->_redirect($this->view->urlEncryptModuleControllerAction($this->view->url(array('module' => 'basico', 'controller' => 'token', 'action' => 'errotokenexpirado', null, true))));  		
	    	}
	    	
	    	// recuperando o objeto pessoa do dono do email
	    	$proprietarioEmail = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaObjetoProprietarioEmail($email);
	    	
	    	// se a submissao nao foi feita do form de aceite dos termos de uso, carrega o form de aceite dos termos
	    	if (!isset($_POST['BasicoAceiteTermosUsoAceiteTermosUso'])) {

	    		// encaminhando para a acao que exibe formulario de aceite dos termos de uso do sistema
	    		return $this->forward('exibirformaceitetermosuso', 'login', 'basico');
	    	}
    	}
    }
    
	/**
	 * Redireciona para view erroemailvalidadoexistentenosistemaAction
	 * 
	 * @return void
	 */
    public function erroemailvalidadoexistentenosistemaAction()
    {
        // carregando o titulo, subtitulo e mensagem da view
		//Basico_OPController_AcaoAplicacaoAssocVisaoOPController::adicionaContentVisao($this->view, Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO')));
		//Basico_OPController_AcaoAplicacaoAssocVisaoOPController::adicionaContentVisao($this->view, Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO')));
		//Basico_OPController_AcaoAplicacaoAssocVisaoOPController::adicionaContentVisao($this->view, Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM')));
	    
	    // renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
    
	/**
	 * Redireciona para view erroemailnaovalidadoexistentenosistemaAction
	 * 
	 * @return void
	 */
    public function erroemailnaovalidadoexistentenosistemaAction()
    {
		// carregando o titulo, subtitulo e mensagem da view
		//Basico_OPController_AcaoAplicacaoAssocVisaoOPController::adicionaContentVisao($this->view, Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO')));
		//Basico_OPController_AcaoAplicacaoAssocVisaoOPController::adicionaContentVisao($this->view, Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO')));
		//Basico_OPController_AcaoAplicacaoAssocVisaoOPController::adicionaContentVisao($this->view, Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM')));
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}