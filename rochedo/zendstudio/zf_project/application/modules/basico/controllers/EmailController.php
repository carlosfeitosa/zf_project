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
    	
    	$token                = $this->request->getParam('t');
    	    	
    	$tokenObj             = $controladorToken->retornaTokenEmail($token);
    	
    	if ($tokenObj == NULL){
    		$this->_helper->redirector('errotokeninvalido');  
    	}
    	
    	$idEmail                        = $tokenObj->idGenerico;
    	$email                          = $controladorEmail->retornaEmailId($idEmail);
    	$dataHoraExpiracaoUnixTimeStamp = Basico_Model_Util::retornaTimestamp($tokenObj->datahoraExpiracao);
    	
    	$dataHoraAtualUnixTimeStamp = Basico_Model_Util::retornaTimestamp();
    	    	
    	if ($email != NULL) {
    		
    		//CHECA SE O TOKEN JÁ EXPIRO
    		 
	    	if ($dataHoraExpiracaoUnixTimeStamp < $dataHoraAtualUnixTimeStamp){
	    		$this->_helper->redirector('errotokenexpirado');   		
	    	}
	    	
	    	//VALIDA O EMAIL NO BANCO
	    	$email->datahoraUltimaValidacao = Basico_Model_Util::retornaDateTimeAtual();
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
			
			$titlePane = "<div dojoType='dijit.TitlePane' open='true' title='Dados Básicos' style='width:500px;'>";
			$titlePaneClose = "</div>";
			$this->view->form = $titlePane . $formCadastrarUsuarioValidado . $titlePaneClose;
			//Renderiza a view no script global
			$this->_helper->Renderizar->renderizar();
    	}
    }
    
    public function errotokenexpiradoAction() 
    {
        $tituloView            = $this->view->tradutor(MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO, DEFAULT_USER_LANGUAGE);
        $linkRecomecarCadastro = $this->view->tradutor(LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO, DEFAULT_USER_LANGUAGE);
        $mensagemView          = "<a href='../login/cadastrarUsuarioNaoValidado/'>{$linkRecomecarCadastro}</a>";
    	$cabecalho             = array('tituloView' => $tituloView, 'mensagemView' => $mensagemView);
    
	    //Carrega as mensagens na view
		$this->view->cabecalho = $cabecalho;
		
		//Renderiza a view no script global
		$this->_helper->Renderizar->renderizar();
    }    
    
    public function errotokeninvalidoAction() 
    {
        $tituloView            = $this->view->tradutor(MSG_TOKEN_EMAIL_VALIDACAO_INVALIDO, DEFAULT_USER_LANGUAGE);
        $cabecalho =  array('tituloView' => $tituloView);
    
	    //Carrega as mensagens na view
		$this->view->cabecalho = $cabecalho;
		
		//Renderiza a view no script global
		$this->_helper->Renderizar->renderizar();
    }    
}