<?php

// INCLUDES
require_once("EmailController.php");
require_once("PessoaController.php");
require_once("DadosPessoaisController.php");
require_once("CategoriaController.php");

class Basico_LoginController extends Zend_Controller_Action
{
    private $request;
	
	public function init()
    {
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }

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
    
    //  ACTIONS
    public function indexAction()
    {
        $this->view->form = $this->getForm();
    }
    
    public function cadastrarusuarionaovalidadoAction()
    {   
        $this->view->form = $this->getFormCadastroUsuarioLoginNaoValidado();
    }
    
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
	                // envia mensagem de validação
	            	$this->_helper->redirector('ErroEmailNaoValidadoExistenteNoSistema');
	            }
	        }
	        
	        $this->salvarusuarionaovalidadoAction();
        } 
    }
    
    public function salvarusuarionaovalidadoAction()
    {
        //  CONTROLADORES
        $controladorPessoa = Basico_PessoaController::init();
        $controladorDadosPessoais = Basico_DadosPessoaisController::init();
        $controladorCategoria = Basico_CategoriaController::init();
        $controladorEmail = Basico_EmailController::init();
        
        //  TRANSACAO BD
        $db = $this->getInvokeArg('bootstrap')->getResource('db');
        $db->beginTransaction();
        
        try {
            // PREENCHER ROWINFO E RECUPERAR O LOGIN DO SISTEMA
            $data = new Zend_Date();
            $rowinfo = new Basico_Model_RowInfo();
            
            $rowinfo->genericDateTimeCreation = $data;
            $rowinfo->genericIdLoginCreation = $this->getIdSistema();
            $rowinfo->genericDateTimeLastModified = $data;
            $rowinfo->genericIdLoginLastModified = $this->getIdSistema();
            
            //  NOVA PESSOA ARMAZENADA NO SISTEMA
            $novaPessoa = new Basico_Model_Pessoa();
            $novaPessoa->rowinfo = $rowinfo->getXml();
            $controladorPessoa->salvarPessoa($novaPessoa);
            
            //  DADOS PESSOAIS DA NOVA PESSOA
            $novoDadosPessoais = new Basico_Model_DadosPessoais();
            $novoDadosPessoais->idPessoa = $novaPessoa->id;
            $novoDadosPessoais->nome     = $this->getRequest()->getParam('nome');
            $novoDadosPessoais->rowinfo  = $rowinfo->getXml();
            $controladorDadosPessoais->salvarDadosPessoais($novoDadosPessoais);
            
            //  CATEGORIA DO EMAIL  
            $categoriaEmailPrimario = $controladorCategoria->retornaCategoriaEmailPrimario();
          	$idCategoria = $categoriaEmailPrimario->id;

            // UNIQUEID GERADO
            $uniqueIdValido = $controladorEmail->retornaUniqueIdEmail();
                    
            //  NOVA EMAIL NÃO-VALIDADO ARMAZENADO NO SISTEMA 
            $novoEmail = new Basico_Model_Email();
            $novoEmail->pessoa    = $novaPessoa->id;
            $novoEmail->uniqueId  = $uniqueIdValido;
            $novoEmail->categoria = $idCategoria;
            $novoEmail->email     = $this->getRequest()->getParam('email');
            $novoEmail->validado  = 0;
            $novoEmail->ativo     = 0;
            $novoEmail->rowinfo   = $rowinfo->getXml();
            $controladorEmail->salvarEmail($novoEmail);

            
            
            
        } catch (Exception $e) {
            $db->rollback();
            throw new Exception($e->getMessage());
        }
        
        $db->commit();
        
        $this->_helper->redirector('SucessoSalvarUsuarioNaoValidado');
    }
    
	public function getIdSistema()
	{
	    $login = new Basico_Model_Login();
	    $applicationSystemLogin = APPLICATION_SYSTEM_LOGIN;
	    $loginSistema = $login->fetchList("login = '{$applicationSystemLogin}'", null, 1, 0);
	    
	    if ($loginSistema[0]->id)
	        return $loginSistema[0]->id;
	    else
	        throw new Exception(MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO);
	}
    
    public function sucessosalvarusuarionaovalidadoAction()
    {
        
    }
	
    public function erroemailvalidadoexistentenosistemaAction()
    {
        
    }

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
}