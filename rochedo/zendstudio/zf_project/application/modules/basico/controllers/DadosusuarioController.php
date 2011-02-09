<?php
/**
 * Controlador Dados do Usuario
 * 
 */
class Basico_DadosusuarioController extends Zend_Controller_Action
{
    
    /**
	* @var object
	*/
	private $request;
	
	/**
	 * @see library/Zend/Controller/Zend_Controller_Action#init()
	 */
	public function init()
    {
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }

    /**
     * Chamada do forulario de cadastro de dados do usuario
     * 
     * @return void
     */
    public function indexAction()
    {
    	// instanciando o formulario
	    $formDadosUsuario = new Basico_Form_CadastrarDadosUsuario();
	    // passando o formulario para a view
		$this->view->form = $formDadosUsuario;			
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}