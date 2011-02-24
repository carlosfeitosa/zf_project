<?php

class Basico_View_Helper_UrlEncrypt extends Zend_View_Helper_Abstract
{
    /**
    * Gera um Token para uma URL
    * @param String $url
    * @return String
    */
    public function urlEncrypt($url)  
    {
    	// instanciando controladores
        return Basico_TokenControllerController::getInstance()->gerarTokenPorUrl($url);
    }  
}  