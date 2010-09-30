<?php
/**
 * Gerador Formulário Controller
 *
 * Controla a geração de formulário para os Módulos do Sistema.
 * 
 * @uses       Basico_Model_GeradorFormulario
 * @subpackage Controller
 */

// include de controladores
require_once("GeradorControllerController.php");

class Basico_GeradorFormularioController extends Zend_Controller_Action
{
    /**
    * @var object
    */
    private $request;
    
        
    /**
     * Inicializa controlador GeradorFormulario
     */
    public function init()
    {
        // carregando titulo e subtitulo da view
        $tituloView    = $this->view->tradutor('VIEW_GERADOR_FORMULARIO_TITULO', DEFAULT_USER_LANGUAGE);
        $subtituloView = $this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUBTITULO', DEFAULT_USER_LANGUAGE);

        // carregando array do cabecalho da view
        $cabecalho     =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
        
        // carregando o cabecalho na view
        $this->view->cabecalho = $cabecalho;
    }

    
    public function getAuthAdapter(array $params)
    {

    }

    public function preDispatch()
    {

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
        // recuperando o objeto formulario
        $formulario = $this->getObjectFormGeradorFormulario();
        
        // carregando o formulario na view
        $this->view->form = $formulario;
        
        // desmarcando a selecao padrao de formulario, obrigando o usuario a escolher um formulario
        $formulario->selectFormulario->setValue(-1);
        
        // carregando no array os nomes e ids dos formulario
        $arrayFormularios = $this->retornaArrayNomeFormularios();
        
        // populando o elemento select com o id e nome dos formulários
        $this->view->form->selectFormulario->addMultiOptions($arrayFormularios);
        
        // renderizando a view
        $this->_helper->Renderizar->renderizar();
    }
    
    /**
     * Gera o formulário.
     * 
     * return void|forward
     */
    public function gerarformularioAction()
    {   
    	// verifica se a requisição é do tipo POST
    	if (!$this->getRequest()->isPost()) {
            return $this->_forward('index');
        }
        
        // recuperando o objeto form gerador formulario
        $formGeradorFormulario = $this->getObjectFormGeradorFormulario();
        
        // recuperando os elementos do formulario
        $elements = $formGeradorFormulario->getElements();
        
        // definindo o conteúdo do elemento 'selectFormulario' com o id e nome dos formulários
        $elements['selectFormulario']->setMultiOptions($this->retornaArrayNomeFormularios());
        
        // recuperando os dados dos elementos enviados no post do formulário
        $formGeradorFormulario->populate($_POST);   	
        
        // inicializando variaveis
        $idFormulario = 0;
        
        //verifica se existe valor no elemento selectFormulario enviado via post
        if (isset($_POST['selectFormulario']) ) {
        	// recuperando o id do formulario
            $idFormulario = $_POST['selectFormulario'];
            
            // definindo o conteúdo do elemento 'modulosFormulario' com o id e nome dos modelos do formulário
            $arrayModulosFormulario = $this->retornaArrayNomesModulosFormulario($idFormulario);
            
            // verificando se existem modulos
            if ($arrayModulosFormulario) {
                $elements['modulosFormulario']->setMultiOptions($arrayModulosFormulario);
            }
        }
        
        // checando se foi utilizado o metodo post e se botao 'enviar' foi acionado
        if ($formGeradorFormulario->isValid($_POST) and isset($_POST['enviar'])) {

        	// instanciando modelo de formulario
        	$modeloFormulario = new Basico_Model_Formulario();
        	// localizando o formulario
            $modeloFormulario->find($idFormulario);
        	
            // verificando se foram selecionados modulos para exclusao da geracao
            if (isset($_POST['excludeModulesNames'])){
            	// setando os modulos selecionados para exclusao
            	$excludeModulesNames = $_POST['modulosFormulario'];
            }else{
                $excludeModulesNames = null;            	
            }
            
            // gerando os formulários
            if (Basico_GeradorControllerController::geradorFormularioGerarFormulario($modeloFormulario, $excludeModulesNames)) {
                
                // carregando o titulo e subtitulo da view
                $tituloView    = $this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_TITULO', DEFAULT_USER_LANGUAGE);
		        $subtituloView = $this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_SUBTITULO', DEFAULT_USER_LANGUAGE);
		        
		        // carregando array do cabecalho da view
		        $cabecalho     =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);

		        // carregando o cabecalho na view
		        $this->view->cabecalho = $cabecalho;

		        // renderizando a view
                $this->_helper->Renderizar->renderizar();
                
                return;
            } else {
                // carregando a mensagem de erro
                $this->view->cabecalho['mensagemView'] = 'Não foi possível gerar o Formulário!';
            }

        }
        
        // carregando o formulario na view
        $this->view->form = $formGeradorFormulario;
        
        // renderizando a view
        $this->_helper->Renderizar->renderizar();
       
    }

    /**
     * Retorna array contendo o par id/nome de todos os formulários
     * 
     * @return Array
     */
    public function retornaArrayNomeFormularios()
    {
    	// recuperando o modelo de formulario
        $modelFormulario = new Basico_Model_Formulario();
        
        // recuperando array de objetos contendo todos os formularios
        $arrayFormulariosObjects = $modelFormulario->fetchAll();

        // verificando se o array foi recuperado
        if ($arrayFormulariosObjects) {
        	//$arrayNomeFormularios[0] = null;
            foreach ($arrayFormulariosObjects as $formularioObject){
            	// setando array com ids e nomes dos formularios
                $arrayNomeFormularios[$formularioObject->id] = $formularioObject->formName;
            }
        }
        
        // retornando o array contendo o par id/nome dos formularios
        return $arrayNomeFormularios;
    }

    /**
     * Retorna uma array contendo o par id/modulo de um formulário
     * 
     * @param Integer $idFormulario
     * 
     * @return Array|false
     */
    public function retornaArrayNomesModulosFormulario($idFormulario)
    {
		// recuperando o modelo de formulario
    	$modelFormulario = new Basico_Model_Formulario();
    	
    	// recuperando o formulario
    	$modelFormulario->find($idFormulario);
        
    	// verificando se o formulario foi recuperado
        if (isset($modelFormulario->id)) {
        	// recuperando modulos do formulario
	        $arrayObjsModulosFormularioObjects = $modelFormulario->getModulosObjects();
	        
	        // verificando se houve recuperacao dos modulos
	        if ($arrayObjsModulosFormularioObjects != null){
	        	// loop para recuperar o nome dos modulos
	            foreach ($arrayObjsModulosFormularioObjects as $moduloObject){
	            	// setando o nome dos modulos
	                $arrayModulos[$moduloObject->nome] = $moduloObject->nome;
	            }
	            
	            // retornando array contendo os modulos associados ao fomulario
	            return $arrayModulos;
	        }
        }
        return false;
    }
}