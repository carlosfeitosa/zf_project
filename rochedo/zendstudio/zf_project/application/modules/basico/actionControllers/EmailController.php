<?php

/**
 * Controlador Email
 *
 */

/**
 * Controlador Email
 * 
 * @uses Basico_Model_Email
 */
class Basico_EmailController extends Zend_Controller_Action
{
    /**
	* @var object
	*/
	private $request;
	
	/**
	 * Função que inicializa o action controller
	 * 
	 * @see library/Zend/Controller/Zend_Controller_Action#init()
	 */
	public function init()
    {
    	// recuperando a requisicao
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }
    
	/**
     * retorna o formulario de aceite de termos de uso inicializado
     * 
     * @param Int $idPessoa
     */
    private function initFormAceiteTermosUso($idPessoa)
    {
    	// recuperando o objFormulario
    	$form = new Basico_Form_AceiteTermosUso();
			    
    	// adicionando elemento hidden com o id da pessoa
		Basico_OPController_UtilOPController::adicionaElementoForm($form, 'hidden', 'idPessoa', array('value' => $idPessoa));
			    
		// setando atributos de tamanho do formulario e dos displayGroups
		$form->setAttrib('style', 'width: 472px;');
		$form->getDisplayGroup('download')->setAttrib('style', 'width: 455px;');
		$form->getDisplayGroup('aceite')->setAttrib('style', 'width: 455px;');
		
		// setando conteudo do textArea dos termos de uso
		$form->getElement('BasicoAceiteTermosUsoTermosUso')->setValue(Basico_OPController_UtilOPController::retornaConteudoArquivo(PUBLIC_PATH . "/docs/termos/termo.txt"));

		// recuperando a url da acao de cancelamento do cadastro
		$urlCancelarCadastro = $this->view->urlEncrypt($this->view->url(array('module' => 'basico', 'controller' => 'login', 'action' => 'cancelarcadastro', 'idPessoa' => $idPessoa)));
		
		// setando link para download do termo
		$form->getElement('BasicoAceiteTermosUsoHtmlButtonCancelar')->setAttrib('onclick', "location.href='{$urlCancelarCadastro}'");
		
		// recuperando a url do arquivo para montar link para download
		$urlArquivoTermos = "http://" . $_SERVER['HTTP_HOST'] . $this->view->baseUrl() . "/docs/termos/termo.txt";
		
		// setando link para download do termo de uso
		$form->getElement('BasicoAceiteTermosUsoLinks')->setValue("<a href='$urlArquivoTermos'><img src='{$this->view->baseUrl()}/images/icons/pdf.png'></a>");
			    
		// recuperando a string de confirmação do aceite
    	$stringConfirmacao = Basico_OPController_TradutorOPController::getInstance()->retornaTraducaoViaSQL("FORM_ACEITE_TERMOS_USO_STRING_CONFIRMACAO");
			    
    	// substituindo string de confirmacao no label do campo de confirmacao do aceite
		$elementoAceiteLabel = str_replace(FORM_ACEITE_TERMOS_USO_TAG_STRING_CONFIRMACAO, $stringConfirmacao, $form->getElement('BasicoAceiteTermosUsoAceiteTermosUso')->getLabel());
		
		return $form;
    }

    /**
     * Valida um e-mail
     * 
     * @return void
     */
    public function validaremailAction()
    {
    	// recuperando o token da sessao
    	$token = $this->request->getParam('t');

    	// recuperando o objeto token e-mail
    	$tokenObj = Basico_OPController_TokenOPController::getInstance()->retornaObjetoTokenEmailPorToken($token);

    	// verificando se o objeto existe
    	if ($tokenObj == NULL){
    		// redirecionando para view de erro token invalido
    		$this->_helper->redirector('errotokeninvalido');  
    	}
    	
    	// recuperando o e-mail
    	$email   = Basico_OPController_EmailOPController::getInstance()->retornaObjetoEmailPorId($tokenObj->idGenerico);
    	
    	// verificando se o email eh primario
    	if (!Basico_OPController_EmailOPController::getInstance()->verificaEmailPrimario($email)) {
    		
    		// validando o email
    		Basico_OPController_EmailOPController::getInstance()->validarEmail($email);
    		
    		// carregando mensagem na view
    		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor("VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO"));
    		
    		// renderizando a view
    		$this->_helper->Renderizar->renderizar();
    		
    		return;
    	}

    	//verificando se o usuario possui o perfil de UsuarioValidado
    	if (Basico_OPController_PessoasPerfisOPController::getInstance()->possuiPerfilUsuarioValidadoPorEmail($email)) {
    		// redirecionando para o action erroemailvalidadoexistentenosistema do loginController
            $this->_redirect($this->view->urlEncryptModuleControllerAction('basico', 'login', 'erroemailvalidadoexistentenosistema', null, true));
            exit;
    	}
    	
    	// recuperando data hora de expiracao
    	$dataHoraExpiracaoUnixTimeStamp = Basico_OPController_UtilOPController::retornaTimestamp($tokenObj->datahoraExpiracao);
    	// recuperando a data hora atual
    	$dataHoraAtualUnixTimeStamp = Basico_OPController_UtilOPController::retornaTimestamp();

    	// verificando se o objeto existe
    	if ($email != NULL) {
			// checando expiracao do token
	    	if ($dataHoraExpiracaoUnixTimeStamp < $dataHoraAtualUnixTimeStamp){
	    		// redirecionando para view de token expirado
	    		$this->_helper->redirector('errotokenexpirado');   		
	    	}
	    	
	    	// recuperando o objeto pessoa do dono do email
	    	$proprietarioEmail = Basico_OPController_EmailOPController::getInstance()->retornaObjetoProprietarioEmail($email);
	    	
	    	// se a submissao nao foi feita do form de aceite dos termos de uso, carrega o form de aceite dos termos
	    	if (!isset($_POST['BasicoAceiteTermosUsoAceiteTermosUso'])) {

	    		// carregando array do cabecalho da view
				$content[] = '<h3>'.$this->view->tradutor('VIEW_ACEITE_TERMOS_USO_TITULO').'</h3>'; 
				$content[] = '<h4>'.$this->view->tradutor('VIEW_ACEITE_TERMOS_USO_SUBTITULO').'</h4>';
					    
				$form = $this->initFormAceiteTermosUso($proprietarioEmail->id);
					    
			    // carregando form na view
			    $content[] = $form;
			    $this->view->content = $content;
		
			    $this->_helper->Renderizar->renderizar();
			    
			    return;
			    
	    	}
	    	
	    	// recuperando a string de confirmação do aceite
	    	$stringConfirmacao = Basico_OPController_TradutorOPController::getInstance()->retornaTraducaoViaSQL("FORM_ACEITE_TERMOS_USO_STRING_CONFIRMACAO");
	    	
	    	// verificando a digitação do aceite
	    	if (strtoupper($_POST['BasicoAceiteTermosUsoAceiteTermosUso']) === strtoupper($stringConfirmacao)) {
	    		
	    		// registrando data do aceite na sessao
		    	$session = Basico_OPController_SessionOPController::registraSessaoUsuario();
		    	$session->dataAceite = Basico_OPController_UtilOPController::retornaDateTimeAtual();
		    	
		    	// recuperando dadosPessoais da pessoa
		    	$dadosPessoais = Basico_OPController_DadosPessoaisOPController::getInstance()->retornaObjetoDadosPessoaisPorIdPessoa($proprietarioEmail->id);
		    	
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
				$mensagensPasswordStrenghtChecker = Basico_OPController_LoginOPController::getInstance()->retornaJsonMensagensPasswordStrengthChecker();
				
	            //adicionando chamada a função do password strength checker para o campo senha
			    $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenha->setAttribs(array('onKeyUp' => "chkPass(document.forms['BasicoCadastrarUsuarioValidado'].BasicoCadastrarUsuarioValidadoSenha.value, {$mensagensPasswordStrenghtChecker})"));
				
				//adicionando multiOptions do radioButton sexo
				$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSexo->addMultiOptions(array(0 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_MASCULINO'), 1 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_FEMININO')));
	
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
				$content[] = '<h3>'.$this->view->tradutor('VIEW_ACEITE_TERMOS_USO_TITULO').'</h3>'; 
				$content[] = '<h4>'.$this->view->tradutor('VIEW_ACEITE_TERMOS_USO_SUBTITULO').'</h4>';
	
				// recuperando form inicializado
				$form = $this->initFormAceiteTermosUso($proprietarioEmail->id);
	
		    	// carregando form na view
		    	$content[] = $form;
		    	$this->view->content = $content;
		    	
		    	$this->_helper->Renderizar->renderizar();
	    	}
    	}
    }

    /**
     * Redireciona para view de Token Expirado
     * 
     * @return void
     */
    public function errotokenexpiradoAction() 
    {
    	// carregando titulo, link para re-cadastro e mensagem
        $tituloView            = $this->view->tradutor(MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO);
        $linkRecomecarCadastro = $this->view->tradutor(LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO);
        $mensagemView          = "<a href='../login/cadastrarUsuarioNaoValidado/'>{$linkRecomecarCadastro}</a>";
        
        // carregando array com o cabecalho da view
    	$content[] = $tituloView;
    	$content[] = $mensagemView;
    
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }    

    /**
     * Redireciona para a view de Token Invalido
     * 
     *  @return void
     */
    public function errotokeninvalidoAction() 
    {
    	// carregando titulo, link para re-cadastro e mensagem
        $content[] = $this->view->tradutor(MSG_TOKEN_EMAIL_VALIDACAO_INVALIDO);
    
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }    
}