<?php
require_once("CategoriaControllerController.php");
require_once("EmailControllerController.php");
require_once("TokenControllerController.php");

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
	 * @see library/Zend/Controller/Zend_Controller_Action#init()
	 */
	public function init()
    {
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }
    
    public function validaremailAction()
    {
    	//INICIALIZANDO OS CONTROLADORES
    	$controladorCategoria = Basico_CategoriaControllerController::init();
    	$controladorEmail     = Basico_EmailControllerController::init();
    	$controladorToken     = Basico_TokenControllerController::init();
    	
    	$token = $this->request->getParam('t');
    	    	
    	$tokenObj = $controladorToken->retornaTokenEmail($token);
    	$idEmail  = $tokenObj->idGenerico;
    	$email = $controladorEmail->retornaEmailId($idEmail);
    	$dataHoraExpiracao = $tokenObj->getDatahoraExpiracao();
    	$dataAtual         = date('Y-m-d H:i:s');
    	
    	if ($email != NULL) {
    		
    		//CHECA SE O TOKEN JÁ EXPIROU
    		//var_dump($dataHoraExpiracao, ' - ', $dataAtual); exit;
    		
	    	if ($dataHoraExpiracao <= $dataAtual){
	    		$this->_helper->redirector('errotokenexpirado');   		
	    	}
	    	
	    	//VALIDA O EMAIL NO BANCO
	    	$email->datahoraUltimaValidacao = Zend_Date::now();
	    	$email->validado = 1;
	    	$email->ativo    = 1;
	    	
	    	$controladorEmail->salvarEmail($email);
    	
    	    //Carrega as mensagens
		    $tituloView     = $this->view->tradutor(VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO, DEFAULT_USER_LANGUAGE);
		    $subtituloView  = $this->view->tradutor(VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO, DEFAULT_USER_LANGUAGE);
		    //$mensagemView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_MENSAGEM, DEFAULT_USER_LANGUAGE);
		    
		    $cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
		    
		    //Carrega as mensagens na view
			$this->view->cabecalho = $cabecalho;
			
			$formCadastrarUsuarioValidado = new Basico_Form_CadastrarUsuarioValidado();
			$this->view->form = $formCadastrarUsuarioValidado;
			//Renderiza a view no script global
			$this->_helper->Renderizar->renderizar();
    	}
    }
    
    public function errotokenexpiradoAction() 
    {
        $tituloView     = MSG_ERRO_EMAIL_VALIDACAO_EXPIRADO;
        $mensagemView   = "<a href='../login/cadastrarUsuarioNaoValidado/'>Clique aqui para recomeçar o seu cadastro.</a>";
    	$cabecalho =  array('tituloView' => $tituloView, 'mensagemView' => $mensagemView);
    
	    //Carrega as mensagens na view
		$this->view->cabecalho = $cabecalho;
		
		//Renderiza a view no script global
		$this->_helper->Renderizar->renderizar();
    }    
}