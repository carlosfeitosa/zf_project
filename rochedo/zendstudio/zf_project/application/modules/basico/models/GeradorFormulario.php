<?php
/**
 * GeradorFormulario model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_GeradorFormulario
 * @subpackage Model
 */

// requires
require_once(APPLICATION_PATH . "/modules/basico/controllers/TradutorControllerController.php");

class Basico_Model_GeradorFormulario
{
	public function __construct(array $options = null)
	{
		if (is_array($options)) 
		{
			$this->setOptions($options);
		}
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * @param  mixed $value 
	 * @return void
	 */
	public function __set($name, $value)
	{
		$method = 'set' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
		}
		$this->$method($value);
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * @return mixed
	 */
	public function __get($name)
	{
		$method = 'get' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options 
	 * @return Basico_Model_GeradorFormulario
	 */
	public function setOptions(array $options)
	{
		$methods = get_class_methods($this);
		foreach ($options as $key => $value) 
		{
			$method = 'set' . ucfirst($key);
			if (in_array($method, $methods)) 
			{
			    $this->$method($value);
			}
		}
		return $this;
	}
	
	
	/**
     * Retorna Nome do arquivo do formulário a partir do nome do formulário
     * @param $nomeForm
     */
	private function retornaNomeArquivoForm(Basico_Model_Formulario &$objFormulario)
	{
		$resultado = $objFormulario->formName;
        
        return $resultado . '.php';
	}
	
	/**
     * Retorna Nome da classe do formulário a partir dos nomes do módulo e formulário
     * @param $nomeForm
     */
    private function retornaNomeClasseForm(&$objModulo, &$objFormulario)
    {
	   return ucfirst(strtolower($objModulo->nome)) . "_Form_" . $objFormulario->formName;
    }
	
	/**
	 * Gera Formulário.
	 * @param $objFormulario
	 */
    public function gerar(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM, array $excludeModulesNames = null)
    {
    	$filenameExtensionRecovery              = '.lkg';
    	$headerFormulario                       = Basico_Model_Util::retornaStringComQuebraDeLinha(str_replace('@data_criacao', date('d/m/Y H:i:s'), FORM_GERADOR_HEADER));
        $formBeginTag                           = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_BEGIN_TAG);
        $formClassExtendsTag                    = 'extends';
        $formClassExtendsClass                  = $classToExtends;        
        $formCodeBlockBeginTag                  = Basico_Model_Util::retornaStringComQuebraDeLinha('{');      
        $formCodeBlockEndTag                    = Basico_Model_Util::retornaStringComQuebraDeLinha('}');
        $headerConstructorForm                  = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_CONSTRUCTOR_HEADER);
        $formConstructorCall                    = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_CONSTRUCTOR_CALL);
        $formConstructorInherits                = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_CONSTRUCTOR_INHERITS);
        $formConstructorComment                 = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_CONSTRUCTOR_COMMENT);
        $formName                               = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_FORM_SETNAME . "('{$objFormulario->formName}');");
        $formMethod                             = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_FORM_SETMETHOD . "('{$objFormulario->formMethod}');");
        $formAction                             = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_FORM_SETACTION . "('{$objFormulario->formAction}');");
        $formAttribs                            = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_FORM_ADDATTRIBS . "(array({$objFormulario->formAttribs}));");
        
        if ($objFormulario->getDecoratorObject()->id)
            $formDecorator                      = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_FORM_SETDECORATORS . "(array({$objFormulario->getDecoratorObject()->decorator}));"); 

        $formElementsComment                    = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_ADD_ELEMENTS_COMMENT);
        $formArrayElements                      = Basico_Model_Util::retornaStringComQuebraDeLinha(FORM_GERADOR_ELEMENTS . ' = array();');
        $formCodigoCheckAmbienteDesenvolvimento = FORM_GERADOR_FORM_ELEMENT_CHECK_DEVELOP . $formCodeBlockBeginTag; 
        $formEndTag                             = FORM_END_TAG;
        
        $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento = array('FORMULARIO_ELEMENTO_CAPTCHA');
        
        $resultado = false;
        $modulesPath = array();
        $formClassInstances = array(); 
        
        $modulosObjects = $objFormulario->getModulosObjects($excludeModulesNames);
        $nomeArquivoSaida = self::retornaNomeArquivoForm($objFormulario);
        
        foreach ($modulosObjects as $moduloObject){
        	
            $modulesPath[$moduloObject->nome] = APPLICATION_MODULE_PATH . "/{$moduloObject->path}forms/";
            
            $formClassInstances[$moduloObject->nome] = 'class ' . self::retornaNomeClasseForm($moduloObject, $objFormulario) . " {$formClassExtendsTag} {$formClassExtendsClass}" . PHP_EOL;
        }
                
        try {
        	$arrayArquivosModificados = array();

        	$podeContinuar = true;
        	
        	$nivelIdentacao = 0;
        	       	
            foreach ($modulesPath as $moduleName => $modulePath) {
                $fullFileName = $modulePath . $nomeArquivoSaida;
        	   
				//Criando ponto de restauração do arquivo do formulário
				if (file_exists($fullFileName)){
					$podeContinuar = copy($fullFileName, $fullFileName . $filenameExtensionRecovery);
				    $arrayArquivosModificados[] = $fullFileName;
				}
				
				if (!$podeContinuar)
				    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_LEITURA . "'{$fullFileName}'");
				
    		    $fileResource = fopen($fullFileName, 'w+');
    		    
    		    if (!$fileResource)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_ESCRITA . "'{$fullFileName}'");
                              
                // nivel 0 de identação
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formBeginTag);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . str_replace('@modulo', $moduleName, $headerFormulario));
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formClassInstances[$moduleName]);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formCodeBlockBeginTag);
                // nivel 1 de identação
                $nivelIdentacao++;
                fputs($fileResource, str_replace('@identacao', Basico_Model_Util::retornaIdentacao($nivelIdentacao), str_replace('@nome_classe', self::retornaNomeClasseForm($moduloObject, $objFormulario), $headerConstructorForm)));
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formConstructorCall);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formCodeBlockBeginTag);
                // nivel 2 de identação
                $nivelIdentacao++;
                fputs($fileResource, str_replace('@identacao', Basico_Model_Util::retornaIdentacao($nivelIdentacao), $formConstructorComment));
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formConstructorInherits);
                fputs($fileResource, QUEBRA_DE_LINHA);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formName);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formMethod);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formAction);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formAttribs);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formDecorator);
                fputs($fileResource, QUEBRA_DE_LINHA);           

                // adição dos elementos do formulário
                fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(str_replace('@identacao', Basico_Model_Util::retornaIdentacao($nivelIdentacao), $formElementsComment)));
                fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formArrayElements));
                
                $formularioElementosObjects = $objFormulario->getFormularioElementosObjects();
                
                $contador = 0;
                $formElement = FORM_GERADOR_ELEMENTS . '[@contador]';
                $elementoAmbienteDesenvolvimento = false;
                
                foreach ($formularioElementosObjects as $formularioElementoObject){
                	$formElementLoop = str_replace('@contador', $contador, $formElement);
                	
                	// verificando se o é preciso determinar ambiente de desenvolvimento 
                	if (false !== array_search($formularioElementoObject->getCategoriaObject()->nome, $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento)){
                        $elementoAmbienteDesenvolvimento = true;
                	    fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formCodigoCheckAmbienteDesenvolvimento);
                	    $nivelIdentacao++;
                	}
                	else
                	   $elementoAmbienteDesenvolvimento = false;
                	
                	// criando elemento
                	fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . " = " . FORM_GERADOR_FORM_ELEMENT_CREATEELEMENT . "({$formularioElementoObject->element});"));
                	
                	// setando atributos do elemento
                	if ($formularioElementoObject->elementAttribs)
                        fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETATTRIBS . "(array({$formularioElementoObject->elementAttribs}));"));
                	             	
                	// descobrindo se o campo é requerido
                	if ($formularioElementoObject->getFormularioFormularioElementoObject()->elementRequired == true)
                	    fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_TRUE . ";"));
                	else
                	    fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_FALSE . ";"));

                	// adicionando filtros
                	if ($formularioElementoObject->getFormularioElementoFilterObject()->id)
                        fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDFILTERS . "(array({$formularioElementoObject->getFormularioElementoFilterObject()->filter}));"));
                    
                    // adicionando validadores
                    $arrayFormularioElementoValidators = $formularioElementoObject->getFormularioElementoValidatorsObjects();
                    
                    foreach($arrayFormularioElementoValidators as $formularioElementoValidator){
                        fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDVALIDATOR . "({$formularioElementoValidator->validator});"));
                    }
                    
                    // adicionando elementos label e ajuda
                    if ($formularioElementoObject->constanteTextualLabel){
                    	// adiciona o decorator para os elementos que possuem decorator
                    	if ($formularioElementoObject->getDecoratorObject()->id)
                    		fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$formularioElementoObject->getDecoratorObject()->decorator});"));

                    	// adicionando o link de ajuda
                    	if ($formularioElementoObject->getAjudaObject()->id){
                    		if ($formularioElementoObject->getAjudaObject()->url)
								$urlAjuda = ' . "<br><br>URL: <a href=' . Basico_Model_Util::retornaStringEntreCaracter($formularioElementoObject->getAjudaObject()->url, "\'") . ' target=' . Basico_Model_Util::retornaStringEntreCaracter('_blank', "\'") . '>' . $formularioElementoObject->getAjudaObject()->url . '</a>"';
                    		else
                    			$urlAjuda = '';
                            $linkAjuda = "&nbsp;<a href=" . Basico_Model_Util::retornaStringEntreCaracter(Basico_Model_Util::retornaJavaScriptDialog($objFormulario->formName, '$this->getView()->tradutor(' . DIALOG_HELP_TITLE . ', DEFAULT_USER_LANGUAGE)', '$this->getView()->tradutor(' . Basico_Model_Util::retornaStringEntreCaracter($formularioElementoObject->getAjudaObject()->constanteTextualAjuda, "'") . ', DEFAULT_USER_LANGUAGE)' . $urlAjuda), '"') . ">(?)</a>";
                    	}
                    	else
                    	   $linkAjuda = '';
                    	$linkAjuda = Basico_Model_Util::retornaStringEntreCaracter($linkAjuda, "'");
                    	
                        fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETLABEL . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->constanteTextualLabel}', DEFAULT_USER_LANGUAGE).{$linkAjuda});"));
                    }

                    if ($formularioElementoObject->getAjudaObject()->id){
                        if ($formularioElementoObject->getAjudaObject()->constanteTextualHint)
                            fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETINVALIDMESSAGE . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->getAjudaObject()->constanteTextualHint}', DEFAULT_USER_LANGUAGE));"));
                    }
                    
                    // verificando se o elemento pode ser carregando com dados
                    if ($formularioElementoObject->elementReloadable){
                        fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE));
                        fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao+1) . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETVALUE . "(" . FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE . "{$formularioElementoObject->elementName});"));                    	
                    }
                    
                    // verificando se o é preciso determinar ambiente de desenvolvimento
                    if ($elementoAmbienteDesenvolvimento){
                        $nivelIdentacao--;                    	
                        fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formCodeBlockEndTag);
                    }
                                  	
                    fputs($fileResource, QUEBRA_DE_LINHA);
                	
                	$contador++;
                }
                
                fputs($fileResource, Basico_Model_Util::retornaStringComQuebraDeLinha(Basico_Model_Util::retornaIdentacao($nivelIdentacao) . FORM_GERADOR_FORM_ADDELEMENTS . "(" . FORM_GERADOR_ELEMENTS . ");"));
                // nivel 1 de identação
                $nivelIdentacao--;
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formCodeBlockEndTag);
                // nivel 0 de identação
                $nivelIdentacao--;
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formCodeBlockEndTag);
                fputs($fileResource, Basico_Model_Util::retornaIdentacao($nivelIdentacao) . $formEndTag);
              
                if ($fileResource)
                    $resultado = fclose($fileResource);
            }
        	
        } catch (Exception $e) {
        	
        	if ($fileResource)
                fclose($fileResource);
                
            //Revertendo para o ponto de restauração LKG (Last know good) do arquivo do formulário
            foreach ($arrayArquivosModificados as $arquivoModificado) {
            	
            	try {
                    $arquivoOrigemRestore = $arquivoModificado . '.lkg';
                    copy($arquivoOrigemRestore, $arquivoModificado);
                    
            	} catch (Exception $e) {
            		throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . PHP_EOL . $e);
            	}
            }
        	throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . PHP_EOL . $e);       	
        }
        
        return $resultado;    
    }
	
}
