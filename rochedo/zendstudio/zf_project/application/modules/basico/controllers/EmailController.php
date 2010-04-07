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
    	$dataAtual         = Zend_Date::now();
    	
    	if ($email != NULL) {
    		
    		//CHECA SE O EMAIL JÁ FOI VALIDADO
	    	if ($email->validado == 1) {
	    		throw new Exception(MSG_ERRO_EMAIL_JA_VALIDADO);
	    	}
	    	
	    	//CHECA SE O TOKEN JÁ EXPIROU
	    	if ($dataHoraExpiracao >= $dataAtual){
	    		throw new Exception(MSG_ERRO_EMAIL_VALIDACAO_EXPIRADO);     		
	    	}
	    	
	    	//VALIDA O EMAIL NO BANCO
	    	$email->datahoraUltimaValidacao = Zend_Date::now();
	    	$email->validado = 1;
	    	
	    	$controladorEmail->salvarEmail($email);
    	
    	    //Carrega as mensagens
		    $tituloView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO, DEFAULT_USER_LANGUAGE);
		    $subtituloView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO, DEFAULT_USER_LANGUAGE);
		    //$mensagemView = $this->view->tradutor(VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_MENSAGEM, DEFAULT_USER_LANGUAGE);
		    
		    $cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
		    
		    //Carrega as mensagens na view
			$this->view->cabecalho = $cabecalho;
			
			//Renderiza a view no script global
			$this->_helper->Renderizar->renderizar();
    	}
    }
    
}