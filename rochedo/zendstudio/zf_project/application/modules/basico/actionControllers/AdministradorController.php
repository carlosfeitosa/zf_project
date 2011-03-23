<?php
class Basico_AdministradorController extends Zend_Controller_Action
{
	/**
	* @var object
	*/
	private $request;
	
    /**
	 * Inicializa controlador Administrador
	 * 
	 * @return void
	 */
	public function init()
    {
    	// recuperando a requisicao
        $this->request = Zend_Controller_Front::getInstance()->getRequest();

		// definindo o contexto
		$pdfParametros = array('suffix' => 'pdf', 'headers' => array('Content-Type' => 'application/pdf'));
		$xlsParametros = array('suffix' => 'xls', 'headers' => array('Content-Type' => 'application/xls'));
		$plaintextParametros = array('suffix' => 'plaintext', 'headers' => array('Content-Type' => 'application/plaintext'));
		$impressaoParametros = array('suffix' => 'impressao', 'headers' => array('Content-Type' => 'application/impressao'));
        
		// adicionando os contextos e definindo as permissoes por acao
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
     * Ação principal do controlador
     * @return void
     */
    public function indexAction() 
    {
    	// carregando o titulo e subtitulo da view
    	$tituloView = $this->view->tradutor('VIEW_ADMIN_INDEX_TITULO');
        
    	if (Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {	
    	    $subtituloView = "<a onClick='loading()' href='" . $this->view->url(array('module' => 'basico', 'controller' => 'administrador', 'action' => 'resetadb')) . "'>" . $this->view->tradutor('VIEW_ADMIN_BD_RESET_BUTTON_LABEL') . "</a>" .
    	                     "<br><a onClick='loading()' href='" . $this->view->url(array('module' => 'basico', 'controller' => 'geradorformulario', 'action' => 'gerartodosformularios')) . "'>" . $this->view->tradutor('VIEW_ADMIN_FORM_GENERATE_ALL_SYSTEM_FORMS_BUTTON_LABEL') . "</a>";
    	}
    	else
    	    $subtituloView = NULL;
    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
	            
	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;
		
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
	    $tituloView = $this->view->tradutor('VIEW_ADMIN_BD_RESET_SUCESSO');

    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView);
	            
	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;
		
		$this->getHelper('layout')->enableLayout();

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}