<?php
/**
 * Login Controller
 *
 * Controla Ações de Login/Logout e Cadastro do sistema.
 * 
 * @uses       Basico_Model_Login
 * @subpackage Controller
 */

// include dos controladores
require_once("EmailControllerController.php");
require_once("PessoaControllerController.php");
require_once("PerfilControllerController.php");
require_once("PessoaPerfilControllerController.php");
require_once("DadosPessoaisControllerController.php");
require_once("CategoriaControllerController.php");
require_once("MensageiroControllerController.php");
require_once("MensagemControllerController.php");
require_once("RowinfoControllerController.php");
require_once("PessoaPerfilMensagemCategoriaControllerController.php");

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
        $this->request = Zend_Controller_Front::getInstance()->getRequest();

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
    	$tituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO, DEFAULT_USER_LANGUAGE);
    	$subtituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO, DEFAULT_USER_LANGUAGE);
    	
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
	        $controladorEmail = Basico_EmailControllerController::init();
	        // verifica se o e-mail existe no banco de dados
	        $emailParaValidacao = $controladorEmail->verificaEmailExistente($this->getRequest()->getParam('email'));
	        
	        // checando o resultado da verificacao de existencia do e-mail
	        if ($emailParaValidacao !== NULL){
	        	// checando se o e-mail ja foi validado
	            if ($emailParaValidacao == true){
	            	// redirecionando para view de e-mail ja validado no sistema
	            	$this->_helper->redirector('ErroEmailValidadoExistenteNoSistema');
				}
	            else {
	            	// iniciando a transacao
           			Basico_PersistenceControllerController::bdControlaTransacao();
                    
	            	try {
		            	 // instanciando os controladores
		            	 $controladorEmail                         = Basico_EmailControllerController::init();
	                     $controladorPessoaPerfil                  = Basico_PessoaPerfilControllerController::init();
	                     $controladorLog                           = Basico_LogControllerController::init();
	                     $controladorRowInfo                       = Basico_RowInfoControllerController::init();
	                     $controladorMensagem                      = Basico_MensagemControllerController::init();
	                     $controladorMensageiro                    = Basico_MensageiroControllerController::init();
	                     $controladorPessoaPerfilMensagemCategoria = Basico_PessoaPerfilMensagemCategoriaControllerController::init();
	                     $controladorToken                         = $this->getInvokeArg('bootstrap')->tokenizer;

		            	 // recuperando a categoria da mensagem
		            	 $idCategoriaMensagem = Basico_CategoriaControllerController::retornaIdCategoriaEmailTemplateValidacaoPlainTextReenvio();

			             // carregando parametros
			             $email             = $this->getRequest()->getParam('email');
			             $idEmail           = $controladorEmail->retornaIdEmail($email);
			             $idCategoriaToken  = Basico_CategoriaControllerController::retornaIdCategoriaEmailValidacaoPlainText();
			             $idPessoa          = $controladorEmail->retornaIdPessoaEmail($email);
			             $idPessoaPerfil    = $controladorPessoaPerfil->retornaIdPessoaPerfilPessoa($idPessoa);

			             // setando e salvando token
			             $novoToken = new Basico_Model_Token();
			             $novoToken->token       = $controladorToken->gerarToken($novoToken, 'token');
			             $novoToken->idGenerico  = $idEmail;
			             $novoToken->categoria   = $idCategoriaToken;
			             $controladorRowInfo->prepareXml($novoToken, true);
			             $novoToken->rowinfo     = $controladorRowInfo->getXml();
			             $controladorToken->salvarToken($novoToken);

			             // setando e salvando mensagem
			             $link = LINK_VALIDACAO_USUARIO . $novoToken->token;
			             $novaMensagem = $controladorMensagem->retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainTextReenvio($idPessoa, $link);       
			             $novaMensagem->destinatarios    = array($email);
			             $novaMensagem->datahoraMensagem = Basico_UtilControllerController::retornaDateTimeAtual();
			             $novaMensagem->categoria        = $idCategoriaMensagem;
			             $controladorRowInfo->prepareXml($novaMensagem, true);
			             $novaMensagem->rowinfo          = $controladorRowInfo->getXml();
                         $controladorMensagem->salvarMensagem($novaMensagem);

			             // setando e salvando relacionando pessoa perfil mensagem categoria (remetente)
			             $idPessoaPerfilSistema = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
			             $idCategoriaRemetente = Basico_CategoriaControllerController::retornaIdCategoriaRemetente();
			             $pessoaPerfilMensagemCategoriaRemetente = new Basico_Model_PessoaPerfilMensagemCategoria();
			             $pessoaPerfilMensagemCategoriaRemetente->mensagem     = $novaMensagem->id;
			             $pessoaPerfilMensagemCategoriaRemetente->categoria    = $idCategoriaRemetente;
			             $pessoaPerfilMensagemCategoriaRemetente->pessoaPerfil = $idPessoaPerfilSistema;
			             $controladorRowInfo->prepareXml($pessoaPerfilMensagemCategoriaRemetente, true);
			             $pessoaPerfilMensagemCategoriaRemetente->rowinfo      = $controladorRowInfo->getXml();
			             $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($pessoaPerfilMensagemCategoriaRemetente);

			             // setando e salvando relacionando pessoa perfil mensagem categoria (destinatario)
			             $idCategoriaDestinatario = Basico_CategoriaControllerController::retornaIdCategoriaDestinatario();
			             $pessoaPerfilMensagemCategoriaDestinatario = new Basico_Model_PessoaPerfilMensagemCategoria();
			             $pessoaPerfilMensagemCategoriaDestinatario->mensagem     = $novaMensagem->id;
			             $pessoaPerfilMensagemCategoriaDestinatario->categoria    = $idCategoriaDestinatario;
			             $pessoaPerfilMensagemCategoriaDestinatario->pessoaPerfil = $idPessoaPerfil;
			             $controladorRowInfo->prepareXml($pessoaPerfilMensagemCategoriaDestinatario, true);
			             $pessoaPerfilMensagemCategoriaDestinatario->rowinfo      = $controladorRowInfo->getXml();
			             $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($pessoaPerfilMensagemCategoriaDestinatario);

			             // enviando a mensagem
			             $controladorMensageiro->enviar($novaMensagem);
			             		            
			             // salvando a transacao
			             Basico_PersistenceControllerController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
						
						// redirecionando para a view de e-mail nao validado ja existente no sistema
		                $this->_helper->redirector('ErroEmailNaoValidadoExistenteNoSistema');
		                
	            	}catch(Exception $e) {
	            		// cancelando a transacao
	            		Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

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
    	$tituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO, DEFAULT_USER_LANGUAGE);
    	$subtituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO, DEFAULT_USER_LANGUAGE);

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
        $controladorPessoa                        = Basico_PessoaControllerController::init();
        $controladorDadosPessoais                 = Basico_DadosPessoaisControllerController::init();
        $controladorEmail                         = Basico_EmailControllerController::init();
        $controladorPerfil                        = Basico_PerfilControllerController::init();
        $controladorPessoaPerfil                  = Basico_PessoaPerfilControllerController::init();
        $controladorLog                           = Basico_LogControllerController::init();
        $controladorRowInfo                       = Basico_RowInfoControllerController::init();
        $controladorMensagem                      = Basico_MensagemControllerController::init();
        $controladorMensageiro                    = Basico_MensageiroControllerController::init();
        $controladorPessoaPerfilMensagemCategoria = Basico_PessoaPerfilMensagemCategoriaControllerController::init();
        $controladorToken                         = $this->getInvokeArg('bootstrap')->tokenizer;
        
        // iniciando transacao
        Basico_PersistenceControllerController::bdControlaTransacao();
        
        try {
            // setando e salvando uma nova pessoa
            $novaPessoa = new Basico_Model_Pessoa();
            $controladorRowInfo->prepareXml($novaPessoa, true);
            $novaPessoa->rowinfo = $controladorRowInfo->getXml();
            $controladorPessoa->salvarPessoa($novaPessoa);

            // carregando o objeto perfil do usuario nao validado
            $objPerfilUsuarioNaoValidado = $controladorPerfil->retornaObjetoPerfilUsuarioNaoValidado();

            // setando e salvando a relacao de pessoa com perfil
            $novaPessoaPerfil = new Basico_Model_PessoaPerfil();
            $novaPessoaPerfil->pessoa = $novaPessoa->id;
            $novaPessoaPerfil->perfil = $objPerfilUsuarioNaoValidado->id;
            $novaPessoaPerfil->rowinfo = $controladorRowInfo->getXml();
            $controladorPessoaPerfil->salvarPessoaPerfil($novaPessoaPerfil); 

            // setando e salvando os dados pessoais
            $novoDadosPessoais = new Basico_Model_DadosPessoais();
            $novoDadosPessoais->idPessoa = $novaPessoa->id;
            $novoDadosPessoais->nome     = $this->getRequest()->getParam('nome');
            $novoDadosPessoais->rowinfo  = $controladorRowInfo->getXml();
            $controladorDadosPessoais->salvarDadosPessoais($novoDadosPessoais);

            // recuperando o id do objeto categoria de email primario
            $idCategoriaEmailPrimario = Basico_CategoriaControllerController::retornaIdCategoriaEmailPrimario();

            // recupera uniqueId
            $uniqueIdValido = $controladorEmail->retornaNovoUniqueIdEmail();

            // setando e salvando o e-mail 
            $novoEmail = new Basico_Model_Email();
            $novoEmail->idGenericoProprietario = $novaPessoa->id;
            $novoEmail->uniqueId  			   = $uniqueIdValido;
            $novoEmail->categoria 			   = $idCategoriaEmailPrimario;
            $novoEmail->email     			   = $this->getRequest()->getParam('email');
            $novoEmail->validado  			   = 0;
            $novoEmail->ativo     			   = 0;
            $novoEmail->rowinfo   			   = $controladorRowInfo->getXml();
            $controladorEmail->salvarEmail($novoEmail);

            // recuperando objeto categoria email validacao plain text template
            $idCategoriaToken = Basico_CategoriaControllerController::retornaIdCategoriaEmailValidacaoPlainText();

            // setando e salvando o token
            $novoToken = new Basico_Model_Token();
            $novoToken->setToken($controladorToken->gerarToken($novoToken, 'token'));
            $novoToken->setIdGenerico($novoEmail->id);
            $novoToken->setCategoria($idCategoriaToken);
            $controladorRowInfo->prepareXml($novoToken, true);
            $novoToken->setRowinfo($controladorRowInfo->getXml());
            $controladorToken->salvarToken($novoToken);

            // recuperando as categorias de mensagem a ser enviada e template
            $idCategoriaTemplate = Basico_CategoriaControllerController::retornaIdCategoriaEmailValidacaoPlainTextTemplate();

            // setando e salvando a mensagem
            $nomeDestinatario = $this->getRequest()->getParam('nome');
            $link = LINK_VALIDACAO_USUARIO . $novoToken->token;
            $objNovaMensagem = $controladorMensagem->retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainText($nomeDestinatario, $link);          
            $objNovaMensagem->destinatarios       = array($novoEmail->email);
            $objNovaMensagem->datahoraMensagem    = Basico_UtilControllerController::retornaDateTimeAtual();
            $objNovaMensagem->categoria           = $idCategoriaToken;
            $controladorRowInfo->prepareXml($objNovaMensagem, true);
            $objNovaMensagem->rowinfo             = $controladorRowInfo->getXml();
            $controladorMensagem->salvarMensagem($objNovaMensagem);

            // setando e salvando remetente na relacao pessoas perfis mensagem categoria (remetente)
            $idPessoaPerfilSistema = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
            $idCategoriaRemetente = Basico_CategoriaControllerController::retornaIdCategoriaRemetente();
            $pessoaPerfilMensagemCategoriaRemetente = new Basico_Model_PessoaPerfilMensagemCategoria();
            $pessoaPerfilMensagemCategoriaRemetente->mensagem        = $objNovaMensagem->id;
            $pessoaPerfilMensagemCategoriaRemetente->categoria       = $idCategoriaRemetente;
            $pessoaPerfilMensagemCategoriaRemetente->pessoaPerfil    = $idPessoaPerfilSistema;
            $controladorRowInfo->prepareXml($pessoaPerfilMensagemCategoriaRemetente, true);
            $pessoaPerfilMensagemCategoriaRemetente->rowinfo         = $controladorRowInfo->getXml();
            $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($pessoaPerfilMensagemCategoriaRemetente);

            // setando e salvando remetente na relacao pessoas perfis mensagem categoria (destinatario)
            $idCategoriaDestinatario = Basico_CategoriaControllerController::retornaIdCategoriaDestinatario();
            $pessoaPerfilMensagemCategoriaDestinatario = new Basico_Model_PessoaPerfilMensagemCategoria();
            $pessoaPerfilMensagemCategoriaDestinatario->mensagem     = $objNovaMensagem->id;
            $pessoaPerfilMensagemCategoriaDestinatario->categoria    = $idCategoriaDestinatario;
            $pessoaPerfilMensagemCategoriaDestinatario->pessoaPerfil = $novaPessoaPerfil->id;
            $controladorRowInfo->prepareXml($pessoaPerfilMensagemCategoriaDestinatario, true);
            $pessoaPerfilMensagemCategoriaDestinatario->rowinfo      = $controladorRowInfo->getXml();
            $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($pessoaPerfilMensagemCategoriaDestinatario);

            // enviando a mensagem
            $controladorMensageiro->enviar($objNovaMensagem);
           
            // salvando a transacao
            Basico_PersistenceControllerController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

        } catch (Exception $e) {
        	// cancelando a transacao
            Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
            
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
		$tituloView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO, DEFAULT_USER_LANGUAGE);
		$subtituloView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO, DEFAULT_USER_LANGUAGE);
		$mensagemView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM, DEFAULT_USER_LANGUAGE);

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
	    $tituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO, DEFAULT_USER_LANGUAGE);
	    $subtituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO, DEFAULT_USER_LANGUAGE);
	    $mensagemView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM, DEFAULT_USER_LANGUAGE);

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
		$tituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO, DEFAULT_USER_LANGUAGE);
		$subtituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO, DEFAULT_USER_LANGUAGE);
		$mensagemView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM, DEFAULT_USER_LANGUAGE);

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
    
    static public function retornaLoginUsuarioLogado()
    {
        return null;
    }
}