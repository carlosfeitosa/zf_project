<?php
/**
 * Controlador Gerador XML
 */

class Basico_OPController_GeradorXmlOPController
{
	/**
	 * Gera XML.
	 * 
	 * @param objeto $objeto
	 * @param DOMElement $domElement
	 * @param DOMDocument $DOMDocument
	 * @param String $rootNamespace
	 * @param String $rootElement
	 * @param String $xsdNamespace
	 * @param String $xsdLocation
	 * 
	 * @return void
	 */
    public static function gerar($objeto, $domElement = null, $DOMDocument = null, $rootNamespace = null, $rootElement = null, $xsdNamespace = null, $xsdLocation = null)
    {
        if(is_null($DOMDocument)){
        	// instanciando a classe DOMDocument
            $DOMDocument = new DOMDocument("1.0", "UTF-8");
            // setando a formatacao
            $DOMDocument->formatOutput = true;

            // verificando se foi passado um namespace
            if ($rootNamespace){
            	// criando elemento root
                $root = $DOMDocument->createElementNS($rootNamespace, $rootElement, null);
                $root->setAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
                $root->setAttribute("xsi:schemaLocation", "{$xsdNamespace} http://{$_SERVER['HTTP_HOST']}/{$xsdLocation}");
                
                // criando cabecalho
                $header = $DOMDocument->createElement('header');
                $header->setAttribute('applicationName', APPLICATION_NAME);
                $header->setAttribute('applicationVersion', APPLICATION_VERSION);
                
                // adicionando nó
                $root->appendChild($header);
            }

            // chamada recursiva para adicionar o elemento root
			self::gerar($objeto, $root, $DOMDocument);
			
			// adicionando nó
            $DOMDocument->appendChild($root);
            
            // retornando o xml
            return $DOMDocument->saveXML();
        }
        else{
        	// inicializando variaveis
            $mixed = array();
            
            // checando se a variavel $objeto eh um objeto
       	    if (is_object($objeto)){
       	    	// inicializando variaveis
    	        $arrayAtributosObjeto = array();

    	        // recuperando o nome do objeto
        	    $nomeObjeto = get_class($objeto);

        	    // loop para extrair o ultimo nome da classe (separado por "_")
        	    while (strpos($nomeObjeto, '_')){
        	        $nomeObjeto = substr($nomeObjeto, strpos($nomeObjeto, '_')+1, strlen($nomeObjeto) - strpos($nomeObjeto, '_') + 1);
        	    }
        	    
        	    // transformando o objeto em array
                $arrayAtributosObjeto = (array) $objeto;

                // recuperando o nome do objeto
                $nomeObjeto = strtolower(substr($nomeObjeto, 0, 1)) . substr($nomeObjeto, 1, strlen($nomeObjeto)-1);
                // recuperando os atributos do objeto
                $arrayAtributosObjeto = self::limpaChavesArrayAtributosObjeto($arrayAtributosObjeto);
                
                // setando os atributos do objeto no array
                $mixed[$nomeObjeto] = $arrayAtributosObjeto;
    	    }
    	    else{
    	    	// inicializando variaveis
    	        $mixed = $objeto;
    	    }

    	    // checanso se $mixed eh um array
            if(is_array($mixed)){
            	// extraindo os atributos e transformando em nós do XML
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
                    // chamada recursiva para adicao de elementos
                    self::gerar($mixedElement, $node, $DOMDocument);
                }
            }
            else{
            	// adicao de nós
                $domElement->appendChild($DOMDocument->createTextNode($mixed));
            }
        }
    }
	
    /**
     * Limpa a chave do array de atributos do objeto
     * 
     * @param Array $arrayAtributosObjeto
     * @return Array
     */
    private static function limpaChavesArrayAtributosObjeto($arrayAtributosObjeto = array())
    {
    	// inicializando variaveis
        $arrayResultados = array();
        $arrayChaves     = array_keys($arrayAtributosObjeto);

        // limpando os atributos
        foreach($arrayChaves as $chave){
            if ($arrayAtributosObjeto[$chave] != null)
                $arrayResultados[str_replace('_', '', strstr($chave, '_', false))] = $arrayAtributosObjeto[$chave];
        }

        // retornando array com os atributos limpos
        return $arrayResultados;
    }
}