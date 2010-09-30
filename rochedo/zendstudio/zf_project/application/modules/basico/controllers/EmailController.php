<?php

/**
 * Controlador Email
 *
 */

// include dos controladores
require_once("CategoriaControllerController.php");
require_once("EmailControllerController.php");

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
	 * 
	 * @see library/Zend/Controller/Zend_Controller_Action#init()
	 */
	public function init()
    {
    	// recuperando a requisicao
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }

    /**
     * Valida um e-mail
     * 
     * @return void
     */
    public function validaremailAction()
    {
    	// instanciando os controladores
    	$controladorCategoria = Basico_CategoriaControllerController::init();
    	$controladorEmail     = Basico_EmailControllerController::init();
    	$controladorToken     = Basico_TokenControllerController::init();
    	
    	// recuperando o token da sessao
    	$token                = $this->request->getParam('t');

    	// recuperando o objeto token e-mail
    	$tokenObj             = $controladorToken->retornaObjetoTokenEmail($token);

    	// verificando se o objeto existe
    	if ($tokenObj == NULL){
    		// redirecionando para view de erro token invalido
    		$this->_helper->redirector('errotokeninvalido');  
    	}
    	
    	// recuperando o id do e-mail
    	$idEmail                        = $tokenObj->idGenerico;
    	// recuperando o e-mail
    	$email                          = $controladorEmail->retornaObjetoEmailId($idEmail);
    	// recuperando data hora de expiracao
    	$dataHoraExpiracaoUnixTimeStamp = Basico_UtilControllerController::retornaTimestamp($tokenObj->datahoraExpiracao);
    	// recuperando a data hora atual
    	$dataHoraAtualUnixTimeStamp = Basico_UtilControllerController::retornaTimestamp();

    	// verificando se o objeto existe
    	if ($email != NULL) {
			// checando expiracao do token
	    	if ($dataHoraExpiracaoUnixTimeStamp < $dataHoraAtualUnixTimeStamp){
	    		// redirecionando para view de token expirado
	    		$this->_helper->redirector('errotokenexpirado');   		
	    	}
	    	
	    	// validando o e-mail no objeto
	    	$email->datahoraUltimaValidacao = Basico_UtilControllerController::retornaDateTimeAtual();
	    	$email->validado = 1;
	    	$email->ativo    = 1;
	    	
	    	// salvando o objeto e-mail no banco de dados
	    	$controladorEmail->salvarEmail($email);
    	
    	    // carregando o titulo e subtitulo da view
		    $tituloView     = $this->view->tradutor(VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO, DEFAULT_USER_LANGUAGE);
		    $subtituloView  = $this->view->tradutor(VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO, DEFAULT_USER_LANGUAGE);

		    // carregando array do cabecalho da view
		    $cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
		    
		    // carregando o cabecalho na view
			$this->view->cabecalho = $cabecalho;

			// instanciando o formulario de cadastrar usuario validado
			$formCadastrarUsuarioValidado = new Basico_Form_CadastrarUsuarioValidado();
			
			// carregando painel
			$titlePane = "<div dojoType='dijit.TitlePane' open='true' title='Dados Básicos' style='width:500px;'>";
			$titlePaneClose = "</div>";
			
			// carregando painel no form
			$this->view->form = $titlePane . $formCadastrarUsuarioValidado . $titlePaneClose;
			
			// renderizando a view
			$this->_helper->Renderizar->renderizar();
    	}
    }

    /**
     * Redireciona para view de Token Expirado
     * 
     * @return void
     */
    public function errotokenexpiradoAction() 
    {
    	// carregando titulo, link para re-cadastro e mensagem
        $tituloView            = $this->view->tradutor(MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO, DEFAULT_USER_LANGUAGE);
        $linkRecomecarCadastro = $this->view->tradutor(LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO, DEFAULT_USER_LANGUAGE);
        $mensagemView          = "<a href='../login/cadastrarUsuarioNaoValidado/'>{$linkRecomecarCadastro}</a>";
        
        // carregando array com o cabecalho da view
    	$cabecalho             = array('tituloView' => $tituloView, 'mensagemView' => $mensagemView);
    
	    // carregando cabelhaco na view
		$this->view->cabecalho = $cabecalho;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }    

    /**
     * Redireciona para a view de Token Invalido
     * 
     *  @return void
     */
    public function errotokeninvalidoAction() 
    {
    	// carregando titulo, link para re-cadastro e mensagem
        $tituloView            = $this->view->tradutor(MSG_TOKEN_EMAIL_VALIDACAO_INVALIDO, DEFAULT_USER_LANGUAGE);
        $cabecalho =  array('tituloView' => $tituloView);
    
	    // carregando array com o cabecalho da view
		$this->view->cabecalho = $cabecalho;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }    
}