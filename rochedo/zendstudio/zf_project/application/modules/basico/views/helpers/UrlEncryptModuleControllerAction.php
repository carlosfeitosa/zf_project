<?php

class Basico_View_Helper_UrlEncryptModuleControllerAction extends Zend_View_Helper_Abstract
{
    /**
    * Gera um Token para uma URL
    * @param String $url
    * @return String
    */
    public function urlEncryptModuleControllerAction($module, $controller, $action, $params = array(), $removeBaseUrl = false)  
    {
    	// recuperando url
    	$url = $this->view->url(array('module' => $module, 'controller' => $controller, 'action' => $action, $params));

    	// recuperando url encriptada
    	$urlEncriptada = Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl($url, $removeBaseUrl);

    	// verificando se deve remover o base url da url encriptada
    	if ($removeBaseUrl) {
    		// removendo o base url da url encriptada
    		$urlEncriptada = str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $urlEncriptada);
    	}

    	// retornando url encriptada
        return $urlEncriptada;
    }  
}  