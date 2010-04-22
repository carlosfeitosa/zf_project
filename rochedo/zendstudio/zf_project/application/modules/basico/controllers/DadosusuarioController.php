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

    public function cadastrardadosusuarioAction()
    {
	    $formCadastrarDadosUsuario = new Basico_Form_CadastrarDadosUsuario();
		$this->view->form = $formCadastrarDadosUsuario;			
		
		//Renderiza a view no script global
		$this->_helper->Renderizar->renderizar();
    }     

}