<?php
class Basico_AdministradorController extends Zend_Controller_Action
{
    /**
	 * Inicializa controlador Administrador
	 * 
	 * @return void
	 */
	public function init()
    {
    	return;
    }
    
    /**
     * Ação principal do controlador
     * @return void
     */
    public function indexAction() 
    {
    	// carregando o titulo e subtitulo da view
    	$tituloView = '<h3>'.$this->view->tradutor('VIEW_ADMIN_INDEX_TITULO').'</h3>';

    	// verificando se a aplicacao esta rodando em ambiente de desenvolvimento
    	if (Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {
    		// setando subtitulo da view
    	    $subtituloView = "<h4><a onClick='loading()' href='" . $this->view->urlEncrypt($this->view->url(array('module' => 'basico', 'controller' => 'administrador', 'action' => 'resetadb'))) . "'>" . $this->view->tradutor('VIEW_ADMIN_BD_RESET_BUTTON_LABEL') . "</a>" .
    	                     "<br><a onClick='loading()' href='" . $this->view->urlEncrypt($this->view->url(array('module' => 'basico', 'controller' => 'geradorformulario', 'action' => 'gerartodosformularios'))) . "'>" . $this->view->tradutor('VIEW_ADMIN_FORM_GENERATE_ALL_SYSTEM_FORMS_BUTTON_LABEL') . "</a></h4>";
    	}
    	else {
    		// setando subtitulo para vazio
    	    $subtituloView = NULL;
    	}

	
		
		$content = array();
		$content[] = $tituloView;
		$content[] = $subtituloView;
						
		$this->view->content = $content;

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
    
    /**
     * Ação para resetar o banco de dados.
     * 
     * @return void
     */
    public function resetadbAction()
    {
    	// desabilitando layout
    	$this->getHelper('layout')->disableLayout();

    	// verificando o resultado do reset
    	if (Basico_OPController_PersistenceOPController::bdResetaBD()) {

    		// retirando o usuario da sessao
    		Basico_OPController_LoginOPController::getInstance()->efetuaLogoff();

    		// montando link para redirecionamento
    		$urlLink = $this->view->url(array('module'=>'basico', 'controller'=>'administrador', 'action'=>'sucessoresetadb'), null, true);
    		$urlLink = str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $urlLink);

    		// redirecionando para a acao de sucesso no reset
			$this->_redirect($urlLink);
    	}   	
    }

    /**
     * Acao para mostrar mensagem de sucsso ao resetar o banco de dados
     * 
     * @return void
     */
    public function sucessoresetadbAction()
    {
    	// carregando o titulo e subtitulo da view
	    $tituloView = '<h3>'.$this->view->tradutor('VIEW_ADMIN_BD_RESET_SUCESSO').'</h3>';

    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView);

	    // setando o cabecalho na view
		$this->view->content = $cabecalho;

		// habilitando o layout
		$this->getHelper('layout')->enableLayout();

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}