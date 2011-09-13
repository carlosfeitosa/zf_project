<?php
/**
 * Login Controller
 *
 * Controla Ações de Login/Logout e Cadastro do sistema.
 * 
 * @uses       Basico_Model_Login
 * @subpackage Controller
 * @author João Henrique M.Bione (joao.henrique.bione@rochedoproject.com)
 * @since 23/03/2011
 */

class Basico_LoginController extends Zend_Controller_Action
{	
    /**
	 * Inicializa controlador Login
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
        
		/*
		// adicionando os contextos e definindo as permissoes por acao
    	$this->_helper->contextSwitch()
    					->addContext('pdf', $pdfParametros)
    					->addContext('xls', $xlsParametros)
    					->addContext('plaintext', $plaintextParametros)
    					->addContext('impressao', $impressaoParametros)
        	            ->addActionContext('cadastrarusuarionaovalidado', array('pdf', 'plaintext', 'impressao'))
						->setAutoJsonSerialization(true)
						->initContext();
		*/
    }

    /**
	 * Retorna Formulário de Cadastro de Novo Usuario
	 * 
	 * @return Basico_Form_CadastrarUsuarioNaoValidado
	 */
    public function getFormCadastroUsuarioLoginNaoValidado()
    {
        return new Basico_Form_CadastrarUsuarioNaoValidado();
    }

    /**
	 * Retorna Formulário de Cadastro de Usuario Validado
	 * 
	 * @return Basico_Form_CadastrarUsuarioValidado
	 */
    public function getFormCadastroUsuarioValidado()
    {                  
        return new Basico_Form_CadastrarUsuarioValidado();
    }

    /**
	 * Valida Formulário de Cadastro de Novo Usuário nao validado.
	 * 
	 * @param  Basico_Form_CadastrarUsuarioNaoValidado $formEntrada 
	 * 
	 * @return Boolean
	 */
	private function validaForm(Basico_Form_CadastrarUsuarioNaoValidado $formEntrada)
	{
		// verificando se a requisicao eh foi enviada por post
		if (!$this->getRequest()->isPost()) {
			// redirecionando para o proprio formulario
            return $this->_forward($formEntrada->getName());
        }
        
        // verificando se o formulario passou pela validacao
		if (!$formEntrada->isValid($this->getRequest()->getPost())) {
			// recuperando o formulario
            $this->view->content = array($formEntrada);
            
            return;
        }
        return true;
	}
    
    /**
	 * Ação principal do controlador Login. Seta o form na view
	 * 
	 * @return void
	 */
    public function indexAction()
    {
    	// setando o form na view
        $this->view->content = array($this->getForm());
    }
    
    /**
	 * Carrega formulário de cadastro de novo usuário no atributo form da view.
	 * 
	 * @return void 
	 */
    public function cadastrarusuarionaovalidadoAction()
    {   
        // carregando o titulo e subtitulo da view
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO));
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO));

    	// carrega o formulario na view
    	$content[] = $this->getFormCadastroUsuarioLoginNaoValidado();
		
    	// enviado conteúdo para a view
    	$this->view->content = $content; 
    	
		// renderiza a view no script default
		$this->_helper->Renderizar->renderizar();
    }
    
    
    private function initFormCadastrarUsuarioValidado(Basico_Form_CadastrarUsuarioValidado &$formCadastrarUsuarioValidado, $idPessoa, $versaoDadosPessoais)
    {
    	// inserindo elementos hidden e setando valores
    	Basico_OPController_UtilOPController::adicionaElementoForm($formCadastrarUsuarioValidado, 'hidden', 'idPessoa', array('value' => $idPessoa));
    	Basico_OPController_UtilOPController::adicionaElementoForm($formCadastrarUsuarioValidado, 'hidden', 'versaoDadosPessoais', array('value' => $versaoDadosPessoais));
    	// removendo labels dos elementos hidden
	    $formCadastrarUsuarioValidado->idPessoa->removeDecorator('Label');
		$formCadastrarUsuarioValidado->versaoDadosPessoais->removeDecorator('Label');
		
		//adicionando chamada a função do password strength checker para o campo senha
		$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenha->setAttribs(array('onKeyUp' => "chkPass(document.forms['BasicoCadastrarUsuarioValidado'].BasicoCadastrarUsuarioValidadoSenha.value, " . Basico_OPController_LoginOPController::getInstance()->retornaJsonMensagensPasswordStrengthChecker() . ")"));
		
		//adicionando multi-options para o radioButton sexo
	    $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSexo->addMultiOptions(array(0 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_MASCULINO'), 1 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_FEMININO')));
	    
	    // setando mensagens do validator Identical para o campo senhaConfirmacao
	    $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setMessages(array(Zend_Validate_Identical::NOT_SAME => $this->view->tradutor('FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_SENHA_CONFIRMACAO')));
	    // setando o campo que tem que ser identico ao campo senhaConfirmacao
		$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setToken('BasicoCadastrarUsuarioValidadoSenha');
		
		// capturando a url do metodo que retorna se o login esta disponivel ou nao 
	    $urlMetodo = Basico_OPController_UtilOPController::retornaStringEntreCaracter(Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . "/basico/login/verificadisponibilidadelogin/stringPesquisa/", "'");
	    	
	    // adicionando a chamada da função que verifica a disponibilidade do login a ser utilizado.
	    $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoLogin->setAttribs(array('onBlur' => "verificaDisponibilidade('login', 'login', this.value, document.getElementById('idPessoa').value ,dijit.byId('BasicoCadastrarUsuarioValidadoNome').getValue(), dijit.byId('BasicoCadastrarUsuarioValidadoDataNascimento').getValue(), {$urlMetodo})", 'onkeyup' => "validaString(this, 'login')", 'onblur' => "validaString(this, 'login')"));
	    
	    // colocando o div do password strenght checker
	    $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoPasswordStrengthChecker->setValue("<div id='scorebarBorder'><div id='score'>0%</div><div id='scorebar'>&nbsp;</div></div><div id='complexity'></div>");
    }

    /**
     * Salva os dados do usuario validado atraves dos dados submetidos pelo formulario Basico_Form_CadastrarUsuarioValidado
     * 
     * @param Array $arrayPost
     * @param Basico_Form_CadastrarUsuarioValidado $formCadastrarUsuarioValidado
     */
    private function salvarDadosUsuarioValidado($arrayPost, Basico_Form_CadastrarUsuarioValidado $formCadastrarUsuarioValidado)
    {
    	try {
    		// iniciando a transação
			Basico_OPController_PersistenceOPController::bdControlaTransacao();
    		
	    	// inicializando o formulario
	    	$this->initFormCadastrarUsuarioValidado($formCadastrarUsuarioValidado, $arrayPost['idPessoa'], $arrayPost['versaoDadosPessoais']);
	    	
	    	// validando formulario
		    if ($formCadastrarUsuarioValidado->isValid($arrayPost)) {
		    		
		    	// verificando a disponibilidade do login
		    	if (!Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoLogin'))) {
		    		
		    		// carregando array do cabecalho da view
				    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO'));
				    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO'));
		    		
		    		// recuperando o titulo do dialog
			   		$tituloDialogSugestaoLogin = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('FORM_TITLE_SUGESTAO_LOGIN');
			   		
			   		// escrevendo mensagem de login nao disponivel	
					$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoLoginDisponivel->setValue("<span style='color: red; font-weight: bold;'>" .
							str_replace(MENSAGEM_TAG_LINK_SUGESTOES_LOGIN, "<a href='#' onclick=\"exibirDialogUrl('Basico_Form_SugestaoLogin', '/rochedo_project/public/basico/login/exibirformsugestaologin/stringPesquisa/" . $arrayPost['BasicoCadastrarUsuarioValidadoLogin'] . "/idPessoa/" . $arrayPost['idPessoa'] . "/nome/" . $arrayPost['BasicoCadastrarUsuarioValidadoNome'] . "/dataNascimento/" . $arrayPost['BasicoCadastrarUsuarioValidadoDataNascimento'] . "', '{$tituloDialogSugestaoLogin}');\">{$this->view->tradutor("MENSAGEM_TEXTO_LINK_AQUI")}</a>", $this->view->tradutor('LOGIN_DISPONIBILIDADE_LABEL_LOGIN_NAO_DISPONIVEL')) .
							"</span>");
					
					$content[] = $formCadastrarUsuarioValidado;
					
					// enviado conteúdo para a view
		    		$this->view->content = $content;
		    		
		    		return;
		    	}
		
		    	// salvando os dados pessoais
		    	Basico_OPController_DadosPessoaisOPController::getInstance()->salvarDadosPessoaisViaFormCadastrarUsuarioValidado($arrayPost);
		    	
		    	// salvando os dados biometricos do usuario
		   		Basico_OPController_DadosBiometricosOPController::getInstance()->salvarDadosBiometricosViaFormCadastrarUsuarioValidado($arrayPost);
	
		   		// salvando e recuperando o login do usuario
		   		$novoLogin = Basico_OPController_LoginOPController::getInstance()->salvarLoginViaFormCadastrarUsuarioValidado($arrayPost);	    	
		    		
		   		// recuperando o email primario da pessoa
		    	$emailPrimario = Basico_OPController_EmailOPController::getInstance()->retornaObjetoEmailPrimarioPessoa($arrayPost['idPessoa']);
		    	
		    	// validando o email primario do usuario
		    	Basico_OPController_EmailOPController::getInstance()->validarEmailPrimarioPessoa($arrayPost['idPessoa']);
		    	
		    	// atualizando pessoaPerfil do usuario para usuarioValidado
			    Basico_OPController_PessoasPerfisOPController::getInstance()->editarPessoaPerfil($arrayPost['idPessoa'], Basico_OPController_PerfilOPController::getInstance()->retornaObjetoPerfilUsuarioNaoValidado()->id, Basico_OPController_PerfilOPController::getInstance()->retornaObjetoPerfilUsuarioValidado()->id);

		    	// verificando credenciais
				if (Basico_OPController_AutenticadorOPController::getInstance()->retornaAutenticacaoUsuarioPorLoginSenha($novoLogin->login, $novoLogin->senha)) { 
				 	// efetuando o logon
				   	Basico_OPController_LoginOPController::getInstance()->efetuaLogon($novoLogin->login);
				}
				
				// recuperando a mensagem de confirmacao da conclusao do cadastro
			    $mensagemConclusaoCadastro = Basico_OPController_LoginOPController::getInstance()->retornaMensagemConfirmacaoConclusaoCadastroUsuarioValidado($arrayPost['idPessoa'], $emailPrimario->email);
			    	
			    // enviando a mensagem
		        Basico_OPController_MensageiroOPController::getInstance()->enviar($mensagemConclusaoCadastro, Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL(), array(Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($arrayPost['idPessoa'])));
			    
		    	// salvando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

				// redirecionando para a view de sucesso na conclusao do cadastro
				$this->_forward('sucessosalvarusuariovalidado');
				
	    	}else{
	    		
	    		// carregando array do cabecalho da view
			    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO')); 
			    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO'));
			    
			    // inicializando o formulario
	    		$this->initFormCadastrarUsuarioValidado($formCadastrarUsuarioValidado, $arrayPost['idPessoa'], $arrayPost['versaoDadosPessoais']);
			    
	    		// carregando form na view
	    		$content[] = $formCadastrarUsuarioValidado;
	    		
	    		// enviado conteúdo para a view
	    		$this->view->content = $content;  
	    	}
	    	
	    	$this->_helper->Renderizar->renderizar();
	    	
    	}catch (Exception $e){
    		// voltando a transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
			throw new Exception($e->getMessage());
    	}
    }
    
    /**
     * Cadastra o usuario já validado.
     * @return void
     */
    public function salvarusuariovalidadoAction()
    {
    	try {
	        // recuperando dados da requisição
	        $post                = $this->getRequest()->getPost();
	    	$idPessoa            = (int) $post['idPessoa'];
	    	$sexo                = (int) $post['BasicoCadastrarUsuarioValidadoSexo'];
	    	$versaoDadosPessoais = (int) $post['versaoDadosPessoais'];
	    	
	    	// recuperando data do aceite dos termos de uso do sistema
	    	$session = Basico_OPController_SessionOPController::registraSessaoUsuario();
	    	
	    	if ($session->dataAceite != "") { 
	    		
	    		// colocando a data do aceite no array do post
	    		$post['dataAceite'] = $session->dataAceite;
	    		
		    	// inicializando controladores
		    	$controladorLogin = Basico_OPController_LoginOPController::getInstance();
		    	
		    	// recuperando formulario e setando propriedades
		        $formCadastrarUsuarioValidado = $this->getFormCadastroUsuarioValidado();
		        
		        // inicializando formulario
		        $this->initFormCadastrarUsuarioValidado($formCadastrarUsuarioValidado, $idPessoa, $versaoDadosPessoais);
				
		        // salvando dados do usuario
	        	$this->salvarDadosUsuarioValidado($post, $formCadastrarUsuarioValidado);
	        	
    		}else{
    			// carregando array do cabecalho da view
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_ACEITE_TERMOS_USO_TITULO')); 
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_ACEITE_TERMOS_USO_SUBTITULO'));
	
				// recuperando form inicializado
				$form = Basico_OPController_LoginOPController::getInstance()->initFormAceiteTermosUso($proprietarioEmail->id);
	
		    	// carregando form e conteudo na view
		    	$content[] = $form;
		    	$this->view->content = $content;
		    	
    		}
		        
    		// renderizando a view
	        $this->_helper->Renderizar->renderizar();
	        
    	}catch(Exception $e){
    		// lançando o erro
	        throw new Exception($e->getMessage());
    	}
    }

	public function sucessosalvarusuariovalidadoAction()
	{
		// carregando array do cabelho
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_TITULO"));
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_SUBTITULO"));
    	$content[] = str_replace(MENSAGEM_TAG_LINK_MEU_PERFIL , 
    	                                                       "<a href='{$this->view->urlEncrypt($this->_helper->url('index', 'dadosusuario', 'basico'))}'>{$this->view->tradutor("MENSAGEM_TEXTO_LINK_AQUI")}</a>",
    	                                                       Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_MENSAGEM"))
    	                                                       );

		// enviado conteúdo para a view
        $this->view->content = $content;

		// renderiza a view no script default
		$this->_helper->Renderizar->renderizar();
	}

    /**
     * Checa se o login está disponivel;
     * @return void
     */
    public function verificadisponibilidadeloginAction()
    {
    	// recuperando os parametros da requisicao
    	$post = $this->getRequest()->getParams();
    	
    	if ($post['stringPesquisa'] != "") {
	    	//desabilitando layout e render
	    	$this->_helper->layout()->disableLayout();
	        $this->_helper->viewRenderer->setNoRender(true);
	
	        //checando a disponibilidade do login
	    	$loginDisponivel = Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $post['stringPesquisa']);
	    	
	    	
	    	
	    	if (!$loginDisponivel) {
	    		
	    		// recuperando o titulo do dialog
	    		$tituloDialogSugestaoLogin = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('FORM_TITLE_SUGESTAO_LOGIN');
	    		
	    		// escrevendo mensagem de login nao disponivel	
				echo "<span style='color: red; font-weight: bold;'>" .
					 	str_replace(MENSAGEM_TAG_LINK_SUGESTOES_LOGIN, "<a href='#' onclick=\"exibirDialogUrl('Basico_Form_SugestaoLogin', '/rochedo_project/public/basico/login/exibirformsugestaologin/stringPesquisa/" . $post['stringPesquisa'] . "/idPessoa/" . $post['idPessoa'] . "/nome/" . $post['nome'] . "/dataNascimento/" . $post['dataNascimento'] . "', '{$tituloDialogSugestaoLogin}');\">{$this->view->tradutor("MENSAGEM_TEXTO_LINK_AQUI")}</a>", $this->view->tradutor('LOGIN_DISPONIBILIDADE_LABEL_LOGIN_NAO_DISPONIVEL')) .
				     "</span>";
				
			}else{
				// escrevendo mensagem de login disponivel
			    echo "<span style='color: green; font-weight: bold;'>{$this->view->tradutor('LOGIN_DISPONIBILIDADE_LABEL_LOGIN_DISPONIVEL')}</span>";
			    
			}
    	}else{
    		echo "";
    	}
    	
    }
    
    /**
	 * Verifica a existência ou não do email a ser cadastrado no sistema e toma uma das seguintes ações: 
	 * Cadastro ou re-envio de email ou mensagem alertando sobre email existente e já validado.
	 * 
	 * @return void
	 */
    public function verificanovologinAction()
    {
    	// carregando o formulario
    	$form = $this->getFormCadastroUsuarioLoginNaoValidado();

    	// verificando se o formulario passou por sua validacao
        if($this->validaForm($form) == true){
        	
	        // recuperando parametros
            $email             = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail');
            
            // verifica se o e-mail existe no banco de dados
	        $emailParaValidacao = Basico_OPController_EmailOPController::getInstance()->verificaEmailExistente($email);

	        // checando o resultado da verificacao de existencia do e-mail
	        if ($emailParaValidacao !== NULL){

	        	// recuperando parametros
		        $idEmail           = Basico_OPController_EmailOPController::getInstance()->retornaIdEmailPorEmail($email);
	            $idCategoriaToken  = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	            $idPessoa          = Basico_OPController_EmailOPController::getInstance()->retornaIdProprietarioEmailPorIdEmail($idEmail);

	        	// checando se o e-mail ja foi validado
	            if ($emailParaValidacao == true){
	            	// recuperando pessoa perfil de usuario validado
	            	$idPessoaPerfil    = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoa)->id;

	            	// enviando mensagem de aviso de tentativa de registro utilizando o email primario de usuario do sistema
	            	
	            	// setando e salvando mensagem
			        $novaMensagem = Basico_OPController_LoginOPController::getInstance()->retornaMensagemTentativaRegistroEmailPrimario($idPessoa, $email);       
			             
			        // enviando a mensagem
			        Basico_OPController_MensageiroOPController::getInstance()->enviar($novaMensagem, Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL(), array($idPessoaPerfil));
			            
	            	// recuperando url tokenizada
	            	//$urlTokenizada = $this->view->urlEncryptModuleControllerAction('basico', 'login', 'erroemailvalidadoexistentenosistema', null, true);

	            	// redirecionando o usuario
	            	$this->_forward('erroemailvalidadoexistentenosistema');
				}else {
	            	// iniciando a transacao
           			Basico_OPController_PersistenceOPController::bdControlaTransacao();

	            	try {
		            	// recuperando pessoa perfil de usuario validado
		            	$idPessoaPerfil    = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioNaoValidadoPorIdPessoa($idPessoa)->id;

			            // setando e salvando token
			            $idNovoToken = Basico_OPController_TokenOPController::getInstance()->retornaIdNovoObjetoToken($idEmail, $idCategoriaToken);
			             
			            // setando e salvando mensagem
			            $novaMensagem = Basico_OPController_LoginOPController::getInstance()->retornaMensagemCadastroUsuarioNaoValidadoReenvio($idPessoa, $email, Basico_OPController_TokenOPController::getInstance()->retornaTokenEmailPorId($idNovoToken));       
			             
			            // enviando a mensagem
			            Basico_OPController_MensageiroOPController::getInstance()->enviar($novaMensagem, Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL(), array($idPessoaPerfil));
			             
			            // salvando a transacao
			            Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

						// recuperando url tokenizada
	            		$urlTokenizada = $this->view->urlEncryptModuleControllerAction('basico', 'login', 'erroemailnaovalidadoexistentenosistema', null, true);

		            	// redirecionando o usuario
		            	$this->_forward('erroemailnaovalidadoexistentenosistema');		                
	            	}catch(Exception $e) {
	            		// cancelando a transacao
	            		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

	            		throw new Exception($e->getMessage());
	            	}
	           	}
	        }
	        else {
	        	// redirecionando para a acao de salvar usuario nao validado
	            $this->salvarusuarionaovalidadoAction();
	        }
        }       	
       	
		// carregando o titulo e subtitulo da view
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO));
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO));
    	$content[] = $form;
          
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();        
    }
    
    /**
	 * Inseri os dados do novo usuário no banco de dados, envia mensagem de confirmação e email e salva 
	 * log da operação.
	 * 
	 * @return void
	 */
    public function salvarusuarionaovalidadoAction()
    {
        // iniciando transacao
        Basico_OPController_PersistenceOPController::bdControlaTransacao();
        
        try {
            // recuperando o id da nova pessoa
            $idNovaPessoa = Basico_OPController_PessoaOPController::getInstance()->retornaIdNovoObjetoPessoa();
            
            // carregando o objeto perfil do usuario nao validado
            $objPerfilUsuarioNaoValidado = Basico_OPController_PerfilOPController::getInstance()->retornaObjetoPerfilUsuarioNaoValidado();

            // setando e salvando a relacao de pessoa com perfil
            $idNovaPessoasPerfis = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdNovoObjetoPessoasPerfis($idNovaPessoa, $objPerfilUsuarioNaoValidado->id);

            // setando e salvando os dados pessoais
            $idNovoDadosPessoais = Basico_OPController_DadosPessoaisOPController::getInstance()->retornaIdNovoObjetoDadosPessoais($idNovaPessoa, $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoNome'));

            // recuperando o id do objeto categoria de email primario
            $idCategoriaEmailPrimario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(EMAIL_PRIMARIO);

            // salvando o e-mail e recuperando o id 
            $idNovoEmail = Basico_OPController_EmailOPController::getInstance()->retornaIdNovoObjetoEmail($this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail'), $idNovaPessoa, $idCategoriaEmailPrimario);

            // recuperando objeto categoria email validacao plain text template
            $idCategoriaToken = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);

            // setando e salvando o token
            $idNovoToken = Basico_OPController_TokenOPController::getInstance()->retornaIdNovoObjetoToken($idNovoEmail, $idCategoriaToken);

            // recuperando a categoria de mensagem a ser enviada e template
            $idCategoriaTemplate = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);

            // setando e salvando a mensagem
            $nomeDestinatario = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoNome');

            // salvando e recuperando a mensagem para envio
            $objNovaMensagem = Basico_OPController_LoginOPController::getInstance()->retornaMensagemCadastroUsuarioNaoValidado($nomeDestinatario, $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail'), Basico_OPController_TokenOPController::getInstance()->retornaTokenEmailPorId($idNovoToken));
            
	        // enviando a mensagem
	        Basico_OPController_MensageiroOPController::getInstance()->enviar($objNovaMensagem, Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL(), array($idNovaPessoasPerfis));
            
            // salvando a transacao
            Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

        } catch (Exception $e) {
        	// cancelando a transacao
            Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
            
            throw new Exception($e->getMessage());
        }

        // recuperando url tokenizada
        $urlTokenizada = $this->view->urlEncryptModuleControllerAction('basico', 'login', 'SucessoSalvarUsuarioNaoValidado', null, true);

        // redirecionando para a view de sucesso na operacao
	    $this->_forward('SucessoSalvarUsuarioNaoValidado');
    }
    
    /**
	 * Redireciona para view sucessosalvarusuarionaovalidadoAction
	 * 
	 * @return void
	 */
    public function sucessosalvarusuarionaovalidadoAction()
    {
        // carregando o titulo, subtitulo e mensagem da view
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM));
	            
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
	
    /**
	 * Redireciona para view erroemailvalidadoexistentenosistemaAction
	 * 
	 * @return void
	 */
    public function erroemailvalidadoexistentenosistemaAction()
    {
        // carregando o titulo, subtitulo e mensagem da view
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM));
	    
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
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
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM));
		
		// enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
    
    /**
     * Action para exibição do formulario de sugestao de login
     */
    public function exibirformsugestaologinAction()
    {
    	//desabilitando layout e render
	    $this->_helper->layout()->disableLayout();
	    $this->_helper->viewRenderer->setNoRender(true);
	    
	    // recuperando os parametros da requisicao
	    $post = $this->getRequest()->getParams();
	    
	    // recuperando as sugestoes de login
	    $arraySugestoesLogin = Basico_OPController_LoginOPController::retornaArraySugestoesLogin($post['stringPesquisa'], $post['idPessoa'], $post['nome'], $post['dataNascimento']);
		
	    // criando o formulario
		$form = new Basico_Form_SugestaoLogin();
				
		// incluindo opcoes para escolha de login
		foreach ($arraySugestoesLogin as $sugestaoLogin) {
	    			
			$form->getElement('BasicoSugestaoLoginSugestaoLogin')->addMultiOption($sugestaoLogin, $sugestaoLogin);
		}
		
		// recuperando url da ação de verificar disponibilidade do login
		$urlMetodo = Basico_OPController_UtilOPController::retornaStringEntreCaracter(Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . "/basico/login/verificadisponibilidadelogin/stringPesquisa/", "'");
		
		// setando atributo onclick do formulario
		$form->BasicoSugestaoLoginEnviar->setAttribs(array('onClick' => "carregaSugestaoLogin({$urlMetodo});"));
		
		// escrevendo o form
    	echo $form;
    }
}