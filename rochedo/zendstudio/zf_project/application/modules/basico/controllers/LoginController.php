<?php

// INCLUDES
require_once("EmailController.php");
require_once("PessoaController.php");
require_once("PerfilController.php");
require_once("PessoaPerfilController.php");
require_once("DadosPessoaisController.php");
require_once("CategoriaController.php");
require_once("MensageiroController.php");

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
    
    // ACTIONS
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
	               
	            	$this->_helper->redirector('ErroEmailNaoValidadoExistenteNoSistema');
	            	
	            	
	            }
	        }
	        
	        $this->salvarusuarionaovalidadoAction();
        } 
    }
    
    public function salvarusuarionaovalidadoAction()
    {
        // CONTROLADORES
        $controladorPessoa = Basico_PessoaController::init();
        $controladorDadosPessoais = Basico_DadosPessoaisController::init();
        $controladorCategoria = Basico_CategoriaController::init();
        $controladorEmail = Basico_EmailController::init();
        $controladorPerfil = Basico_PerfilController::init();
        $controladorPessoaPerfil = Basico_PessoaPerfilController::init();
        
        // INSTANCIAR BD
        $db = $this->getInvokeArg('bootstrap')->getResource('db');
        // REGISTRAR DB
        Zend_Registry::set('db', $db);
        // INICIAR TRANSAÇÃO
        $db->beginTransaction();
        
        try {
            // PREENCHER ROWINFO E RECUPERAR O LOGIN DO SISTEMA
            $rowinfo = new Basico_Model_RowInfo();
            
            // NOVA PESSOA ARMAZENADA NO SISTEMA
            $novaPessoa = new Basico_Model_Pessoa();
            $rowinfo->prepareXml($novaPessoa, true);
            $novaPessoa->rowinfo = $rowinfo->getXml();
            $controladorPessoa->salvarPessoa($novaPessoa);
            
            // RETORNAR PERFIL DE USUARIO NÃO-VALIDADO
            $perfilUsuarioNaoValidado = $controladorPerfil->retornaPerfilUsuarioNaoValidado();
            
            // RELACIONAR PERFIL E PESSOA
            $novaPessoaPerfil = new Basico_Model_PessoaPerfil();
            $novaPessoaPerfil->pessoa = $novaPessoa->id;
            $novaPessoaPerfil->perfil = $perfilUsuarioNaoValidado->id;
            $controladorPessoaPerfil->salvarPessoaPerfil($novaPessoaPerfil); 
            
            // DADOS PESSOAIS DA NOVA PESSOA
            $novoDadosPessoais = new Basico_Model_DadosPessoais();
            $novoDadosPessoais->idPessoa = $novaPessoa->id;
            $novoDadosPessoais->nome     = $this->getRequest()->getParam('nome');
            $novoDadosPessoais->rowinfo  = $rowinfo->getXml();
            $controladorDadosPessoais->salvarDadosPessoais($novoDadosPessoais);
            
            // CATEGORIA DO EMAIL  
            $categoriaEmailPrimario = $controladorCategoria->retornaCategoriaEmailPrimario();
          	$idCategoria = $categoriaEmailPrimario->id;

            // UNIQUEID GERADO
            $uniqueIdValido = $controladorEmail->retornaUniqueIdEmail();

            // NOVA EMAIL NÃO-VALIDADO ARMAZENADO NO SISTEMA 
            $novoEmail = new Basico_Model_Email();
            $novoEmail->pessoa    = $novaPessoa->id;
            $novoEmail->uniqueId  = $uniqueIdValido;
            $novoEmail->categoria = $idCategoria;
            $novoEmail->email     = $this->getRequest()->getParam('email');
            $novoEmail->validado  = 0;
            $novoEmail->ativo     = 0;
            $novoEmail->rowinfo   = $rowinfo->getXml();
            $controladorEmail->salvarEmail($novoEmail); 

             //ID DA CATEGORIA DA TEMPLATE DE MENSAGEM DE VALIDACAO DE USUARIO
            $categoriaMensagemTemplate = $controladorCategoria->retornaCategoriaEmailValidacaoPlainTextTemplate();
            $idCategoriaMensagemTemplate = $categoriaMensagemTemplate->id;
            //CAPTURANDO REMETENTE E CORPO DA MENSAGEM DA TEMPLATE
            $novaMensagem = $controladorMensagem->retornaTemplateValidacaoUsuarioPlainText($idCategoriaMensagemTemplate);
            //SETANDO RESTANTE DA MENSAGEM
            $novaMensagem->setDestinatarios($this->getRequest()->getParam('email'));
            $idCategoriaPlainText = $controladorCategoria->retornaCategoriaEmailValidacaoPlainText();
            $novaMensagem->setCategoria($idCategoriaPlainText->id);
            //GERANDO ROWINFO PRA MENSAGEM
            $rowinfo->prepareXml($novaMensagem, true);
            $novaMensagem->setRowinfo($rowinfo->getXml());
            //GERANDO E SETANDO DATA ATUAL
            $data = new Zend_Date();
            $novaMensagem->setDataHora($data);
            //SALVANDO A MENSAGEM
           //var_dump($novaMensagem);
            //exit;
            $controladorMensagem->salvarMensagem($novaMensagem);
            
            //SALVANDO PESSOA_PERFIL_MENSAGEM_CATEGORIA
            $novaPessoaPerfilMensagemCategoria = new Basico_Model_PessoaPerfilMensagemCategoria();
            $novaPessoaPerfilMensagemCategoria->setIdPessoaPerfil($novaPessoa->id);
            $novaPessoaPerfilMensagemCategoria->setIdMensagem($novaMensagem->id);
            $novaPessoaPerfilMensagemCategoria->setIdCategoria($idCategoriaPlainText->id);
            //GERANDO ROWINFO PRA PESSOA_PERFIL_MENSAGEM_CATEGORIA
            $rowinfo->prepareXml($novaMensagem, true);
            $novaPessoaPerfilMensagemCategoria->setRowinfo($rowinfo->getXml());
            
            var_dump($novaPessoaPerfilMensagemCategoria);
            exit;
            $controladorPessoaPerfilMensagemCategoria->salvarPessoaPerfilMensagemCategoria($novaPessoaPerfilMensagemCategoria);
            
            
            //ENVIANDO MENSAGEM
            $controladorMensageiro->enviar($novaMensagem);
            
            $db->commit();
        
            
            	                                
        } catch (Exception $e) {
            $db->rollback();
            throw new Exception($e->getMessage());
        }
        
        $this->_helper->redirector('SucessoSalvarUsuarioNaoValidado');
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
    
    static public function retornaLoginUsuarioLogado()
    {
        return null;
    }
}