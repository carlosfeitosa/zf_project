<?php
/**
 * 
 * Controlador de Erros do sistema.
 *
 */
class ErrorController extends Zend_Controller_Action
{
	/**
	 * Ação default para erros do sistema.
	 * @return unknown_type
	 */
    public function errorAction()
    {
        $errors = $this->_getParam('error_handler');
        
        $bootstrap = $this->getInvokeArg('bootstrap');
        $requestString = var_export($errors->request->getParams(), true);
        $bootstrap->logger->salvaLogFS("EXCEPTION: {$errors->exception} | " . PHP_EOL . "REQUEST: {$requestString}", LOG_PRIORITY_ERRO);
        
        switch ($errors->type) { 
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER:
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION:

                // 404 error -- controller or action not found
                $this->getResponse()->setHttpResponseCode(404);
                $this->view->message = MSG_ERRO_PAGINA_NAO_ENCONTRADA;
                break;
            default:
                // application error 
                $this->getResponse()->setHttpResponseCode(500);
                $this->view->message = MSG_ERRO_APLICACAO;
                break;
        }
        
        $this->view->exception = $errors->exception;
        $this->view->request   = $errors->request;
        
    }
}