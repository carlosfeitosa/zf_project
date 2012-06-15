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
    		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor("VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO"));
    		
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

	    		// carregando array do cabecalho da view
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_ACEITE_TERMOS_USO_TITULO')); 
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_ACEITE_TERMOS_USO_SUBTITULO'));
					    
				$form = Basico_OPController_PessoaLoginOPController::getInstance()->initFormAceiteTermosUso($proprietarioEmail->id);
					    
			    // carregando form na view
			    $content[] = $form;
			    $this->view->content = $content;
		
			    $this->_helper->Renderizar->renderizar();
			    
			    return;
			    
	    	}
	    	
	    	// recuperando a string de confirmação do aceite
	    	$stringConfirmacao = Basico_OPController_UtilOPController::removeCaracteresString(array('"', " "), Basico_OPController_DicionarioExpressaoOPController::getInstance()->retornaTraducaoViaSQL("FORM_ACEITE_TERMOS_USO_STRING_CONFIRMACAO"));
	    	
	    	// verificando a digitação do aceite
	    	if (strtoupper(Basico_OPController_UtilOPController::removeCaracteresString(array('"', " "), $_POST['BasicoAceiteTermosUsoAceiteTermosUso'])) === strtoupper($stringConfirmacao)) {
	    		
	    		// registrando data do aceite na sessao
		    	$session = Basico_OPController_SessionOPController::registraSessaoUsuario();
		    	$session->dataAceite = Basico_OPController_UtilOPController::retornaDateTimeAtual();
		    	
		    	// recuperando dadosPessoais da pessoa
		    	$dadosPessoais = Basico_OPController_PessoaAssocDadosOPController::getInstance()->retornaObjetoDadosPessoaisPorIdPessoa($proprietarioEmail->id);
		    	
		    	// recuperando a versao da tupla de dadosPessoais
		    	$versaoDadosPessoais = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($dadosPessoais, true);
	    	
	    	    // carregando o titulo e subtitulo da view
			    $tituloView     = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO'));
			    $subtituloView  = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO'));
	
			    // carregando o array de conteúdo da página
		    	$content[] = $tituloView;
		    	$content[] = $subtituloView;
			    
				// formando a url do metodo que verifica disponibilidade de login via json
				$urlMetodo = Basico_OPController_UtilOPController::retornaStringEntreCaracter(Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . "/basico/login/verificadisponibilidadelogin/stringPesquisa/", "'");
	
				// instanciando o formulario de cadastrar usuario validado
				$formCadastrarUsuarioValidado = new Basico_Form_CadastrarUsuarioValidado();
				$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoNome->setValue($dadosPessoais->nome);
				$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoLogin->setAttribs(array('onBlur' => "verificaDisponibilidade('login', 'login', this.value, document.getElementById('idPessoa').value ,dijit.byId('BasicoCadastrarUsuarioValidadoNome').getValue(), dijit.byId('BasicoCadastrarUsuarioValidadoDataNascimento').getValue(), {$urlMetodo})", 'onkeyup' => "validaString(this, 'login')", 'onblur' => "validaString(this, 'login')"));
				
				// recuperando mensagem do componente password strenght checker
				$mensagensPasswordStrenghtChecker = Basico_OPController_UtilOPController::retornaJsonMensagensPasswordStrengthChecker();
				
	            //adicionando chamada a função do password strength checker para o campo senha
			    $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenha->setAttribs(array('onKeyUp' => "chkPass(document.forms['BasicoCadastrarUsuarioValidado'].BasicoCadastrarUsuarioValidadoSenha.value, {$mensagensPasswordStrenghtChecker})"));
				
				//adicionando multiOptions do radioButton sexo
				$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSexo->addMultiOptions(array(0 => $this->view->tradutor('GENERO_MASCULINO'), 1 => $this->view->tradutor('GENERO_FEMININO')));
	
				// setando valores dos hiddens do formulario
				$formCadastrarUsuarioValidado->addElement('hidden', 'idPessoa', array('value' => $proprietarioEmail->id));
				$formCadastrarUsuarioValidado->addElement('hidden', 'versaoDadosPessoais', array('value' => $versaoDadosPessoais));
				
				$formCadastrarUsuarioValidado->idPessoa->removeDecorator('Label');
				$formCadastrarUsuarioValidado->versaoDadosPessoais->removeDecorator('Label');
				
				$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setMessages(array(Zend_Validate_Identical::NOT_SAME => $this->view->tradutor('FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_SENHA_CONFIRMACAO')));
				$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setToken('BasicoCadastrarUsuarioValidadoSenha');
				
				
				// carregando o array de conteúdo da página
		    	$content[] = $formCadastrarUsuarioValidado;
		    	
				// enviado conteúdo para a view
				$this->view->content = $content;
				
				// renderizando a view
				$this->_helper->Renderizar->renderizar();
	    	}else{
	    		// carregando array do cabecalho da view
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_ACEITE_TERMOS_USO_TITULO')); 
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_ACEITE_TERMOS_USO_SUBTITULO'));
	
				// recuperando form inicializado
				$form = Basico_OPController_PessoaLoginOPController::getInstance()->initFormAceiteTermosUso($proprietarioEmail->id);
	
		    	// carregando form na view
		    	$content[] = $form;
		    	$this->view->content = $content;
		    	
		    	$this->_helper->Renderizar->renderizar();
	    	}
    	}
    }   
}