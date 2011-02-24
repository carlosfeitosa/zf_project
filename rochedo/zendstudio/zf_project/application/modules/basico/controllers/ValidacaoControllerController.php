<?php
/**
 * Controlador Validacao
 * 
 */
class Basico_ValidacaoControllerController
{
	/**
	 * Função para validação padrão de formularios.
	 * 
	 * @param $form
	 * 
	 * @return Boolean
	 */
	private function validaForm($form)
	{
		// verificando se a requisicao eh foi enviada por post
		if (!Zend_Controller_Front::getInstance()->getRequest()->isPost()) {
			// redirecionando para o proprio formulario
            return $this->_helper->redirector($form->getName());
        }
        
        // verificando se o formulario passou pela validacao
		if (!$form->isValid(Zend_Controller_Front::getInstance()->getRequest()->getPost())) {
			// recuperando o formulario
            $this->view->form = $form;
            
            return;
        }
        return true;
	} 
}