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
	* @var object
	*/
	private $request;
	
    /**
	 * Inicializa controlador Login
	 * 
	 * @return void
	 */
	public function init()
    {
    	// recuperando a requisicao
        $this->request = Basico_OPController_UtilOPController::retornaUserRequest();

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
            return $this->_helper->redirector($formEntrada->getName());
        }
        
        // verificando se o formulario passou pela validacao
		if (!$formEntrada->isValid($this->getRequest()->getPost())) {
			// recuperando o formulario
            $this->view->form = $formEntrada;
            
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
        $this->view->form = $this->getForm();
    }
    
    /**
	 * Carrega formulário de cadastro de novo usuário no atributo form da view.
	 * 
	 * @return void 
	 */
    public function cadastrarusuarionaovalidadoAction()
    {   
        // carregando o titulo e subtitulo da view
    	$tituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO);
    	$subtituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO);
    	
    	// carregando array do cabelho
    	$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
    	
    	// carregando o titulo e subtitulo na view
        $this->view->cabecalho = $cabecalho;
		
		// carrega o formulario na view
    	$this->view->form = $this->getFormCadastroUsuarioLoginNaoValidado();
    	
		// renderiza a view no script default
		$this->_helper->Renderizar->renderizar();
    }
    
    /**
     * Cadastra o usuario já validado.
     * @return void
     */
    public function salvarusuariovalidadoAction()
    {
    	try {
	        // capturando dados da requisição
	        $post     = $this->getRequest()->getPost();
	    	$idPessoa = (int) $this->getRequest()->getParam('idPessoa');
	    	$sexo     = (int) $this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoSexo');
	    	$versaoDadosPessoais = (int) $this->getRequest()->getParam('versaoDadosPessoais');
	    	
	    	// inicializando controladores
	    	$controladorLogin = Basico_OPController_LoginOPController::getInstance();
	    	
	    	// capturando formulario e setando propriedades
	        $form = $this->getFormCadastroUsuarioValidado();
	    	$form->addElement('hidden', 'idPessoa', array('value' => $idPessoa));
	    	$form->addElement('hidden', 'versaoDadosPessoais', array('value' => $versaoDadosPessoais));
	    	$form->idPessoa->removeDecorator('Label');
			$form->versaoDadosPessoais->removeDecorator('Label');
			
			//adicionando chamada a função do password strength checker para o campo senha
			$form->BasicoCadastrarUsuarioValidadoSenha->setAttribs(array('onKeyUp' => "chkPass(document.forms['CadastrarUsuarioValidado'].BasicoCadastrarUsuarioValidadoSenha.value, {$controladorLogin->retornaJsonMensagensPasswordStrengthChecker()})"));
	    	
			//adicionando multi-options para o radioButton sexo
	    	$form->BasicoCadastrarUsuarioValidadoSexo->addMultiOptions(array(0 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_MASCULINO'), 1 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_FEMININO')));
	    	
	    	// setando mensagens do validator Identical para o campo senhaConfirmacao
	    	$form->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setMessages(array(Zend_Validate_Identical::NOT_SAME => $this->view->tradutor('FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_SENHA_CONFIRMACAO')));
	    	// setando o campo que tem que ser identico ao campo senhaConfirmacao
			$form->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setToken('BasicoCadastrarUsuarioValidadoSenha');
	    	
			// capturando a url do metodo que retorna se o login esta disponivel ou nao 
	    	$urlMetodo = Basico_OPController_UtilOPController::retornaStringEntreCaracter(Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . "/basico/login/verificadisponibilidadelogin/stringPesquisa/", "'");
	    	
	    	// adicionando a chamada da função que verifica a disponibilidade do login a ser utilizado.
	    	$form->BasicoCadastrarUsuarioValidadoLogin->setAttribs(array('onBlur' => "verificaDisponibilidade('login', 'login', this.value, document.getElementById('idPessoa').value ,dijit.byId('BasicoCadastrarUsuarioValidadoNome').getValue(), dijit.byId('BasicoCadastrarUsuarioValidadoDataNascimento').getValue(), {$urlMetodo})", 'onkeyup' => "validaString(this, 'login')", 'onblur' => "validaString(this, 'login')"));
	    	
	    	if ($form->isValid($_POST)) {
	    		
	    		// verificando a disponibilidade do login
	    		if (!Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoLogin'))) {
	    			// setando mensagem de erro de login não disponivel
	    			// recuperando o titulo do dialog
		    		$tituloDialogSugestaoLogin = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('FORM_TITLE_SUGESTAO_LOGIN');
		    		
		    		// escrevendo mensagem de login nao disponivel	
					$form->BasicoCadastrarUsuarioValidadoLoginDisponivel->setValue("<span style='color: red; font-weight: bold;'>" .
							str_replace(MENSAGEM_TAG_LINK_SUGESTOES_LOGIN, "<a href='#' onclick=\"exibirDialogUrl('Basico_Form_SugestaoLogin', '/rochedo_project/public/basico/login/exibirformsugestaologin/stringPesquisa/" . $post['BasicoCadastrarUsuarioValidadoLogin'] . "/idPessoa/" . $post['idPessoa'] . "/nome/" . $post['BasicoCadastrarUsuarioValidadoNome'] . "/dataNascimento/" . $post['BasicoCadastrarUsuarioValidadoDataNascimento'] . "', '{$tituloDialogSugestaoLogin}');\">{$this->view->tradutor("MENSAGEM_TEXTO_LINK_AQUI")}</a>", $this->view->tradutor('LOGIN_DISPONIBILIDADE_LABEL_LOGIN_NAO_DISPONIVEL')) .
							"</span>");

					// setando o form para view
	    			$this->view->form = $form;
	    			$this->_helper->Renderizar->renderizar();
	    			return;
	    		}
	    		
	
	    		// iniciando a transacao
           		Basico_OPController_PersistenceOPController::bdControlaTransacao();
           		
	    	    // inicializando controladores
	    		$controladorDadosPessoais    = Basico_OPController_DadosPessoaisOPController::getInstance();
	    		$controladorLogin            = Basico_OPController_LoginOPController::getInstance();
	    		$controladorPerfil           = Basico_OPController_PerfilOPController::getInstance();
	    		$controladorPessoasPerfils   = Basico_OPController_PessoasPerfisOPController::getInstance();
	    		$controladorDadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance();
	    		$controladorEmail            = Basico_OPController_EmailOPController::getInstance();
	    		$controladorMensagem         = Basico_OPController_MensagemOPController::getInstance();
	    		$controladorMensageiro       = Basico_OPController_MensageiroOPController::getInstance();
	    		$controladorRowinfo          = Basico_OPController_RowinfoOPController::getInstance();
	    		$controladorPessoasPerfisMensagensCategorias = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance();
	
	    		// capturando obj dados pessoais da pessoa passada
	    		$dadosPessoaisObj = Basico_OPController_DadosPessoaisOPController::getInstance()->retornaObjetoDadosPessoaisPorIdPessoa($idPessoa);
	    		
	
	    		// checando se o obj dadosPessoais foi capturado com sucesso
	    		if ($dadosPessoaisObj instanceof Basico_Model_DadosPessoais === false)
	    		    throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADOS);
	    		    
	    		// setando valores do obj dadosPessoais    
	    		$dadosPessoaisObj->nome           = $this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoNome');
	    		$dadosPessoaisObj->dataNascimento = $this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoDataNascimento');
	    		
	    		// salvando os DadosPessoais
	    		$controladorDadosPessoais->salvarObjeto($dadosPessoaisObj, $versaoDadosPessoais);
	    		
	    		// atualizando pessoaPerfil do usuario para usuarioValidado
	    		$controladorPessoasPerfils->editarPessoaPerfil($idPessoa, $controladorPerfil->retornaObjetoPerfilUsuarioNaoValidado()->id, $controladorPerfil->retornaObjetoPerfilUsuarioValidado()->id);
	
	    		//criando dadosBiometricos do usuario
	    		$novoDadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_DadosBiometricosOPController');
	    		
	    		// setando a pessoa dona dos dadosBiometricos
	    		$novoDadosBiometricos->pessoa = $idPessoa;
	    		$controladorRowinfo->prepareXml($novoDadosBiometricos, true);
	    		// setando rowinfo dos DadosBiometricos
	    		$novoDadosBiometricos->rowinfo = $controladorRowinfo->getXml();
	    		
	    		// setando o sexo
	    		if ($sexo === 0)
	    		    $novoDadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO;
	    		else if ($sexo === 1)
	    		    $novoDadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO;
	
	    		// salvando os dadosBiometricos
	    		$controladorDadosBiometricos->salvarObjeto($novoDadosBiometricos);
	    		    
	    		// criando o login do usuario
	    		$novoLogin = $controladorLogin->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_LoginOPController'); 
	    		$novoLogin->pessoa = $idPessoa;
	    		$novoLogin->tentativasFalhas = 0;
	    		$novoLogin->travado = false;
	    		$novoLogin->resetado = false;
	    		$novoLogin->podeExpirar = true;
	    		
	    		$controladorRowinfo->prepareXml($novoLogin, true);
	    		$novoLogin->rowinfo = $controladorRowinfo->getXml();
	    		
	    		$novoLogin->login  = trim($this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoLogin'));
	    		$novoLogin->senha  = Basico_OPController_UtilOPController::retornaStringEncriptada(trim($this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoSenha')));
	    		$novoLogin->ativo  = true;
	    		$controladorLogin->prepareSetRowinfoXML($novoLogin);
	    		$controladorLogin->salvarObjeto($novoLogin);
	    		
	    		
	    		// recuperando o email primario do usuario
	    		$emailPrimario = $controladorEmail->retornaObjetoEmailPrimarioPessoa($idPessoa);
	    		
	    		// recuperando a ultima versao do email
	    	    $versaoUpdateEmail = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($emailPrimario);
	    		
	    		// validando o e-mail no objeto
		    	$emailPrimario->datahoraUltimaValidacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();
		    	$emailPrimario->validado = 1;
		    	$emailPrimario->ativo    = 1;
		    	
		    	// salvando o objeto e-mail no banco de dados
		    	$controladorEmail->salvarObjeto($emailPrimario, $versaoUpdateEmail);
		    	
		    	$novaMensagemConfirmacao = $controladorMensagem->retornaObjetoMensagemTemplateMensagemConfirmacaoCadastroPlainText($idPessoa);
		    	
	            // recuperando o nome do destinatario
	            $nomeDestinatario = $dadosPessoaisObj->nome;
	                     
	            $novaMensagemConfirmacao->destinatarios       = array($emailPrimario->email);
	            $novaMensagemConfirmacao->categoria           = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
	            $novaMensagemConfirmacao->dataHoraMensagem    = Basico_OPController_UtilOPController::retornaDateTimeAtual();
	            $controladorRowinfo->prepareXml($novaMensagemConfirmacao, true);
	            $novaMensagemConfirmacao->rowinfo             = $controladorRowinfo->getXml();
	            $controladorMensagem->salvarObjeto($novaMensagemConfirmacao);
	
	            // enviando a mensagem
	            $controladorMensageiro->enviar($novaMensagemConfirmacao, Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL(), array(Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa)));
	            		    	
		    	// salvando a transacao
			    Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

			    // verificando credenciais
			    if (Basico_OPController_AutenticadorOPController::getInstance()->retornaAutenticacaoUsuarioPorLoginSenha($novoLogin->login, $novoLogin->senha))
			    	// efetuando o logon
			    	Basico_OPController_LoginOPController::getInstance()->efetuaLogon($novoLogin->login);

			    // montando url para redirecionamento
			    $urlRedirect = str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $this->view->url(array('module' => 'basico', 'controller' => 'login', 'action' => 'sucessosalvarusuariovalidado'), null, true));
				// redirecionando para a acao de sucesso no cadastro do usuario
				$this->_redirect($urlRedirect);
	    	}else{
	    		
	    		 // carregando o titulo e subtitulo da view
			    $tituloView     = $this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO');
			    $subtituloView  = $this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO');
	
			    // carregando array do cabecalho da view
			    $cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
			    
			    // carregando o cabecalho na view
				$this->view->cabecalho = $cabecalho;
				
				$form->BasicoCadastrarUsuarioValidadoPasswordStrengthChecker->setValue("<div id='scorebarBorder'><div id='score'>0%</div><div id='scorebar'>&nbsp;</div></div><div id='complexity'></div>");
				
	    		// carregando form na view
	    		$this->view->form = $form;
	    		
	    		// renderizando a view
	    		$this->_helper->Renderizar->renderizar();
	    	}
    	}catch(Exception $e){
    		// cancelando a transacao
	        Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
    		// lançando o erro
	        throw new Exception($e->getMessage());
    	}
    }

	public function sucessosalvarusuariovalidadoAction()
	{
		// carregando array do cabelho
    	$cabecalho =  array('tituloView'    => $this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_TITULO"),
    	                    'subtituloView' => $this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_SUBTITULO"),
    	                    'mensagemView'  => str_replace(MENSAGEM_TAG_LINK_MEU_PERFIL , 
    	                                                       "<a href='{$this->view->urlEncrypt($this->_helper->url('index', 'dadosusuario', 'basico'))}'>{$this->view->tradutor("MENSAGEM_TEXTO_LINK_AQUI")}</a>",
    	                                                       $this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_MENSAGEM")
    	                                                       )
    	                    );

		// carregando o titulo e subtitulo na view
        $this->view->cabecalho = $cabecalho;

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
        	
	        // verifica se o e-mail existe no banco de dados
	        $emailParaValidacao = Basico_OPController_EmailOPController::getInstance()->verificaEmailExistente($this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail'));

	        // checando o resultado da verificacao de existencia do e-mail
	        if ($emailParaValidacao !== NULL){
	        	// checando se o e-mail ja foi validado
	            if ($emailParaValidacao == true){
	            	// redirecionando para view de e-mail ja validado no sistema
	            	$this->_helper->redirector('ErroEmailValidadoExistenteNoSistema');
				}
	            else {
	            	// iniciando a transacao
           			Basico_OPController_PersistenceOPController::bdControlaTransacao();

	            	try {
			             // recuperando parametros
			             $email             = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail');
			             $idEmail           = Basico_OPController_EmailOPController::getInstance()->retornaIdEmailPorEmail($email);
			             $idCategoriaToken  = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
			             $idPessoa          = Basico_OPController_EmailOPController::getInstance()->retornaIdProprietarioEmailPorIdEmail($idEmail);
			             $idPessoaPerfil    = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioNaoValidadoPorIdPessoa($idPessoa)->id;

			             // setando e salvando token
			             $idNovoToken = Basico_OPController_TokenOPController::getInstance()->retornaIdNovoObjetoToken($idEmail, $idCategoriaToken);
			             
			             // setando e salvando mensagem
			             $novaMensagem = Basico_OPController_LoginOPController::getInstance()->retornaMensagemCadastroUsuarioNaoValidadoReenvio($idPessoa, $email, Basico_OPController_TokenOPController::getInstance()->retornaTokenEmailPorId($idNovoToken));       
			             
			             // enviando a mensagem
			             Basico_OPController_MensageiroOPController::getInstance()->enviar($novaMensagem, Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL(), array($idPessoaPerfil));
			             
			             // salvando a transacao
			             Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
						
						 // redirecionando para a view de e-mail nao validado ja existente no sistema
		                 $this->_helper->redirector('ErroEmailNaoValidadoExistenteNoSistema');
		                
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
    	$tituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO);
    	$subtituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO);

    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
	            
	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;
		
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
        
        // redirecionando para a view de sucesso na operacao
		$this->_helper->redirector('SucessoSalvarUsuarioNaoValidado');
    }
    
    /**
	 * Redireciona para view sucessosalvarusuarionaovalidadoAction
	 * 
	 * @return void
	 */
    public function sucessosalvarusuarionaovalidadoAction()
    {
        // carregando o titulo, subtitulo e mensagem da view
		$tituloView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO);
		$subtituloView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO);
		$mensagemView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM);

		// carregando array cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	            
	    // setando o cabecalho da view
		$this->view->cabecalho = $cabecalho;
		
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
	    $tituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO);
	    $subtituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO);
	    $mensagemView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM);

	    // carregando array cabecalho da view
	    $cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	    
	    // setando o cabecalho da view
		$this->view->cabecalho = $cabecalho;
		
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
		$tituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO);
		$subtituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO);
		$mensagemView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM);

		// carregando array cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
		
		// setando o cabecalho da view
		$this->view->cabecalho = $cabecalho;
		
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