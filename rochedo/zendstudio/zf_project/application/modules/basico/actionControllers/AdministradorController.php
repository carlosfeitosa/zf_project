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
    	// carregando o titulo
    	$tituloView = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_ADMIN_INDEX_TITULO'));

    	// verificando se a aplicacao esta rodando em ambiente de desenvolvimento
    	if (Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {
    		// carregando subtitulo
    	    $subtituloView = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("<a onClick='loading()' href='" . $this->view->urlEncrypt($this->view->url(array('module' => 'basico', 'controller' => 'administrador', 'action' => 'resetadb'))) . "'>" . $this->view->tradutor('VIEW_ADMIN_BD_RESET_BUTTON_LABEL') . "</a>" .
    	                     																	  "<br><a onClick='loading()' href='" . $this->view->urlEncrypt($this->view->url(array('module' => 'basico', 'controller' => 'geradorformulario', 'action' => 'gerartodosformularios'))) . "'>" . $this->view->tradutor('VIEW_ADMIN_FORM_GENERATE_ALL_SYSTEM_FORMS_BUTTON_LABEL') . "</a>");
    	}
    	else {
    		// setando subtitulo para vazio
    	    $subtituloView = NULL;
    	}

		$content = array();
		$content[] = $tituloView;
		$content[] = $subtituloView;
						
		// enviado conteúdo para a view
		$this->view->content = $content;

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Acao para regerar os checksum de um determinado modelo ou de todos os modelos
     * 
     * @return void
     */
    public function regerarchecksummodeloAction()
    {
    	// inicializando variaveis
    	$nomeModelo = null;
    	$idModelo = null;

    	// recuperando parametros
    	$parametros = $this->getRequest()->getParams();
    	
    	// verificando se foi passado os parametros para regeracao de checksum
    	if (array_key_exists('modelo', $parametros) === true) {
    		// recuperando o modelo
    		$nomeModelo = $parametros['modelo'];
			// verificando se foi passado o id do modelo que deseja regerar o checksum
    		if (array_key_exists('id', $parametros)) {
    			// recuperando o id do modelo
    			$idModelo = (Int) $parametros['id'];
    		}

    		// verificando se o sistema deve regerar o checksum de um modelo especifico ou de todos
    		if (strtolower($nomeModelo) === 'todos') {
    			// regerando o checksum de todos os objetos do sistema
    			Basico_OPController_CVCOPController::getInstance()->regerarCheckSumTodosModelos();
    		} else {
    			// verificando se o modelo existe
    			if (class_exists($nomeModelo, true)) {
    				// regerando o checksum do modelo
    				Basico_OPController_CVCOPController::getInstance()->regerarChecksumModelo($nomeModelo, $idModelo);
    				
    			} else {
			    	// setando o titulo da view
			    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Problemas ao tentar regerar checksum!');

					// setando subtitulo da view
		    	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("Modelo informado nao existe.");

		    	    // setando o conteudo na view
					$this->view->content = $content;
			
					// renderizando a view
					$this->_helper->Renderizar->renderizar();

					return;
    			}
    		}
    	} else {
	    	// setando o titulo da view
	    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Problemas ao tentar regerar checksum!');
			// setando subtitulo da view
    	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("Nao foi informado o modelo para regeracao.");

    	    // setando o conteudo na view
			$this->view->content = $content;

			// renderizando a view
			$this->_helper->Renderizar->renderizar();

			return;
    	}

    	// setando o titulo e subtitulo da view
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Sucesso ao regerar checksum!');
		// setando subtitulo da view
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("O modelo {$nomeModelo} teve seu checksum regerado com sucesso.");
	
		// setando o cabecalho na view
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
    	// verificando o resultado do reset
    	if (Basico_OPController_PersistenceOPController::bdResetaBD()) {

			// verificando se o sistema deve gerar versoes para os objetos do sistema
	        if (APPLICATION_DATABASE_RESET_MAKE_SYSTEM_CHECKSUM) {
		        // versionando todos os objetos do sistema
		        Basico_OPController_PersistenceOPController::bdVersionaObjetosNaoVersionados();
	        }

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

        // criando o usuario admin
        Basico_OPController_LoginOPController::getInstance()->criaLoginAdmin();

    	// carregando o titulo
	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_ADMIN_BD_RESET_SUCESSO'));

	    // enviado conteúdo para a view
		$this->view->content = $content;

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}