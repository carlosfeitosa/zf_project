<?php
class Basico_AdministradorController extends Basico_AbstractActionController_RochedoGenericActionController
{
    /**
	 * Inicializa controlador administrativo
	 * 
	 * @return void
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
    	    $subtituloView = null;
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
    		} else {
    			// setando o id do modelo para nulo
    			$idModelo = null;
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
    		Basico_OPController_PessoaLoginOPController::getInstance()->efetuaLogoff();

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
        Basico_OPController_PessoaLoginOPController::getInstance()->criaLoginAdmin();

    	// carregando o titulo
	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_ADMIN_BD_RESET_SUCESSO'));

	    // enviado conteúdo para a view
		$this->view->content = $content;

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Ação para habilitar o crud visual para um modelo passado por parametro
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 11/04/2012
     */
    public function crudAction()
    {
    	// recuperando parametros
    	$arrayParametros = $this->getRequest()->getParams();

    	// verificando se foi passado os parametros para regeracao de checksum
    	if (array_key_exists(Basico_OPController_CrudOPController::ATRIBUTO_MODELO_CRUD, $arrayParametros) === true) {
    	    // recuperando o modelo
    		$nomeModelo = $arrayParametros[Basico_OPController_CrudOPController::ATRIBUTO_MODELO_CRUD];

    		// verificando se o modelo existe
    		if (class_exists($nomeModelo, true)) {
    			// processando o crud
    			$retornoCrud = Basico_OPController_CrudOPController::processaCrudModelo($arrayParametros);

    			// verificando o resultado do crud
    			if (false === $retornoCrud) {
			    	// setando o titulo da view
			    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Problemas ao tentar realizar o crud!');
	
			    	// setando subtitulo da view
		    	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("Erro no retorno do método de processamento do crud.");
	
		    	    // setando o conteudo na view
					$this->view->content = $content;
	
					// renderizando a view
					$this->_helper->Renderizar->renderizar();
	
					return;
    			} else {
    				// verificando se foi retornando algum conteúdo
    				if (isset($retornoCrud['content'])) {
    					// setando conteúdo na view
    					$this->view->content = $retornoCrud['content'];
    					$this->view->content[] = 'SQL log:<br>';
    					$this->view->content[] = Basico_OPController_UtilOPController::retornaTextAreaSqlCrud();
    				}
    				// verificando se foi retornando algum script
    				if (isset($retornoCrud['scripts'])) {
    					// setando scripts na view
    					$this->view->scripts = $retornoCrud['scripts'];
    				}

    				// verificando se a ação é do tipo "dados"
    				if ((isset($arrayParametros[Basico_OPController_CrudOPController::ATRIBUTO_TIPO_CRUD])) and ($arrayParametros[Basico_OPController_CrudOPController::ATRIBUTO_TIPO_CRUD] === Basico_OPController_CrudOPController::TIPO_DADOS)) {
	    				// renderizando a view
	    				$this->_helper->Renderizar->renderizar('default.json.phtml', true, true);
    				} else {
    					// adicionando css do UI JQuery
						$this->view->headLink()->appendStylesheet(Basico_OPController_UtilOPController::retornaBaseUrl() . JQUERY_UI_CSS_FILE_PATH);
    					
    					// adicionando css do grid do crud
						$this->view->headLink()->appendStylesheet(Basico_OPController_UtilOPController::retornaBaseUrl() . JQGRID_CSS_FILE_PATH);
						
	    				// renderizando a view
	    				$this->_helper->Renderizar->renderizar();
    				}
    			}

    		} else {
		    	// setando o titulo da view
		    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Problemas ao tentar realizar o crud!');

		    	// setando subtitulo da view
	    	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("Modelo informado não existe.");

	    	    // setando o conteudo na view
				$this->view->content = $content;

				// renderizando a view
				$this->_helper->Renderizar->renderizar();

				return;
   			}
    		
    	} else {
 	    	// setando o titulo da view
	    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Problemas ao tentar realizar o crud!');
			// setando subtitulo da view
    	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("Não foi informado o modelo para manipulação.");

    	    // setando o conteudo na view
			$this->view->content = $content;

			// renderizando a view
			$this->_helper->Renderizar->renderizar();

			return;   		
    	}
    }

    /**
     * Ação para retornar o reflection de uma classe.
     * 
     * É esperado um parametro, via get, chamado "classe" onde o valor é o nome da classe que se deseja recuperar o reflection
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 08/06/2012
     */
    public function reflectionAction()
    {
    	// recuperando parametros
    	$arrayParametros = $this->getRequest()->getParams();

    	// verificando se foi passado o parametro da classe
    	if ((array_key_exists('classe', $arrayParametros)) or ('' === $arrayParametros['classe'])) {
    		// recuperando o nome da classe
    		$nomeClasse = $arrayParametros['classe'];
    		
    		// verificando se a classe existe
    		if (!class_exists($nomeClasse, true)) {
	 	    	// setando o titulo da view
		    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Problemas ao tentar realizar o reflection!');
				// setando subtitulo da view
	    	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("A classe informada não existe.");
	
	    	    // setando o conteudo na view
				$this->view->content = $content;
	
				// renderizando a view
				$this->_helper->Renderizar->renderizar();
	
				return;
    		}

 	    	// setando o titulo da view
	    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Reflection da classe ' . $nomeClasse);

    		// recuperando o reflection da classe
    		$content[] = Basico_OPController_ReflectionOPController::retornaReflectionClass($nomeClasse);

    	    // setando o conteudo na view
			$this->view->content = $content;

			// renderizando a view
			$this->_helper->Renderizar->renderizar();

			return;
    	} else {
 	    	// setando o titulo da view
	    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Problemas ao tentar realizar o reflection!');
			// setando subtitulo da view
    	    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo("Não foi informado a classe para recuperação do reflection.");

    	    // setando o conteudo na view
			$this->view->content = $content;

			// renderizando a view
			$this->_helper->Renderizar->renderizar();

			return;
    	}
    }
}