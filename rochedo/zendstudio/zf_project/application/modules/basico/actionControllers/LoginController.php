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

    
    public function getAuthAdapter(array $params)
    {
/*      $authAdapter = new Zend_Auth_Adapter_DbTable($db);
        return $authAdapter;
*/
    }

    public function preDispatch()
    {
/*        if (Zend_Auth::getInstance()->hasIdentity()) {
            // If the user is logged in, we don't want to show the login form;
            // however, the logout action should still be available
            if ('logout' != $this->getRequest()->getActionName()) {
                $this->_helper->redirector('index', 'index');
            }
        } else {
            // If they aren't, they can't logout, so that action should
            // redirect to the login form
            if ('logout' == $this->getRequest()->getActionName()) {
                $this->_helper->redirector('index');
            }
        }
*/
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
	    	$form->BasicoCadastrarUsuarioValidadoLogin->setAttribs(array('onBlur' => "verificaDisponibilidade('login', 'login', this.value, {$urlMetodo})", 'onkeyup' => "validaString(this, 'login')", 'onblur' => "validaString(this, 'login')"));
	    	
	    	if ($form->isValid($_POST)) {
	
	    		// iniciando a transacao
           		Basico_OPController_PersistenceOPController::bdControlaTransacao();
           		
	    	    // inicializando controladores
	    		$controladorDadosPessoais    = Basico_OPController_DadosPessoaisOPController::getInstance();
	    		$controladorLogin            = Basico_OPController_LoginOPController::getInstance();
	    		$controladorPerfil           = Basico_OPController_PerfilOPController::getInstance();
	    		$controladorPessoasPerfils     = Basico_OPController_PessoasPerfisOPController::getInstance();
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
	    		
	    		// setando rowinfo dos DadosBiometricos
	    		$novoDadosBiometricos->rowinfo = "SYSTEM_STARTUP";
	    		
	    		// setando o sexo
	    		if ($sexo === 0)
	    		    $novoDadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO;
	    		else if ($sexo === 1)
	    		    $novoDadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO;
	
	    		// salvando os dadosBiometricos
	    		$controladorDadosBiometricos->salvarObjeto($novoDadosBiometricos);
	    		    
	    		// criando o login do usuario
	    		$novoLogin = Basico_OPController_LoginOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_LoginOPController'); 
	    		$novoLogin->pessoa = $idPessoa;
	    		$novoLogin->tentativasFalhas = 0;
	    		$novoLogin->travado = false;
	    		$novoLogin->resetado = false;
	    		$novoLogin->podeExpirar = true;
	    		$novoLogin->rowinfo = "SYSTEM_STARTUP";
	    		$novoLogin->login  = trim($this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoLogin'));
	    		$novoLogin->senha  = Basico_OPController_UtilOPController::retornaStringEncriptada(trim($this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoSenha')));
	    		$novoLogin->ativo  = true;
	    		$controladorLogin->salvarObjeto($novoLogin);
	    		
	    		
	    		// recuperando o email primario do usuario
	    		$emailPrimario = $controladorEmail->retornaEmailPrimarioPessoa($idPessoa);
	    		
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
	            $novaMensagemConfirmacao->categoria           = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaEmailValidacaoPlainTextTemplate();
	            $novaMensagemConfirmacao->dataHoraMensagem    = Basico_OPController_UtilOPController::retornaDateTimeAtual();
	            $controladorRowinfo->prepareXml($novaMensagemConfirmacao, true);
	            $novaMensagemConfirmacao->rowinfo             = $controladorRowinfo->getXml();
	            $controladorMensagem->salvarObjeto($novaMensagemConfirmacao);
	
	            // setando e salvando remetente na relacao pessoas perfis mensagem categoria (remetente)
	            $idPessoaPerfilSistema = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();
	            $idCategoriaRemetente = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaRemetente();
	            $pessoasPerfisMensagensCategoriasRemetente = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoasPerfisMensagensCategoriasOPController');
	            $pessoasPerfisMensagensCategoriasRemetente->mensagem        = $novaMensagemConfirmacao->id;
	            $pessoasPerfisMensagensCategoriasRemetente->categoria       = $idCategoriaRemetente;
	            $pessoasPerfisMensagensCategoriasRemetente->pessoaPerfil    = $idPessoaPerfilSistema;
	            $controladorRowinfo->prepareXml($pessoasPerfisMensagensCategoriasRemetente, true);
	            $pessoasPerfisMensagensCategoriasRemetente->rowinfo         = $controladorRowinfo->getXml();
	            $controladorPessoasPerfisMensagensCategorias->salvarObjeto($pessoasPerfisMensagensCategoriasRemetente);
	
	            // setando e salvando destinatario na relacao pessoas perfis mensagem categoria (destinatario)
	            $idCategoriaDestinatario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaDestinatario();
	            $pessoasPerfisMensagensCategoriasDestinatario = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoasPerfisMensagensCategoriasOPController');
	            $pessoasPerfisMensagensCategoriasDestinatario->mensagem     = $novaMensagemConfirmacao->id;
	            $pessoasPerfisMensagensCategoriasDestinatario->categoria    = $idCategoriaDestinatario;
	            $pessoasPerfisMensagensCategoriasDestinatario->pessoaPerfil = $controladorPessoasPerfils->retornaObjetoPessoaPerfilPorIdPessoaIdPerfil($idPessoa, $controladorPerfil->retornaObjetoPerfilUsuarioValidado()->id)->id;
	            $controladorRowinfo->prepareXml($pessoasPerfisMensagensCategoriasDestinatario, true);
	            $pessoasPerfisMensagensCategoriasDestinatario->rowinfo      = $controladorRowinfo->getXml();
	            $controladorPessoasPerfisMensagensCategorias->salvarObjeto($pessoasPerfisMensagensCategoriasDestinatario);
	
	            // enviando a mensagem
	            $controladorMensageiro->enviar($novaMensagemConfirmacao);
		    	
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
    	if ($this->getRequest()->getParam('stringPesquisa') != "") {
	    	//desabilitando layout e render
	    	$this->_helper->layout()->disableLayout();
	        $this->_helper->viewRenderer->setNoRender(true);
	
	        //checando a disponibilidade do login
	    	$loginDisponivel = Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $this->getRequest()->getParam('stringPesquisa'));
	        
	    	if (!$loginDisponivel) {	
				echo "<span style='color: red; font-weight: bold;'>{$this->view->tradutor('LOGIN_DISPONIBILIDADE_LABEL_LOGIN_NAO_DISPONIVEL')}</span>";
			}else{
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
        	// carregando o controlador de e-mail
	        $controladorEmail = Basico_OPController_EmailOPController::getInstance();
	        // verifica se o e-mail existe no banco de dados
	        $emailParaValidacao = $controladorEmail->verificaEmailExistente($this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail'));

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
		            	 // instanciando os controladores
		            	 $controladorEmail                            = Basico_OPController_EmailOPController::getInstance();
	                     $controladorPessoasPerfis                     = Basico_OPController_PessoasPerfisOPController::getInstance();
	                     $controladorLog                              = Basico_OPController_LogOPController::getInstance();
	                     $controladorRowInfo                          = Basico_OPController_RowinfoOPController::getInstance();
	                     $controladorMensagem                         = Basico_OPController_MensagemOPController::getInstance();
	                     $controladorMensageiro                       = Basico_OPController_MensageiroOPController::getInstance();
	                     $controladorPessoasPerfisMensagensCategorias = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance();
	                     $controladorToken                            = $this->getInvokeArg('bootstrap')->tokenizer;

		            	 // recuperando a categoria da mensagem
		            	 $idCategoriaMensagem = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaEmailTemplateValidacaoPlainTextReenvio();

			             // carregando parametros
			             $email             = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail');
			             $idEmail           = $controladorEmail->retornaIdEmailPorEmail($email);
			             $idCategoriaToken  = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaEmailValidacaoPlainText();
			             $idPessoa          = $controladorEmail->retornaIdProprietarioEmailPorIdEmail($idEmail);
			             $idPessoaPerfil    = $controladorPessoasPerfis->retornaObjetoPessoaPerfilUsuarioNaoValidadoPorIdPessoa($idPessoa)->id;

			             // setando e salvando token
			             $novoToken = Basico_OPController_TokenOPController::getInstance()->retornaNovoObjetoToken();
			             $novoToken->token       = $controladorToken->gerarTokenPorModelo($novoToken, 'token');
			             $novoToken->idGenerico  = $idEmail;
			             $novoToken->categoria   = $idCategoriaToken;
			             $controladorRowInfo->prepareXml($novoToken, true);
			             $novoToken->rowinfo     = $controladorRowInfo->getXml();
			             $controladorToken->salvarToken($novoToken);

			             // setando e salvando mensagem
			             $link = Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . LINK_VALIDACAO_USUARIO . $novoToken->token;
			             $novaMensagem = $controladorMensagem->retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainTextReenvio($idPessoa, $link);       
			             $novaMensagem->destinatarios    = array($email);
			             $novaMensagem->dataHoraMensagem = Basico_OPController_UtilOPController::retornaDateTimeAtual();
			             $novaMensagem->categoria        = $idCategoriaMensagem;
			             $controladorRowInfo->prepareXml($novaMensagem, true);
			             $novaMensagem->rowinfo          = $controladorRowInfo->getXml();
                         $controladorMensagem->salvarObjeto($novaMensagem);

			             // setando e salvando relacionando pessoa perfil mensagem categoria (remetente)
			             $idPessoaPerfilSistema = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();
			             $idCategoriaRemetente = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaRemetente();
			             $pessoasPerfisMensagensCategoriasRemetente = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoasPerfisMensagensCategoriasOPController');
			             $pessoasPerfisMensagensCategoriasRemetente->mensagem     = $novaMensagem->id;
			             $pessoasPerfisMensagensCategoriasRemetente->categoria    = $idCategoriaRemetente;
			             $pessoasPerfisMensagensCategoriasRemetente->pessoaPerfil = $idPessoaPerfilSistema;
			             $controladorRowInfo->prepareXml($pessoasPerfisMensagensCategoriasRemetente, true);
			             $pessoasPerfisMensagensCategoriasRemetente->rowinfo      = $controladorRowInfo->getXml();
			             $controladorPessoasPerfisMensagensCategorias->salvarObjeto($pessoasPerfisMensagensCategoriasRemetente);

			             // setando e salvando relacionando pessoa perfil mensagem categoria (destinatario)
			             $idCategoriaDestinatario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaDestinatario();
			             $pessoasPerfisMensagensCategoriasDestinatario = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoasPerfisMensagensCategoriasOPController');
			             $pessoasPerfisMensagensCategoriasDestinatario->mensagem     = $novaMensagem->id;
			             $pessoasPerfisMensagensCategoriasDestinatario->categoria    = $idCategoriaDestinatario;
			             $pessoasPerfisMensagensCategoriasDestinatario->pessoaPerfil = $idPessoaPerfil;
			             $controladorRowInfo->prepareXml($pessoasPerfisMensagensCategoriasDestinatario, true);
			             $pessoasPerfisMensagensCategoriasDestinatario->rowinfo      = $controladorRowInfo->getXml();
			             $controladorPessoasPerfisMensagensCategorias->salvarObjeto($pessoasPerfisMensagensCategoriasDestinatario);

			             // enviando a mensagem
			             $controladorMensageiro->enviar($novaMensagem);
			             		            
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
        // instanciando controladores
        $controladorPessoa                           = Basico_OPController_PessoaOPController::getInstance();
        $controladorDadosPessoais                    = Basico_OPController_DadosPessoaisOPController::getInstance();
        $controladorEmail                            = Basico_OPController_EmailOPController::getInstance();
        $controladorPerfil                           = Basico_OPController_PerfilOPController::getInstance();
        $controladorPessoasPerfis                     = Basico_OPController_PessoasPerfisOPController::getInstance();
        $controladorLog                              = Basico_OPController_LogOPController::getInstance();
        $controladorRowInfo                          = Basico_OPController_RowinfoOPController::getInstance();
        $controladorMensagem                         = Basico_OPController_MensagemOPController::getInstance();
        $controladorMensageiro                       = Basico_OPController_MensageiroOPController::getInstance();
        $controladorPessoasPerfisMensagensCategorias = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance();
        $controladorToken                            = $this->getInvokeArg('bootstrap')->tokenizer;
        
        // iniciando transacao
        Basico_OPController_PersistenceOPController::bdControlaTransacao();
        
        try {
            // setando e salvando uma nova pessoa
            $novaPessoa = Basico_OPController_PessoaOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoaOPController');
            $controladorRowInfo->prepareXml($novaPessoa, true);
            $novaPessoa->rowinfo = $controladorRowInfo->getXml();
            $controladorPessoa->salvarObjeto($novaPessoa);

            // carregando o objeto perfil do usuario nao validado
            $objPerfilUsuarioNaoValidado = $controladorPerfil->retornaObjetoPerfilUsuarioNaoValidado();

            // setando e salvando a relacao de pessoa com perfil
            $novaPessoasPerfis = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoasPerfisOPController');
            $novaPessoasPerfis->pessoa = $novaPessoa->id;
            $novaPessoasPerfis->perfil = $objPerfilUsuarioNaoValidado->id;
            $novaPessoasPerfis->rowinfo = $controladorRowInfo->getXml();
            $controladorPessoasPerfis->salvarObjeto($novaPessoasPerfis); 

            // setando e salvando os dados pessoais
            $novoDadosPessoais = Basico_OPController_DadosPessoaisOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_DadosPessoaisOPController');
            $novoDadosPessoais->pessoa = $novaPessoa->id;
            $novoDadosPessoais->nome     = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoNome');
            $novoDadosPessoais->rowinfo  = $controladorRowInfo->getXml();
            $controladorDadosPessoais->salvarObjeto($novoDadosPessoais);

            // recuperando o id do objeto categoria de email primario
            $idCategoriaEmailPrimario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaEmailPrimario();

            // recupera uniqueId
            $uniqueIdValido = $controladorEmail->retornaNovoUniqueIdEmail();

            // setando e salvando o e-mail 
            $novoEmail = Basico_OPController_EmailOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_EmailOPController');
            $novoEmail->idGenericoProprietario = $novaPessoa->id;
            $novoEmail->uniqueId  			   = $uniqueIdValido;
            $novoEmail->categoria 			   = $idCategoriaEmailPrimario;
            $novoEmail->email     			   = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail');
            $novoEmail->validado  			   = 0;
            $novoEmail->ativo     			   = 0;
            $novoEmail->rowinfo   			   = $controladorRowInfo->getXml();
            $controladorEmail->salvarObjeto($novoEmail);

            // recuperando objeto categoria email validacao plain text template
            $idCategoriaToken = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaEmailValidacaoPlainText();

            // setando e salvando o token
            $novoToken = Basico_OPController_TokenOPController::getInstance()->retornaNovoObjetoToken();
            $novoToken->setToken($controladorToken->gerarTokenPorModelo($novoToken, 'token'));
            $novoToken->setIdGenerico($novoEmail->id);
            $novoToken->setCategoria($idCategoriaToken);
            $controladorRowInfo->prepareXml($novoToken, true);
            $novoToken->setRowinfo($controladorRowInfo->getXml());
            $controladorToken->salvarToken($novoToken);

            // recuperando a categoria de mensagem a ser enviada e template
            $idCategoriaTemplate = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaEmailValidacaoPlainTextTemplate();

            // setando e salvando a mensagem
            $nomeDestinatario = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoNome');
            
            $link = Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . LINK_VALIDACAO_USUARIO . $novoToken->token;
            $objNovaMensagem = $controladorMensagem->retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainText($nomeDestinatario, $link);          
            $objNovaMensagem->destinatarios       = array($novoEmail->email);
            $objNovaMensagem->dataHoraMensagem    = Basico_OPController_UtilOPController::retornaDateTimeAtual();
            $objNovaMensagem->categoria           = $idCategoriaToken;
            $controladorRowInfo->prepareXml($objNovaMensagem, true);
            $objNovaMensagem->rowinfo             = $controladorRowInfo->getXml();
            $controladorMensagem->salvarObjeto($objNovaMensagem);

            // setando e salvando remetente na relacao pessoas perfis mensagem categoria (remetente)
            $idPessoaPerfilSistema = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();
            $idCategoriaRemetente = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaRemetente();
            $pessoasPerfisMensagensCategoriasRemetente = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoasPerfisMensagensCategoriasOPController');
            $pessoasPerfisMensagensCategoriasRemetente->mensagem        = $objNovaMensagem->id;
            $pessoasPerfisMensagensCategoriasRemetente->categoria       = $idCategoriaRemetente;
            $pessoasPerfisMensagensCategoriasRemetente->pessoaPerfil    = $idPessoaPerfilSistema;
            $controladorRowInfo->prepareXml($pessoasPerfisMensagensCategoriasRemetente, true);
            $pessoasPerfisMensagensCategoriasRemetente->rowinfo         = $controladorRowInfo->getXml();
            $controladorPessoasPerfisMensagensCategorias->salvarObjeto($pessoasPerfisMensagensCategoriasRemetente);

            // setando e salvando destinatario na relacao pessoas perfis mensagem categoria (destinatario)
            $idCategoriaDestinatario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaDestinatario();
            $pessoasPerfisMensagensCategoriasDestinatario = Basico_OPController_PessoasPerfisMensagensCategoriasOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoasPerfisMensagensCategoriasOPController');
            $pessoasPerfisMensagensCategoriasDestinatario->mensagem     = $objNovaMensagem->id;
            $pessoasPerfisMensagensCategoriasDestinatario->categoria    = $idCategoriaDestinatario;
            $pessoasPerfisMensagensCategoriasDestinatario->pessoaPerfil = $novaPessoasPerfis->id;
            $controladorRowInfo->prepareXml($pessoasPerfisMensagensCategoriasDestinatario, true);
            $pessoasPerfisMensagensCategoriasDestinatario->rowinfo      = $controladorRowInfo->getXml();
            $controladorPessoasPerfisMensagensCategorias->salvarObjeto($pessoasPerfisMensagensCategoriasDestinatario);

            // enviando a mensagem
            $controladorMensageiro->enviar($objNovaMensagem);

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

    public function loginAction()
    {
/*
        $request = $this->getRequest();

        // Check if we have a POST request
        if (!$request->isPost()) {
            return $this->_helper->redirector('index');
        }

        // Get our form and validate it
        $form = $this->getForm();
        if (!$form->isValid($request->getPost())) {
            // Invalid entries
            $this->view->form = $form;
            return $this->render('index'); // re-render the login form
        }

        // Get our authentication adapter and check credentials
        $adapter = $this->getAuthAdapter($form->getValues());
        $auth    = Zend_Auth::getInstance();
        $result  = $auth->authenticate($adapter);
        if (!$result->isValid()) {
            // Invalid credentials
            $form->setDescription('Invalid credentials provided');
            $this->view->form = $form;
            return $this->render('index'); // re-render the login form
        }

        // We're authenticated! Redirect to the home page
        //store the login data in session all except for the pass
        $data = $adapter->getResultRowObject(null, 'password');
        $auth->getStorage()->write($data);
        $this->_helper->redirector('index', 'index');
*/
    }

    public function logoutAction()
    {
/*
        Zend_Auth::getInstance()->clearIdentity();
        $this->_helper->redirector('index'); // back to login page
*/
    }
}