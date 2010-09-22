<?php
/**
 * Gerador Formulário Controller
 *
 * Controla a geração de formulário para os Módulos do Sistema.
 * 
 * @uses       Basico_Model_GeradorFormulario
 * @subpackage Controller
 */

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
        //Carrega as mensagens
        $tituloView    = $this->view->tradutor('VIEW_GERADOR_FORMULARIO_TITULO', DEFAULT_USER_LANGUAGE);
        $subtituloView = $this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUBTITULO', DEFAULT_USER_LANGUAGE);
                        
        $cabecalho     =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
        
        //Carrega as mensagens na view
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
     * 
     * @return Basico_Form_GeradorFormulario
     */
    public function getFormGeradorFormulario($options = null)
    {                  
        return new Basico_Form_GeradorFormulario($options);
    }    
    
    
    /**
     * Ação principal do controlador.
     * 
     *  Seta o form na view
     * 
     */
    public function indexAction()
    {
        //Instancia o formulario
        $formulario = $this->getFormGeradorFormulario();
        
        //Carrega o formulario na view
        $this->view->form = $formulario;
        $formulario->selectFormulario->setValue(-1);
        //Popula o elemento select com o id e nome dos formulários
        $arrayFormularios = $this->retornaArrayNomeFormularios();
        $this->view->form->selectFormulario->addMultiOptions($arrayFormularios);
        
        $this->_helper->Renderizar->renderizar();
    }
    
    
    /**
     * Gera o formulário.
     * 
     */
    public function gerarformularioAction()
    {   
    	//varifica se a requisição é do tipo POST
    	if (!$this->getRequest()->isPost()) {
            return $this->_forward('index');
        }
        
        //Retorna uma instancia do Modelo Formulario
        $formGeradorFormulario = $this->getFormGeradorFormulario();
        
        //Recupera os elementos do formulário
        $elements = $formGeradorFormulario->getElements();
        
        //Define o conteúdo do elemento 'selectFormulario' com o id e nome dos formulários
        $elements['selectFormulario']->setMultiOptions($this->retornaArrayNomeFormularios());
        
        //Recupera os dados dos elementod enviados no post do formulário
        $formGeradorFormulario->populate($_POST);   	
        
        $idFormulario = 0;
        
        //verifica se existe valor no elemento selectFormulario enviado via post
        if (isset($_POST['selectFormulario']) ) {
            $idFormulario = $_POST['selectFormulario'];
            
            //Define o conteúdo do elemento 'modulosFormulario' com o id e nome dos modelos do formulário
            $arrayModulosFormulario = $this->retornaArrayNomesModulosFormulario($idFormulario);
            if ($arrayModulosFormulario) {
                $elements['modulosFormulario']->setMultiOptions($arrayModulosFormulario);
            }
        }
        
        // Valida os dados submetidos do formulário.
        if ($formGeradorFormulario->isValid($_POST) and isset($_POST['enviar'])) {
        	$modeloFormulario = new Basico_Model_Formulario();
            $modeloFormulario->find($idFormulario);
        	
            if (isset($_POST['excludeModulesNames'])){
            	$excludeModulesNames = $_POST['modulosFormulario'];
            }else{
                $excludeModulesNames = null;            	
            }
            
            // Processa a geração do formulários
            if (Basico_GeradorControllerController::geradorFormularioGerarFormulario($modeloFormulario, $excludeModulesNames)) {
                
                //Carrega a mensagen de confirmação na view
                $tituloView    = $this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_TITULO', DEFAULT_USER_LANGUAGE);
		        $subtituloView = $this->view->tradutor('VIEW_GERADOR_FORMULARIO_SUCESSO_GERAR_FORMULARIO_SUBTITULO', DEFAULT_USER_LANGUAGE);
		        $cabecalho     =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);

		        //Carrega as mensagens na view
		        $this->view->cabecalho = $cabecalho;

		        //Renderiza a view
                $this->_helper->Renderizar->renderizar();
                
                return;
            }else{
                //Carrega as mensagen de erro
                $this->view->cabecalho['mensagemView'] = 'Não foi possível gerar o Formulário!';
            }

        }
        
        //Devolve o formulário para a view
        $this->view->form = $formGeradorFormulario;
        
        //Renderiza o formulário na view
        $this->_helper->Renderizar->renderizar();
       
    }
    
    /**
     * 
     * Retorna array contendo o par id/nome formulário
     */
    public function retornaArrayNomeFormularios(){
        $modelFormulario = new Basico_Model_Formulario();
        $arrayFormulariosObjects = $modelFormulario->fetchAll();

        if ($arrayFormulariosObjects){
        	//$arrayNomeFormularios[0] = null;
            foreach ($arrayFormulariosObjects as $formularioObject){
                $arrayNomeFormularios[$formularioObject->id] = $formularioObject->formName;
            }
        }
        return $arrayNomeFormularios;
    }
    
    /**
     * 
     * Retorna uma array contendo o par id/modulo de um formulário
     * 
     * @param $idFormulario
     */
    public function retornaArrayNomesModulosFormulario($idFormulario){
        
    	$modelFormulario = new Basico_Model_Formulario();
        $arrayFormularioObject = $modelFormulario->fetchList("id = {$idFormulario}");
        
        if ($arrayFormularioObject != null){
	        $arrayModulosFormularioObjects = $arrayFormularioObject[0]->getModulosObjects();
	        if ($arrayModulosFormularioObjects != null){
	            foreach ($arrayModulosFormularioObjects as $moduloObject){
	                $arrayModulos[$moduloObject->nome] = $moduloObject->nome;
	            }
	            return $arrayModulos;
	        }
        }
        return false;
    }

 
}