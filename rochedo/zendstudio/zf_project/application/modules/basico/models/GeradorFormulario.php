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
     * @param $objFormulario
     */
    private function retornaNomeArquivoForm(Basico_Model_Formulario &$objFormulario)
    {
        $resultado = $objFormulario->formName;
        
        return $resultado . '.php';
    }

    /**
     * Retorna Nome da classe do formulário a partir dos nomes do módulo e formulário
     * @param $objModulo
     * @param $objFormulario
     */
    private function retornaNomeClasseForm(&$objModulo, &$objFormulario)
    {
        return ucfirst(strtolower($objModulo->nome)) . "_Form_" . $objFormulario->formName;
    }

	/**
	 * Gera Formulário.
	 * @param $objFormulario
	 * @param $classToExtends
	 * @param $excludeModulesNames
	 */
    public function gerar(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM, array $excludeModulesNames = null)
    {
    	$tempReturn = true;
    	
    	$templatesPossiveis = $objFormulario->getTemplatesObjects();
    	  	
    	foreach($templatesPossiveis as $templateObject){
    		if ($tempReturn){
	    		if ($templateObject->getOutputObject()->nome === FORM_GERADOR_OUTPUT_DOJO)
	    			$tempReturn = self::gerarDOJO($objFormulario, $classToExtends, $excludeModulesNames);
	    		else if ($templateObject->getOutputObject()->nome === FORM_GERADOR_OUTPUT_HTML)
	    			$tempReturn = self::gerarHTML($objFormulario, $classToExtends, $excludeModulesNames);
    		}
    	}
    	
    	return $tempReturn;
    }
    
    /**
     * Gera Formulário HTML.
     * @param $objFormulario
     * @param $classToExtends
     * @param $excludeModulesNames
     */
    private function gerarHTML(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_ZEND_FORM, array $excludeModulesNames = null)
    {
    	return true;
    }
    
    /**
     * Gera Formulário DOJO.
     * @param $objFormulario
     * @param $classToExtends
     * @param $excludeModulesNames
     */
    private function gerarDOJO(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM, array $excludeModulesNames = null)
    {
    	// inicializacao do metodo
    	$arrayNomesCategoriasParaChecarAmbienteDesenvolvimento = array('FORMULARIO_ELEMENTO_CAPTCHA');
    	$arrayInitForm = self::retornaArrayInitForm($objFormulario, $classToExtends);
		$resultado = false;
        $modulesPath = array();
        $formClassInstances = array(); 
    	
    	// inicializacao de atributos do formulario
        $filenameExtensionRecovery              = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_FILENAME_EXTENSION_RECOVERY];
        $headerFormulario                       = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM];
        $formBeginTag                           = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_BEGIN_TAG];
        $formClassExtendsTag                    = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CLASS_EXTENDS_TAG];
        $formClassExtendsClass                  = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CLASS_EXTENDS_CLASS];
        $formCodeBlockBeginTag                  = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_BEGIN_TAG];      
        $formCodeBlockEndTag                    = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_END_TAG];
        $headerConstructorForm                  = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_HEADER_CONSTRUCTOR_FORM];
        $formConstructorCall                    = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_CALL];
        $formConstructorInherits                = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_INHERITS];
        $formConstructorComment                 = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_COMMENT];
        $formName                               = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_NAME];
        $formMethod                             = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_METHOD];
        $formAction                             = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ACTION];
        $formAttribs                            = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS];
        $formElementsComment                    = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ELEMENTS_COMMENT];
        $formArrayElements                      = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ARRAY_ELEMENTS];
        $formCodigoCheckAmbienteDesenvolvimento = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO]; 
        $formEndTag                             = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_END_TAG];
        
        // verifica se existe decorator para o formulario
        if ($objFormulario->getDecoratorObject()->id)
            $formDecorator                      = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_DECORATOR];

        // recuperando modulos relacionados com o formulario
        $modulosObjects = $objFormulario->getModulosObjects($excludeModulesNames);
        // recuperando nome do arquivo do formulario que sera gerado
        $nomeArquivoSaida = self::retornaNomeArquivoForm($objFormulario);
        
        // recuperando caminhos dos modulos e prefixos de nome de classes
        foreach ($modulosObjects as $moduloObject){
            $modulesPath[$moduloObject->nome] = APPLICATION_MODULE_PATH . "/{$moduloObject->path}forms/";
            $formClassInstances[$moduloObject->nome] = 'class ' . self::retornaNomeClasseForm($moduloObject, $objFormulario) . " {$formClassExtendsTag} {$formClassExtendsClass}" . QUEBRA_DE_LINHA;
        }

        try {
            $arrayArquivosModificados = array();

            $podeContinuar = true;            

            // loop para criar o formulario em diversos caminhos de modulos
            foreach ($modulesPath as $moduleName => $modulePath) {
                $fullFileName = $modulePath . $nomeArquivoSaida;

                //Criando ponto de restauração do arquivo de formulário, caso exista.
                if (file_exists($fullFileName)){
                    $podeContinuar = self::gerarPontoDeRestauracaoArquivo($fullFileName, $filenameExtensionRecovery);
                    $arrayArquivosModificados[] = $fullFileName;
                }

                // verifica se a copia foi bem sucedida
                if (!$podeContinuar)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_LEITURA . "'{$fullFileName}'");

                // abre arquivo com permissoes de escrita
                $fileResource = Basico_Model_Util::abreArquivoLimpo($fullFileName);

                // verifica se o sistema conseguiu abrir o arquivo
                if (!$fileResource)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_ESCRITA . "'{$fullFileName}'");

                // nivel 0 de identação
				$nivelIdentacao = 0;
                Basico_Model_Util::escreveLinhaFileResource($fileResource, self::retornaInstanciamentoClasseFormulario($nivelIdentacao, $formBeginTag, $moduleName, $headerFormulario, $formClassInstances[$moduleName], $formCodeBlockBeginTag));
                
                // nivel 1 de identação
                $nivelIdentacao++;
                Basico_Model_Util::escreveLinhaFileResource($fileResource, self::retornaChamadaDeInicializacaoFormulario($nivelIdentacao, $moduloObject, $objFormulario, $headerConstructorForm, $formConstructorCall, $formCodeBlockBeginTag));
                
                // nivel 2 de identação
                $nivelIdentacao++;
                Basico_Model_Util::escreveLinhaFileResource($fileResource, self::retornaInicializacaoFormulario($nivelIdentacao, $formConstructorComment, $formConstructorInherits, $formName, $formMethod, $formAction, $formAttribs, $formDecorator));

                // adição dos elementos do formulário
                Basico_Model_Util::escreveLinhaFileResource($fileResource, self::retornaElementosFormulario($nivelIdentacao, $formElementsComment, $formArrayElements, $objFormulario->getFormularioElementosObjects(), $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento, $formCodigoCheckAmbienteDesenvolvimento, $objFormulario, $formCodeBlockEndTag));

                // nivel 1 de identação
                $nivelIdentacao--;
                $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                Basico_Model_Util::escreveLinhaFileResource($fileResource, self::retornaFimDeBloco($nivelIdentacao, $formCodeBlockEndTag));

                // nivel 0 de identação
                $nivelIdentacao--;
                $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
				Basico_Model_Util::escreveLinhaFileResource($fileResource, self::retornaFimDeBloco($nivelIdentacao, $formCodeBlockEndTag));
				Basico_Model_Util::escreveLinhaFileResource($fileResource, self::retornaFimDeScript($nivelIdentacao, $formEndTag));

                if ($fileResource)
                    $resultado = Basico_Model_Util::fechaArquivo($fileResource);
            }

        } catch (Exception $e) {

            if ($fileResource)
                Basico_Model_Util::fechaArquivo($fileResource);

            //Revertendo para o ponto de restauração LKG (Last know good) do arquivo do formulário
            self::recuperarPontoDeRestauracaoArquivos($arrayArquivosModificados, $filenameExtensionRecovery);

            throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . QUEBRA_DE_LINHA . $e);
        }

        return $resultado;
    }
    
    /**
     * retorna array contendo variaveis de inicializacao do formulario passado por parametro
     * @param Basico_Model_Formulario $objFormulario
     * @param string $classToExtends
     */
    private function retornaArrayInitForm(Basico_Model_Formulario &$objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM)
    {
    	$arrayReturn = array();
    	
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_FILENAME_EXTENSION_RECOVERY]           = '.lkg';
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]                           = str_replace('@data_criacao', date('d/m/Y H:i:s'), FORM_GERADOR_HEADER) . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_BEGIN_TAG]                             = FORM_BEGIN_TAG . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CLASS_EXTENDS_TAG]                     = FORM_GERADOR_CLASS_EXTENDS_ELEMENT;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CLASS_EXTENDS_CLASS]                   = $classToExtends;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_BEGIN_TAG]                  = '{' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_END_TAG]                    = '}' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_HEADER_CONSTRUCTOR_FORM]                    = FORM_GERADOR_CONSTRUCTOR_HEADER . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_CALL]                      = FORM_GERADOR_CONSTRUCTOR_CALL . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_INHERITS]                  = FORM_GERADOR_CONSTRUCTOR_INHERITS . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_COMMENT]                   = FORM_GERADOR_CONSTRUCTOR_COMMENT . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_NAME]                                  = FORM_GERADOR_FORM_SETNAME . "('{$objFormulario->formName}');" . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_METHOD]                                = FORM_GERADOR_FORM_SETMETHOD . "('{$objFormulario->formMethod}');" . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ACTION]                                = FORM_GERADOR_FORM_SETACTION . "('{$objFormulario->formAction}');" . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]                               = FORM_GERADOR_FORM_ADDATTRIBS . "(array({$objFormulario->formAttribs}));" . QUEBRA_DE_LINHA;

        if ($objFormulario->getDecoratorObject()->id)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_DECORATOR]                         = FORM_GERADOR_FORM_SETDECORATORS . "(array({$objFormulario->getDecoratorObject()->decorator}));" . QUEBRA_DE_LINHA; 

        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ELEMENTS_COMMENT]                      = FORM_GERADOR_ADD_ELEMENTS_COMMENT . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ARRAY_ELEMENTS]                        = FORM_GERADOR_ELEMENTS . ' = array();' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO] = FORM_GERADOR_FORM_ELEMENT_CHECK_DEVELOP . $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_BEGIN_TAG];
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_END_TAG]                               = FORM_END_TAG;
        
        return $arrayReturn;
    }
    
    /**
     * retorna true se conseguir gerar o ponto de restauracao
     * @param $fullFileName
     * @param $filenameExtensionRecovery
     */
    private function gerarPontoDeRestauracaoArquivo($fullFileName, $filenameExtensionRecovery)
    {
    	$tempReturn = false;
    	
    	if (file_exists($fullFileName))
			$tempReturn = copy($fullFileName, $fullFileName . $filenameExtensionRecovery);

		return $tempReturn;
    }
    
    /**
     * recupera os arquivos passados por parametros do ponto de restauracao
     * @param $arrayArquivosModificados
     * @param $filenameExtensionRecovery
     */
    private function recuperarPontoDeRestauracaoArquivos($arrayArquivosModificados, $filenameExtensionRecovery)
    {
		foreach ($arrayArquivosModificados as $arquivoModificado) {
			try {
				$arquivoOrigemRestore = $arquivoModificado . $filenameExtensionRecovery;
	            copy($arquivoOrigemRestore, $arquivoModificado);
			} catch (Exception $e) {
				throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . QUEBRA_DE_LINHA . $e);
			}
		}
    }
    
    /**
     * retorna string contendo o instanciamento de uma classe de formulario
     * @param integer $nivelIdentacao
     * @param string $formBeginTag
     * @param string $moduleName
     * @param string $headerFormulario
     * @param string $formClassInstance
     * @param string $formCodeBlockBeginTag
     */
    private function retornaInstanciamentoClasseFormulario($nivelIdentacaoInicial, $formBeginTag, $moduleName, $headerFormulario, $formClassInstance, $formCodeBlockBeginTag)
    {
    	$tempReturn = '';
    	
		$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacaoInicial);
		$tempReturn .= $identacao . $formBeginTag;
		$tempReturn .= $identacao . str_replace('@modulo', $moduleName, $headerFormulario);
		$tempReturn .= $identacao . $formClassInstance;
		$tempReturn .= $identacao . $formCodeBlockBeginTag;

		return $tempReturn;
    }
    
    /**
     * retorna string contendo a chamada __construct do formulario
     * @param $nivelIdentacaoInicial
     * @param $moduloObject
     * @param $objFormulario
     * @param $headerConstructorForm
     * @param $formConstructorCall
     * @param $formCodeBlockBeginTag
     */
    private function retornaChamadaDeInicializacaoFormulario($nivelIdentacaoInicial, &$moduloObject, &$objFormulario, $headerConstructorForm, $formConstructorCall, $formCodeBlockBeginTag)
    {
    	$tempReturn = '';
    	
    	$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacaoInicial);
    	$tempReturn .= str_replace('@identacao', $identacao, str_replace('@nome_classe', self::retornaNomeClasseForm($moduloObject, $objFormulario), $headerConstructorForm));
		$tempReturn .= $identacao . $formConstructorCall;
		$tempReturn .= $identacao . $formCodeBlockBeginTag;
		
		return $tempReturn;
    }
    
    /**
     * retorna string contendo a inicializacao do formulario (__construct)
     * @param integer $nivelIdentacaoInicial
     * @param string $formConstructorComment
     * @param string $formConstructorInherits
     * @param string $formName
     * @param string $formMethod
     * @param string $formAction
     * @param string $formAttribs
     * @param string $formDecorator
     */
    private function retornaInicializacaoFormulario($nivelIdentacaoInicial, $formConstructorComment, $formConstructorInherits, $formName, $formMethod, $formAction, $formAttribs, $formDecorator)
    {
    	$tempReturn = '';
    	
    	$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacaoInicial);
    	$tempReturn .= str_replace('@identacao', $identacao, $formConstructorComment);
    	$tempReturn .= $identacao . $formConstructorInherits;
    	$tempReturn .= QUEBRA_DE_LINHA;
    	$tempReturn .= $identacao . $formName;
    	$tempReturn .= $identacao . $formMethod;
    	$tempReturn .= $identacao . $formAction;
    	$tempReturn .= $identacao . $formAttribs;
    	$tempReturn .= $identacao . $formDecorator;
    	$tempReturn .= QUEBRA_DE_LINHA; 

		return $tempReturn;
    }
    
    /**
     * retorna string contendo os elementos do formulario
     * @param integer $nivelIdentacaoInicial
     * @param string $formElementsComment
     * @param string $formArrayElements
     * @param objects $formularioElementosObjects
     * @param array $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento
     * @param string $formCodigoCheckAmbienteDesenvolvimento
     * @param object $objFormulario
     * @param string $formCodeBlockEndTag
     */
    private function retornaElementosFormulario($nivelIdentacaoInicial, $formElementsComment, $formArrayElements, &$formularioElementosObjects, $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento, $formCodigoCheckAmbienteDesenvolvimento, $objFormulario, $formCodeBlockEndTag)
    {
    	$tempReturn = '';
		$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
    	$tempReturn .= str_replace('@identacao', $identacao, $formElementsComment) . QUEBRA_DE_LINHA;
    	$tempReturn .= $identacao . $formArrayElements . QUEBRA_DE_LINHA;
    	
    	$contador = 0;
    	$formElement = FORM_GERADOR_ELEMENTS . '[@contador]';
        $elementoAmbienteDesenvolvimento = false;
        
        foreach ($formularioElementosObjects as $formularioElementoObject){
        	$formElementLoop = str_replace('@contador', $contador, $formElement);
        	
        	// verificando se o é preciso determinar ambiente de desenvolvimento
        	if (false !== array_search($formularioElementoObject->getCategoriaObject()->nome, $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento)){
				$elementoAmbienteDesenvolvimento = true;
				$tempReturn .= $identacao . $formCodigoCheckAmbienteDesenvolvimento;
                $identacao = Basico_Model_Util::retornaIdentacao(++$nivelIdentacao);
            } else
            	$elementoAmbienteDesenvolvimento = false;

			// criando elemento
			$tempReturn .= $identacao . $formElementLoop . " = " . FORM_GERADOR_FORM_ELEMENT_CREATEELEMENT . "({$formularioElementoObject->element});" . QUEBRA_DE_LINHA;
			
			// setando atributos do elemento
			if ($formularioElementoObject->elementAttribs)
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETATTRIBS . "(array({$formularioElementoObject->elementAttribs}));" . QUEBRA_DE_LINHA;

			// descobrindo se o campo é requerido
            if ($formularioElementoObject->getFormularioFormularioElementoObject()->elementRequired == true)
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_TRUE . ";" . QUEBRA_DE_LINHA;
            else
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_FALSE . ";" . QUEBRA_DE_LINHA;

			// adicionando filtros
            if ($formularioElementoObject->getFormularioElementoFilterObject()->id)
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDFILTERS . "(array({$formularioElementoObject->getFormularioElementoFilterObject()->filter}));" . QUEBRA_DE_LINHA;

			// adicionando validadores
            $arrayFormularioElementoValidators = $formularioElementoObject->getFormularioElementoValidatorsObjects();

            foreach($arrayFormularioElementoValidators as $formularioElementoValidator){
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDVALIDATOR . "({$formularioElementoValidator->validator});" . QUEBRA_DE_LINHA;
            }

        	// adicionando elementos label e ajuda
            if ($formularioElementoObject->constanteTextualLabel){
				// adiciona o decorator para os elementos que possuem decorator
				if ($formularioElementoObject->getDecoratorObject()->id)
					$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$formularioElementoObject->getDecoratorObject()->decorator});" . QUEBRA_DE_LINHA;

				// adicionando o link de ajuda
                if ($formularioElementoObject->getAjudaObject()->id){
					if ($formularioElementoObject->getAjudaObject()->url){
						$href = Basico_Model_Util::retornaStringEntreCaracter($formularioElementoObject->getAjudaObject()->url, "\'");
                        $target = Basico_Model_Util::retornaStringEntreCaracter('_blank', "\'");
                        $urlAjuda = ' . "<br><br>URL: <a href=' . $href . ' target=' . $target . '>' . $formularioElementoObject->getAjudaObject()->url . '</a>"';
                    }else
                        $urlAjuda = '';

                    $constanteTextoAjuda = Basico_Model_Util::retornaStringEntreCaracter($formularioElementoObject->getAjudaObject()->constanteTextualAjuda, "'");
                    $chamadaJavaScriptDialog = Basico_Model_Util::retornaStringEntreCaracter(Basico_Model_Util::retornaJavaScriptDialog($objFormulario->formName, '$this->getView()->tradutor(' . DIALOG_HELP_TITLE . ', DEFAULT_USER_LANGUAGE)', '$this->getView()->tradutor(' . $constanteTextoAjuda . ', DEFAULT_USER_LANGUAGE)' . $urlAjuda), '"');
                    $linkAjuda = "&nbsp;<a href=" . $chamadaJavaScriptDialog . ">(?)</a>";
                } else
                	$linkAjuda = '';

                $linkAjuda = Basico_Model_Util::retornaStringEntreCaracter($linkAjuda, "'");
                $tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETLABEL . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->constanteTextualLabel}', DEFAULT_USER_LANGUAGE) . {$linkAjuda});" . QUEBRA_DE_LINHA;
                	
			}

			if (($formularioElementoObject->getAjudaObject()->id) and ($formularioElementoObject->getAjudaObject()->constanteTextualHint))
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETINVALIDMESSAGE . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->getAjudaObject()->constanteTextualHint}', DEFAULT_USER_LANGUAGE));" . QUEBRA_DE_LINHA;

        	// verificando se o elemento pode ser carregando com dados
            if ($formularioElementoObject->elementReloadable){
            	$tempReturn .= $identacao . FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE . QUEBRA_DE_LINHA;

            	$nivelIdentacao++;
            	$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETVALUE . "(" . FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE . "{$formularioElementoObject->elementName});" . QUEBRA_DE_LINHA;
				$nivelIdentacao--;
				$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
			}
			
        	// verificando se o é preciso determinar ambiente de desenvolvimento
            if ($elementoAmbienteDesenvolvimento){
				$nivelIdentacao--;
				$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
				$tempReturn .= $identacao . $formCodeBlockEndTag;
			}

			$tempReturn .= QUEBRA_DE_LINHA;
            $contador++;
        }
        
        $tempReturn .= $identacao . FORM_GERADOR_FORM_ADDELEMENTS . "(" . FORM_GERADOR_ELEMENTS . ");" . QUEBRA_DE_LINHA;

		return $tempReturn;
    }

    /**
     * retorna string contendo o fim de um bloco
     * @param integer $nivelIdentacaoInicial
     * @param string $formCodeBlockEndTag
     */
    private function retornaFimDeBloco($nivelIdentacaoInicial, $formCodeBlockEndTag)
    {
    	$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
    	
    	return $identacao . $formCodeBlockEndTag;
    }

    /**
     * retorna string contendo o fim de um script
     * @param integer $nivelIdentacaoInicial
     * @param string $formEndTag
     */
    private function retornaFimDeScript($nivelIdentacaoInicial, $formEndTag)
    {
    	$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
    	
    	return $identacao . $formEndTag;
    }
}