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
require_once("EmailController.php");
require_once("PessoaController.php");
require_once("PerfilController.php");
require_once("PessoaPerfilController.php");
require_once("DadosPessoaisController.php");
require_once("CategoriaController.php");
require_once("MensageiroController.php");
require_once("MensagemController.php");
require_once("LogController.php");
require_once("RowinfoController.php");
require_once("PessoaPerfilMensagemCategoriaController.php");

class Basico_LoginController extends Zend_Controller_Action
{
    
	/**
	* @var object
	*/
	private $request;
	
    /**
	 * Inicializa controlador Login
	 * 
	 *  
	 * 
	 */
	public function init()
    {
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
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
            return $this->render($formEntrada->getName());
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
        $this->view->form = $this->getFormCadastroUsuarioLoginNaoValidado();
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
        
	        $controladorEmail = Basico_EmailController::init();
	        $emailParaValidacao = $controladorEmail->verificaEmailExistente($this->getRequest()->getParam('email'));
	        
	        if ($emailParaValidacao !== NULL){
	            if ($emailParaValidacao == true){
	                $this->_helper->redirector('ErroEmailValidadoExistenteNoSistema');
				}
	            else{
	            	
	            	//INSTANCIAR BD
           			$db = $this->getInvokeArg('bootstrap')->getResource('db');
              		//REGISTRAR DB
        			Zend_Registry::set('db', $db);
			        //INICIAR TRANSAÇÃO
                    $db->beginTransaction();
                    
	            	try {
		            	 //INICIALIZANDO CONTROLADORES
		            	 $controladorEmail         = Basico_EmailController::init();
	                     $controladorPessoaPerfil  = Basico_PessoaPerfilController::init();
	                     $controladorLog           = Basico_LogController::init();
	                     $controladorRowInfo       = Basico_RowInfoController::init();
	                     $controladorMensagem      = Basico_MensagemController::init();
	                     $controladorMensageiro    = Basico_MensageiroController::init();
	                     $controladorCategoria     = Basico_CategoriaController::init();
	                     $controladorPessoaPerfilMensagemCategoria = Basico_PessoaPerfilMensagemCategoriaController::init();
	                     	            	 
		            	 //POPULANDO CATEGORIAS
		            	 $categoriaMensagem = $controladorCategoria->retornaCategoriaEmailValidacaoPlainTextReenvio();
			             $categoriaTemplate = $controladorCategoria->retornaCategoriaEmailValidacaoPlainTextTemplate();
			            
			             //POPULANDO VARIAVEIS
			             $email    = $this->getRequest()->getParam('email');
			             $uniqueId = $controladorEmail->retornaUniqueIdEmail($email);
			             $idPessoa = $controladorEmail->retornaIdPessoaEmail($email);
			             $idPessoaPerfil = $controladorPessoaPerfil->retornaIdPessoaPerfilPessoa($idPessoa->pessoa);
			             
			             //SALVANDO MENSAGEM
			             $link = LINK_VALIDACAO_USUARIO . $uniqueId->uniqueId;
			             $novaMensagem = $controladorMensagem->retornaTemplateMensagemValidacaoUsuarioPlainTextReenvio($idPessoa->pessoa, $link);          
			             $novaMensagem->destinatarios    = array($email);
			             $novaMensagem->datahoraMensagem = Zend_Date::now();
			             $novaMensagem->categoria        = $categoriaMensagem->id;
			             $controladorRowInfo->prepareXml($novaMensagem, true);
			             $novaMensagem->rowinfo          = $controladorRowInfo->getXml();
                         $controladorMensagem->salvarMensagem($novaMensagem);
			             
			             //SALVANDO REMETENTE NA TABELA RELACIONAMENTO PESSOAS_PERFIS_MENSAGEM_CATEGORIA
			             $idPessoaPerfilSistema = Basico_Model_Util::retornaIdPessoaPerfilSistema();
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
			            
			             // CATEGORIA DO LOG VALIDACAO USUARIO
			             $categoriaLog   = $controladorCategoria->retornaCategoriaLogValidacaoUsuario();
			            
			             $novoLog = new Basico_Model_Log();
			             $novoLog->pessoaperfil   = $idPessoaPerfil->id;
			             $novoLog->categoria      = $categoriaLog->id;
			             $novoLog->dataHoraEvento = Zend_Date::now();
			             $novoLog->descricao      = LOG_MSG_VALIDACAO_USUARIO;
			             $controladorLog->salvarLog($novoLog);
			            
			             $db->commit();
		            	
			            //REDIRECIONANDO PARA PÁGINA DA MENSAGEM DE ERRO
		                $this->_helper->redirector('ErroEmailNaoValidadoExistenteNoSistema');
		                
	            	}catch(Exception $e) {
	            	    $db->rollback();
	            		throw new Exception($e->getMessage());
	            	}
	           	}
	        }
	        
	        $this->salvarusuarionaovalidadoAction();
        } 
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
        $controladorPessoa        = Basico_PessoaController::init();
        $controladorDadosPessoais = Basico_DadosPessoaisController::init();
        $controladorCategoria     = Basico_CategoriaController::init();
        $controladorEmail         = Basico_EmailController::init();
        $controladorPerfil        = Basico_PerfilController::init();
        $controladorPessoaPerfil  = Basico_PessoaPerfilController::init();
        $controladorLog           = Basico_LogController::init();
        $controladorRowInfo       = Basico_RowInfoController::init();
        $controladorMensagem      = Basico_MensagemController::init();
        $controladorMensageiro    = Basico_MensageiroController::init();
        $controladorPessoaPerfilMensagemCategoria = Basico_PessoaPerfilMensagemCategoriaController::init();
        
        // INSTANCIAR BD
        $db = $this->getInvokeArg('bootstrap')->getResource('db');
        // REGISTRAR DB
        Zend_Registry::set('db', $db);
        // INICIAR TRANSAÇÃO
        $db->beginTransaction();
        
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
            $novoEmail->pessoa    = $novaPessoa->id;
            $novoEmail->uniqueId  = $uniqueIdValido;
            $novoEmail->categoria = $categoriaEmailPrimario->id;
            $novoEmail->email     = $this->getRequest()->getParam('email');
            $novoEmail->validado  = 0;
            $novoEmail->ativo     = 0;
            $novoEmail->rowinfo   = $controladorRowInfo->getXml();
            $controladorEmail->salvarEmail($novoEmail);
                        
            //CATEGORIA DA MENSAGEM A SER ENVIADA E DA TEMPLATE DE MENSAGEM E O EMAIL DO SISTEMA
            $categoriaMensagem = $controladorCategoria->retornaCategoriaEmailValidacaoPlainText();
            $categoriaTemplate = $controladorCategoria->retornaCategoriaEmailValidacaoPlainTextTemplate();
            
            //SALVANDO MENSAGEM
            $nomeDestinatario = $this->getRequest()->getParam('nome');
            $link = LINK_VALIDACAO_USUARIO . $novoEmail->uniqueId;
            $novaMensagem = $controladorMensagem->retornaTemplateMensagemValidacaoUsuarioPlainText($nomeDestinatario, $link);          
            $novaMensagem->destinatarios       = array($novoEmail->email);
            $novaMensagem->datahoraMensagem    = Zend_Date::now();
            $novaMensagem->categoria           = $categoriaMensagem->id;
            $controladorRowInfo->prepareXml($novaMensagem, true);
            $novaMensagem->rowinfo             = $controladorRowInfo->getXml();
           
            //SALVANDO E ENVIANDO MENSAGEM
            $controladorMensagem->salvarMensagem($novaMensagem);
            
            //SALVANDO REMETENTE NA TABELA RELACIONAMENTO PESSOAS_PERFIS_MENSAGEM_CATEGORIA
            $idPessoaPerfilSistema = Basico_Model_Util::retornaIdPessoaPerfilSistema();
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
            
            //CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogValidacaoUsuario();
            
            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = $novaPessoaPerfil->id;
            $novoLog->categoria      = $categoriaLog->id;
            $novoLog->dataHoraEvento = Zend_Date::now();
            $novoLog->descricao      = LOG_MSG_VALIDACAO_USUARIO;
            $controladorLog->salvarLog($novoLog);
            
            $db->commit();

        } catch (Exception $e) {
            $db->rollback();
            throw new Exception($e->getMessage());
        }
        
        $this->_helper->redirector('SucessoSalvarUsuarioNaoValidado');
    }
    
    /**
	 * Redireciona para view sucessosalvarusuarionaovalidadoAction
	 * 
	 * 
	 */
    public function sucessosalvarusuarionaovalidadoAction()
    {
        
    }
	
    /**
	 * Redireciona para view erroemailvalidadoexistentenosistemaAction
	 * 
	 * 
	 */
    public function erroemailvalidadoexistentenosistemaAction()
    {
        
    }
    
    /**
	 * Redireciona para view erroemailnaovalidadoexistentenosistemaAction
	 * 
	 * 
	 */
    public function erroemailnaovalidadoexistentenosistemaAction()
    {
        
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