<?php

/**
 * Basico_TokenController
 * @author joao
 *
 */
class Basico_TokenController extends Basico_AbstractActionController_RochedoGenericActionController
{	
    /**
	 * Inicializa controlador Login 
	 */
	public function init()
    {
		return;
    }

    /**
	 * Inicializa os controladores necessários para operação deste action controller
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractActionController_RochedoGenericActionController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/06/2012
	 */
	protected function _initControllers()
	{
		return;
	}
	
	/**
     * Redireciona para a view de Token Invalido
     * 
     *  @return void
     */
    public function errotokeninvalidoAction() 
    {
    	// carregando titulo, link para re-cadastro e mensagem
        $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('MSG_TOKEN_EMAIL_VALIDACAO_INVALIDO'));
    
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
    
	/**
     * Redireciona para view de Token Expirado
     * 
     * @return void
     */
    public function errotokenexpiradoAction() 
    {
    	// carregando titulo, link para re-cadastro e mensagem
        $tituloView            = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO'));
        $linkRecomecarCadastro = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO'));
        $urlLinkCadastro       = $this->view->urlEncryptModuleControllerAction($this->view->url(array('module' => 'basico', 'controller' => 'login', 'action' => 'cadastrarUsuarioNaoValidado')));
        $mensagemView          = "<br><a href='{$urlLinkCadastro}'>{$linkRecomecarCadastro}</a>";
        
        // carregando array com o cabecalho da view
    	$content[] = $tituloView;
    	$content[] = $mensagemView;
    
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Decodifica um token
     * 
     * @return void
     */
    public function decodeAction()
    {
    	// recuperando o token da requisicao
        $token = $this->_request->getParam('t');

        // decodificando url
        $url = Basico_OPController_CpgTokenOPController::getInstance()->decodeTokenUrlPorToken($token);

        // redirecionando para a url decodificada
        $this->_redirect($url);
    }
    
    /**
     * Funcao para validacao de tokens
     * 
     * @return void
     * 
     * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
     * @since 15/06/2012
     */
    public function validateAction()
    {
    	// recuperando o token da requisicao
        $token = $this->_request->getParam('t');
        
        // recuperando o codigo da operacao
        $codigoOperacao = Basico_OPController_CpgTokenOPController::getInstance()->retornaOperacaoValidacaoTokenPorIdCategoria($token);
        
        // de acordo com o codigo da operacao, encaminha para o controlador responsavel
        switch ($codigoOperacao) {
        	case Basico_OPController_CpgTokenOPController::EMAIL_VALIDACAO_USUARIO:
	       		$this->_redirect($this->view->urlEncryptModuleControllerAction('basico', 'email', 'validaremail', array('t' => $token), true));
        		break;
        	
        	default:
        		throw new Exception('Codigo de operacao do token nao encontrado.');
        	break;
        }
    }
}