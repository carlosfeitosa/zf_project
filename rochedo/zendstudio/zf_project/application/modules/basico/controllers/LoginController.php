<?php
/**
 * Login Controller
 *
 * Controla Ações de Login/Logout e Cadastro do sistema.
 * 
 * @uses       Basico_Model_Login
 * @subpackage Controller
 */

//INCLUINDO CONTROLADORES
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
	 */
	public function init()
    {
        $this->request = Zend_Controller_Front::getInstance()->getRequest();

        /*
         * Definição de contextos
         */
		$pdfParametros = array('suffix' => 'pdf', 'headers' => array('Content-Type' => 'application/pdf'));
		$xlsParametros = array('suffix' => 'xls', 'headers' => array('Content-Type' => 'application/xls'));
		$plaintextParametros = array('suffix' => 'plaintext', 'headers' => array('Content-Type' => 'application/plaintext'));
		$impressaoParametros = array('suffix' => 'impressao', 'headers' => array('Content-Type' => 'application/impressao'));
        
		
		/*
		 * Adiciona os contextos e define os contextos permitidos por Ação.
		 */
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
	 * Valida Formulário de Cadastro de Novo Usuário.
	 * 
	 * @param  Basico_Form_CadastrarUsuarioNaoValidado $formEntrada 
	 * @return Bollean ou redireciona de volta ao formulário
	 */
	private function validaForm($formEntrada)
	{
		if (!$this->getRequest()->isPost()) {
            return $this->_helper->redirector($formEntrada->getName());
        }
		if (!$formEntrada->isValid($this->getRequest()->getPost())) {
            $this->view->form = $formEntrada;
            return;
        }
        return true;
	}
    
    /**
	 * Ação principal do controlador Login.
	 * 
	 *  Seta o form na view
	 * 
	 */
    public function indexAction()
    {
        $this->view->form = $this->getForm();
    }
    
    /**
	 * Carrega formulário de cadastro de novo usuário no atributo form da view.
	 * 
	 *  
	 * 
	 */
    public function cadastrarusuarionaovalidadoAction()
    {   
        //Carrega as mensagens
    	$tituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO, DEFAULT_USER_LANGUAGE);
    	$subtituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO, DEFAULT_USER_LANGUAGE);
    	
    	$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
    	
    	//Carrega as mensagens na view
        $this->view->cabecalho = $cabecalho;
		
		//Carrega o formulario na view
    	$this->view->form = $this->getFormCadastroUsuarioLoginNaoValidado();
    	
		//Renderiza a view no script default
		$this->_helper->Renderizar->renderizar();
		
    }
    
    /**
	 * Verifica a existência ou não do email a ser cadastrado no sistema e toma uma das seguintes ações: 
	 * Cadastro, Re-envio de email ou mensagem alertando sobre email existente e já validado.
	 * 
	 * @param  Basico_Form_CadastrarUsuarioNaoValidado $form
	 */
    public function verificanovologinAction()
    {
    	$form = $this->getFormCadastroUsuarioLoginNaoValidado();
        if($this->validaForm($form) == true){
        
	        $controladorEmail = Basico_EmailControllerController::init();
	        $emailParaValidacao = $controladorEmail->verificaEmailExistente($this->getRequest()->getParam('email'));
	        
	        if ($emailParaValidacao !== NULL){
	            if ($emailParaValidacao == true){
	            	$this->_helper->redirector('ErroEmailValidadoExistenteNoSistema');
				}
	            else{
	            	
	            	// iniciando a transacao
           			Basico_PersistenceControllerController::bdControlaTransacao();
                    
	            	try {
		            	 //INICIALIZANDO CONTROLADORES
		            	 $controladorEmail                         = Basico_EmailControllerController::init();
	                     $controladorPessoaPerfil                  = Basico_PessoaPerfilControllerController::init();
	                     $controladorLog                           = Basico_LogControllerController::init();
	                     $controladorRowInfo                       = Basico_RowInfoControllerController::init();
	                     $controladorMensagem                      = Basico_MensagemControllerController::init();
	                     $controladorMensageiro                    = Basico_MensageiroControllerController::init();
	                     $controladorCategoria                     = Basico_CategoriaControllerController::init();
	                     $controladorPessoaPerfilMensagemCategoria = Basico_PessoaPerfilMensagemCategoriaControllerController::init();
	                     $controladorToken                         = $this->getInvokeArg('bootstrap')->tokenizer;

		            	 //POPULANDO CATEGORIAS
		            	 $categoriaMensagem = $controladorCategoria->retornaCategoriaEmailTemplateValidacaoPlainTextReenvio();

			             //POPULANDO VARIAVEIS
			             $email            = $this->getRequest()->getParam('email');
			             $idEmail          = $controladorEmail->retornaIdEmail($email);
			             $idCategoriaToken = $controladorCategoria->retornaCategoriaEmailValidacaoPlainText();
			             $idPessoa         = $controladorEmail->retornaIdPessoaEmail($email);
			             $idPessoaPerfil   = $controladorPessoaPerfil->retornaIdPessoaPerfilPessoa($idPessoa);

			             //SALVANDO TOKEN
			             $novoToken = new Basico_Model_Token();
			             $novoToken->token       = $controladorToken->gerarToken($novoToken, 'token');
			             $novoToken->idGenerico  = $idEmail;
			             $novoToken->categoria   = $idCategoriaToken->id;
			             $controladorRowInfo->prepareXml($novoToken, true);
			             $novoToken->rowinfo     = $controladorRowInfo->getXml();
			             $controladorToken->salvarToken($novoToken);

			             //SALVANDO MENSAGEM
			             $link = LINK_VALIDACAO_USUARIO . $novoToken->token;
			             $novaMensagem = $controladorMensagem->retornaTemplateMensagemValidacaoUsuarioPlainTextReenvio($idPessoa, $link);          
			             $novaMensagem->destinatarios    = array($email);
			             $novaMensagem->datahoraMensagem = Basico_UtilControllerController::retornaDateTimeAtual();
			             $novaMensagem->categoria        = $categoriaMensagem->id;
			             $controladorRowInfo->prepareXml($novaMensagem, true);
			             $novaMensagem->rowinfo          = $controladorRowInfo->getXml();
                         $controladorMensagem->salvarMensagem($novaMensagem);

			             //SALVANDO REMETENTE NA TABELA RELACIONAMENTO PESSOAS_PERFIS_MENSAGEM_CATEGORIA
			             $idPessoaPerfilSistema = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
			             $categoriaRemetente = $controladorCategoria->retornaCategoriaRemetente();
			             $pessoaPerfilMensagemCategoriaRemetente = new Basico_Model_PessoaPerfilMensagemCategoria();
			             $pessoaPerfilMensagemCategoriaRemetente->mensagem     = $novaMensagem->id;
			             $pessoaPerfilMensagemCategoriaRemetente->categoria    = $categoriaRemetente->id;
			             $pessoaPerfilMensagemCategoriaRemetente->pessoaPerfil = $idPessoaPerfilSistema;
			             $controladorRowInfo->prepareXml($pessoaPerfilMensagemCategoriaRemetente, true);
			             $pessoaPerfilMensagemCategoriaRemetente->rowinfo      = $controladorRowInfo->getXml();
			             $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($pessoaPerfilMensagemCategoriaRemetente);
						             
			             //SALVANDO DESTINATARIOS NA TABELA RELACIONAMENTE PESSOAS_PERFIS_MENSAGEM_CATEGORIA
			             $categoriaDestinatario = $controladorCategoria->retornaCategoriaDestinatario();
			             $pessoaPerfilMensagemCategoriaDestinatario = new Basico_Model_PessoaPerfilMensagemCategoria();
			             $pessoaPerfilMensagemCategoriaDestinatario->mensagem     = $novaMensagem->id;
			             $pessoaPerfilMensagemCategoriaDestinatario->categoria    = $categoriaDestinatario->id;
			             $pessoaPerfilMensagemCategoriaDestinatario->pessoaPerfil = $idPessoaPerfil->id;
			             $controladorRowInfo->prepareXml($pessoaPerfilMensagemCategoriaDestinatario, true);
			             $pessoaPerfilMensagemCategoriaDestinatario->rowinfo      = $controladorRowInfo->getXml();
			             $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($pessoaPerfilMensagemCategoriaDestinatario);

			             //ENVIANDO A MENSAGEM
			             $controladorMensageiro->enviar($novaMensagem);
			             
			             // salvando log
			             Basico_LogControllerController::salvarLog($idPessoaPerfil->id, Basico_CategoriaControllerController::retornaIdCategoriaLogValidacaoUsuario(), LOG_MSG_VALIDACAO_USUARIO);
			            
			             // salvando a transacao
			             Basico_PersistenceControllerController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
						
						//REDIRECIONANDO PARA PÁGINA DA MENSAGEM DE ERRO
		                $this->_helper->redirector('ErroEmailNaoValidadoExistenteNoSistema');
		                
	            	}catch(Exception $e) {
	            		// cancelando a transacao
	            		Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

	            		throw new Exception($e->getMessage());
	            	}
	           	}
	        }
	        else {
	            $this->salvarusuarionaovalidadoAction();
	        }
        }       	
       	
		//Carrega as mensagens
    	$tituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO, DEFAULT_USER_LANGUAGE);
    	$subtituloView = $this->view->tradutor(VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO, DEFAULT_USER_LANGUAGE);
		            
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
	            
	    //Carrega as mensagens na view
		$this->view->cabecalho = $cabecalho;
		
		//Renderiza a view no script global
		$this->_helper->Renderizar->renderizar();        
    }
    
    /**
	 * Inseri os dados do novo usuário no banco de dados, envia mensagem de confirmação e email e salva 
	 * log da operação.
	 * 
	 * @param  Basico_Form_CadastrarUsuarioNaoValidado $formEntrada 
	 * 
	 */
    public function salvarusuarionaovalidadoAction()
    {
        //INICIALIZANDO CONTROLADORES
        $controladorPessoa                        = Basico_PessoaControllerController::init();
        $controladorDadosPessoais                 = Basico_DadosPessoaisControllerController::init();
        $controladorCategoria                     = Basico_CategoriaControllerController::init();
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
            // NOVA PESSOA ARMAZENADA NO SISTEMA
            $novaPessoa = new Basico_Model_Pessoa();
            $controladorRowInfo->prepareXml($novaPessoa, true);
            $novaPessoa->rowinfo = $controladorRowInfo->getXml();
            $controladorPessoa->salvarPessoa($novaPessoa);

            // RETORNAR PERFIL DE USUARIO NÃO-VALIDADO
            $perfilUsuarioNaoValidado = $controladorPerfil->retornaPerfilUsuarioNaoValidado();

            // RELACIONAR PERFIL E PESSOA
            $novaPessoaPerfil = new Basico_Model_PessoaPerfil();
            $novaPessoaPerfil->pessoa = $novaPessoa->id;
            $novaPessoaPerfil->perfil = $perfilUsuarioNaoValidado->id;
            $novaPessoaPerfil->rowinfo = $controladorRowInfo->getXml();
            $controladorPessoaPerfil->salvarPessoaPerfil($novaPessoaPerfil); 

            // DADOS PESSOAIS DA NOVA PESSOA
            $novoDadosPessoais = new Basico_Model_DadosPessoais();
            $novoDadosPessoais->idPessoa = $novaPessoa->id;
            $novoDadosPessoais->nome     = $this->getRequest()->getParam('nome');
            $novoDadosPessoais->rowinfo  = $controladorRowInfo->getXml();
            $controladorDadosPessoais->salvarDadosPessoais($novoDadosPessoais);

            // CATEGORIA DO EMAIL  
            $categoriaEmailPrimario = $controladorCategoria->retornaCategoriaEmailPrimario();

            // UNIQUEID GERADO
            $uniqueIdValido = $controladorEmail->retornaNovoUniqueIdEmail();

            // NOVO EMAIL NÃO-VALIDADO ARMAZENADO NO SISTEMA 
            $novoEmail = new Basico_Model_Email();
            $novoEmail->idGenericoProprietario = $novaPessoa->id;
            $novoEmail->uniqueId  			   = $uniqueIdValido;
            $novoEmail->categoria 			   = $categoriaEmailPrimario->id;
            $novoEmail->email     			   = $this->getRequest()->getParam('email');
            $novoEmail->validado  			   = 0;
            $novoEmail->ativo     			   = 0;
            $novoEmail->rowinfo   			   = $controladorRowInfo->getXml();
            $controladorEmail->salvarEmail($novoEmail);

            //SALVANDO TOKEN
            $idCategoriaToken = $controladorCategoria->retornaCategoriaEmailValidacaoPlainText();

            $novoToken = new Basico_Model_Token();
            $novoToken->setToken($controladorToken->gerarToken($novoToken, 'token'));
            $novoToken->setIdGenerico($novoEmail->id);
            $novoToken->setCategoria($idCategoriaToken->id);
            $controladorRowInfo->prepareXml($novoToken, true);
            $novoToken->setRowinfo($controladorRowInfo->getXml());

            $controladorToken->salvarToken($novoToken);

            //CATEGORIA DA MENSAGEM A SER ENVIADA E DA TEMPLATE DE MENSAGEM E O EMAIL DO SISTEMA
            $categoriaMensagem = $controladorCategoria->retornaCategoriaEmailValidacaoPlainText();
            $categoriaTemplate = $controladorCategoria->retornaCategoriaEmailValidacaoPlainTextTemplate();

            //SALVANDO MENSAGEM
            $nomeDestinatario = $this->getRequest()->getParam('nome');
            $link = LINK_VALIDACAO_USUARIO . $novoToken->token;
            $novaMensagem = $controladorMensagem->retornaTemplateMensagemValidacaoUsuarioPlainText($nomeDestinatario, $link);          
            $novaMensagem->destinatarios       = array($novoEmail->email);
            $novaMensagem->datahoraMensagem    = Basico_UtilControllerController::retornaDateTimeAtual();
            $novaMensagem->categoria           = $categoriaMensagem->id;
            $controladorRowInfo->prepareXml($novaMensagem, true);
            $novaMensagem->rowinfo             = $controladorRowInfo->getXml();

            //SALVANDO E ENVIANDO MENSAGEM
            $controladorMensagem->salvarMensagem($novaMensagem);

            //SALVANDO REMETENTE NA TABELA RELACIONAMENTO PESSOAS_PERFIS_MENSAGEM_CATEGORIA
            $idPessoaPerfilSistema = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
            $categoriaRemetente = $controladorCategoria->retornaCategoriaRemetente();
            $pessoaPerfilMensagemCategoriaRemetente = new Basico_Model_PessoaPerfilMensagemCategoria();
            $pessoaPerfilMensagemCategoriaRemetente->mensagem        = $novaMensagem->id;
            $pessoaPerfilMensagemCategoriaRemetente->categoria       = $categoriaRemetente->id;
            $pessoaPerfilMensagemCategoriaRemetente->pessoaPerfil    = $idPessoaPerfilSistema;
            $controladorRowInfo->prepareXml($pessoaPerfilMensagemCategoriaRemetente, true);
            $pessoaPerfilMensagemCategoriaRemetente->rowinfo         = $controladorRowInfo->getXml();
            $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($pessoaPerfilMensagemCategoriaRemetente);

            //SALVANDO DESTINATARIO NA TABELA DE RELACIONAMENTO PESSOAS_PERFIS_MENSAGEM_CATEGORIA
            $categoriaDestinatario = $controladorCategoria->retornaCategoriaDestinatario();
            $pessoaPerfilMensagemCategoriaDestinatario = new Basico_Model_PessoaPerfilMensagemCategoria();
            $pessoaPerfilMensagemCategoriaDestinatario->mensagem     = $novaMensagem->id;
            $pessoaPerfilMensagemCategoriaDestinatario->categoria    = $categoriaDestinatario->id;
            $pessoaPerfilMensagemCategoriaDestinatario->pessoaPerfil = $novaPessoaPerfil->id;
            $controladorRowInfo->prepareXml($pessoaPerfilMensagemCategoriaDestinatario, true);
            $pessoaPerfilMensagemCategoriaDestinatario->rowinfo      = $controladorRowInfo->getXml();
            $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($pessoaPerfilMensagemCategoriaDestinatario);

            //ENVIANDO A MENSAGEM
            $controladorMensageiro->enviar($novaMensagem);

            // salvando log
            Basico_LogControllerController::salvarLog($novaPessoaPerfil->id, Basico_CategoriaControllerController::retornaIdCategoriaLogValidacaoUsuario(), LOG_MSG_VALIDACAO_USUARIO);
            
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
	 * 
	 */
    public function sucessosalvarusuarionaovalidadoAction()
    {
        //Carrega as mensagens
		$tituloView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO, DEFAULT_USER_LANGUAGE);
		$subtituloView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO, DEFAULT_USER_LANGUAGE);
		$mensagemView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM, DEFAULT_USER_LANGUAGE);
		            
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	            
	    //Carrega as mensagens na view
		$this->view->cabecalho = $cabecalho;
		
		//Renderiza a view no script global
		$this->_helper->Renderizar->renderizar();
    }
	
    /**
	 * Redireciona para view erroemailvalidadoexistentenosistemaAction
	 * 
	 * 
	 */
    public function erroemailvalidadoexistentenosistemaAction()
    {
        //Carrega as mensagens
	    $tituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO, DEFAULT_USER_LANGUAGE);
	    $subtituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO, DEFAULT_USER_LANGUAGE);
	    $mensagemView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM, DEFAULT_USER_LANGUAGE);
	    
	    $cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	    
	    //Carrega as mensagens na view
		$this->view->cabecalho = $cabecalho;
		
		//Renderiza a view no script global
		$this->_helper->Renderizar->renderizar();
    }
    
    /**
	 * Redireciona para view erroemailnaovalidadoexistentenosistemaAction
	 * 
	 * 
	 */
    public function erroemailnaovalidadoexistentenosistemaAction()
    {
		//Carrega as mensagens
		$tituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_TITULO, DEFAULT_USER_LANGUAGE);
		$subtituloView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_SUBTITULO, DEFAULT_USER_LANGUAGE);
		$mensagemView = $this->view->tradutor(VIEW_LOGIN_ERRO_EMAIL_NAO_VALIDADO_EXISTENTE_NO_SISTEMA_MENSAGEM, DEFAULT_USER_LANGUAGE);
		
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
		
		//Carrega as mensagens na view
		$this->view->cabecalho = $cabecalho;
		
		//Renderiza a view no script global
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