<?php
/**
 * 
 * Controlador primário do sistema.
 *
 */
class IndexController extends Zend_Controller_Action
{

	/**
	 * Inicializa o controller.
	 * @see library/Zend/Controller/Zend_Controller_Action#init()
	 */
    public function init()
    {
        /* Initialize action controller here */
    }

    /**
     * Ação principal e default do controller
     * @return unknown_type
     */
    public function indexAction()
    {
        // action body
        $content[] = '<center>
					  <span id="index_application_name">'. APPLICATION_NAME .'</span><br>
					  <span id="index_application_title">'. APPLICATION_TITLE .'</span>
					  </center>';
        
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}

