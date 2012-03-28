<?php

class Basico_View_Helper_UrlEncrypt extends Zend_View_Helper_Abstract
{
    /**
    * Gera um Token para uma URL
    * @param String $url
    * @return String
    */
    public function urlEncrypt($url, $removeBaseUrl = false)  
    {
    	// recuperando url encriptada
    	$urlEncriptada = Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl($url);

    	// verificando se deve remover o base url da url encriptada
    	if ($removeBaseUrl) {
    		// removendo o base url da url encriptada
    		$urlEncriptada = str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $urlEncriptada);
    	}

    	// retornando url encriptada
        return $urlEncriptada;
    }  
}  