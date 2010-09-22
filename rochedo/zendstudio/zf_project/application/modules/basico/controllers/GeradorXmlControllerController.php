<?php
/**
 * Controlador Gerador XML
 */

class Basico_GeradorXmlControllerController
{
	/**
	 * Gera XML.
	 * @param $objeto
	 * @param $domElement
	 * @param $DOMDocument
	 * @param $rootNamespace
	 * @param $rootElement
	 * @param $xsdNamespace
	 * @param $xsdLocation
	 * @return void
	 */
    public static function gerar($objeto, $domElement = NULL, $DOMDocument = NULL, $rootNamespace = NULL, $rootElement = NULL, $xsdNamespace = NULL, $xsdLocation = NULL)
    {
        if(is_null($DOMDocument)){
            $DOMDocument = new DOMDocument("1.0", "UTF-8");
            $DOMDocument->formatOutput = true;

            if ($rootNamespace){           
                $root = $DOMDocument->createElementNS($rootNamespace, $rootElement, null);
                $root->setAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
                $root->setAttribute("xsi:schemaLocation", "{$xsdNamespace} http://{$_SERVER['HTTP_HOST']}/{$xsdLocation}");
                
                $header = $DOMDocument->createElement('header');
                $header->setAttribute('applicationName', APPLICATION_NAME);
                $header->setAttribute('applicationVersion', APPLICATION_VERSION);
                
                $root->appendChild($header);
            }
            
			self::gerar($objeto, $root, $DOMDocument);
            $DOMDocument->appendChild($root);
            return $DOMDocument->saveXML();
        }
        else{
            $mixed = array();
            
       	    if (is_object($objeto)){
    	        $arrayAtributosObjeto = array();
    	        
        	    $nomeObjeto = get_class($objeto);
        	    
        	    while (strpos($nomeObjeto, '_')){
        	        $nomeObjeto = substr($nomeObjeto, strpos($nomeObjeto, '_')+1, strlen($nomeObjeto)-strpos($nomeObjeto, '_')+1);
        	    }
                $arrayAtributosObjeto = (array) $objeto;
                
                $nomeObjeto = strtolower(substr($nomeObjeto, 0, 1)) . substr($nomeObjeto, 1, strlen($nomeObjeto)-1);
                $arrayAtributosObjeto = self::limpaChavesArrayAtributosObjeto($arrayAtributosObjeto);
                
                $mixed[$nomeObjeto] = $arrayAtributosObjeto;
    	    }
    	    else{
    	        $mixed = $objeto;
    	    }
                        
            if(is_array($mixed)){
                foreach($mixed as $index => $mixedElement){
                    if(is_int($index)){
                        if($index == 0){
                            $node = $domElement;
                        }
                        else{
                            $node = $DOMDocument->createElement($domElement->tagName);
                            $domElement->parentNode->appendChild($node);
                        }
                    }
                    else{
                        $plural = $DOMDocument->createElement($index);
                        $domElement->appendChild($plural);
                        $node = $plural;
                        if(rtrim($index, 's') !== $index){
                            $singular = $DOMDocument->createElement(rtrim($index, 's'));
                            $plural->appendChild($singular);
                            $node = $singular;
                        }
                    }
                    self::gerar($mixedElement, $node, $DOMDocument);
                }
            }
            else{
                $domElement->appendChild($DOMDocument->createTextNode($mixed));
            }
        }
    }
	
    /**
     * limpaChavesArrayAtributosObjeto
     * @param $arrayAtributosObjeto
     * @return unknown_type
     */
    private function limpaChavesArrayAtributosObjeto($arrayAtributosObjeto = array())
    {
        $arrayResultados = array();
        $arrayChaves     = array_keys($arrayAtributosObjeto);
        
        foreach($arrayChaves as $chave){
            if ($arrayAtributosObjeto[$chave] != NULL)
                $arrayResultados[str_replace('_', '', strstr($chave, '_', false))] = $arrayAtributosObjeto[$chave];
        }

        return $arrayResultados;
    }
}