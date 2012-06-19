<?php
/**
 * Gerador Formulário Controller
 *
 * Controla a geração de formulário para os Módulos do Sistema.
 * 
 * @uses       Basico_Model_GeradorFormulario
 * @subpackage Controller
 */

class Basico_GeradorFormularioController extends Basico_AbstractActionController_RochedoGenericActionController
{
    /**
     * Inicializa controlador do gerador de formulario
     */
    public function init()
    {
        // carregando titulo e subtitulo da view
        $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_GERADOR_FORMULARIO_TITULO'));
        $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUBTITULO'));
        
        // enviado conteúdo para a view
        $this->view->content = $content;
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
     * Retorna Formulário de Geração de Formulários
     * 
     * @return Basico_Form_GeradorFormulario
     */
    public function getObjectFormGeradorFormulario($options = null)
    {
    	// retornando um novo modelo de gerador formulario
        return new Basico_Form_GeradorFormulario($options);
    }    
    
    /**
     * Ação principal do controlador (seta o form na view)
     * 
     * @return void
     */
    public function indexAction()
    {
    	// redirecionando para a acao gerar formulario
        return $this->_forward('gerarformulario');
    }

    /**
     * Gera todos os formularios existentes no sistems
     * 
     * @return true
     */
    public function gerartodosformulariosAction()
    {
		// gerando todos os formulários
		if (Basico_OPController_GeradorOPController::geradorFormularioGerarTodosFormularios()) {

	        // carregando o titulo e subtitulo da view
	        $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_TITULO'));
			$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIOS_SUBTITULO'));

	        // enviado conteúdo para a view
	        $this->view->content = $content;

			// renderizando a view
			$this->_helper->Renderizar->renderizar();
                
            return true;
		}
    }

    /**
     * Gera o formulário.
     * 
     * return void|forward
     */
    public function gerarformularioAction()
    {
    	// recuperando o post
    	$postFormulario = $this->getRequest()->getPost();

        // recuperando o objeto form gerador formulario
        $formGeradorFormulario = $this->getObjectFormGeradorFormulario();

        // recuperando os elementos do formulario
        $elements = $formGeradorFormulario->getElements();

        // definindo o conteúdo do elemento 'selectFormulario' com o id e nome dos formulários
        $elements['selectFormulario']->setMultiOptions($this->retornaArrayNomeFormularios());

        // recuperando os dados dos elementos enviados no post do formulário
        $formGeradorFormulario->populate($postFormulario);   	

        // inicializando variaveis
        $idFormulario = 0;

        //verifica se existe valor no elemento selectFormulario enviado via post
        if (isset($postFormulario['selectFormulario']) ) {
        	// recuperando o id do formulario
            $idFormulario = (int) $postFormulario['selectFormulario'];

            // definindo o conteúdo do elemento 'modulosFormulario' com o id e nome dos modelos do formulário
            $arrayModulosFormulario = $this->retornaArrayIdsNomesModulosFormulario($idFormulario);

            // verificando se existem modulos
            if ($arrayModulosFormulario) {
                $elements['modulosFormulario']->setMultiOptions($arrayModulosFormulario);
            }
        }

        // checando se foi utilizado o metodo post e se botao 'enviar' foi acionado
        if ((isset($postFormulario['enviar'])) and ($formGeradorFormulario->isValid($postFormulario))) {
            // verificando se foram selecionados modulos para exclusao da geracao
            if (isset($postFormulario['modulosFormulario'])){
            	// setando os modulos selecionados para exclusao
            	$arrayExcludeModulesIds = $postFormulario['modulosFormulario'];
            }else{
            	// setando os modulos selecionado para exclusão para nulo
                $arrayExcludeModulesIds = null;            	
            }

            // gerando os formulários
            if (Basico_OPController_GeradorOPController::geradorFormularioGerarFormulario($idFormulario, $arrayExcludeModulesIds)) {

                // carregando o titulo e subtitulo da view
                $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_TITULO'));
		        $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_SUBTITULO'));

		    	// enviado conteúdo para a view
		    	$this->view->content = $content;

		        // renderizando a view
                $this->_helper->Renderizar->renderizar();

				return;
            }
        }
        
        // carregando o array de conteúdo da página
		$content[] = $formGeradorFormulario;

        // enviado conteúdo para a view
        $this->view->content = array_merge($this->view->content, $content);        

        // renderizando a view
        $this->_helper->Renderizar->renderizar();
    }

    /**
     * Retorna array contendo o par id/nome de todos os formulários
     * 
     * @return Array
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 18/06/2012
     */
    private function retornaArrayNomeFormularios()
    {
    	// inicializando variáveis
    	$arrayRetorno = array('' => '');

    	// inicializando controladores
    	$formularioOPController = Basico_OPController_FormularioOPController::getInstance();

    	// recuperando array de resultados
    	$arrayIdsFormsNames = $formularioOPController->retornaArrayIdsFormsNamesTodosFormulariosOrdenadoPorFormName();

    	// loop para transformar os resultados do array
    	foreach ($arrayIdsFormsNames as $chave => $arrayValores) {
    		// montando array de resultados
    		$arrayRetorno[$arrayValores['id']] = $arrayValores['formName'];

    		// limpando memória
    		unset($chave, $arrayValores);
    	}

    	// limpando memória
    	unset($arrayIdsFormsNames, $formularioOPController);

        // retornando o array contendo o par id/formName
        return $arrayRetorno;
    }

    /**
     * Retorna uma array contendo o par id/modulo de um formulário
     * 
     * @param Integer $idFormulario - id do formulário que deseja recuperar os ids e nomes dos módulos associados
     * 
     * @return Array|false - array contendo os ids e nomes dos módulos ou false se não existir nenhum módulo associado
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 19/06/2012
     */
    public function retornaArrayIdsNomesModulosFormulario($idFormulario)
    {
    	// retornando array contendo os ids e nomes dos módulos associados ao formulário
    	return Basico_OPController_FormularioOPController::getInstance()->retornaArrayIdsNomesModulosFormularioPorIdFormulario($idFormulario);
    }
}