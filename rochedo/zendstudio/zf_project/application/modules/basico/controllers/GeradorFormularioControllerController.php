<?php
/**
 * Controlador Gerador Formulario
 */
// includes dos controladores
require_once("CVCControllerController.php");
require_once("FormularioControllerController.php");
require_once("FormularioFormularioElementoControllerController.php");
require_once("ModuloControllerController.php");
require_once("ComponenteControllerController.php");

class Basico_GeradorFormularioControllerController
{
    /**
     * Retorna Nome do arquivo do formulário a partir do nome do formulário
     * 
     * @param Basico_Model_Formulario $objFormulario
     * 
     * @return String
     */
    private function retornaNomeArquivoForm(Basico_Model_Formulario &$objFormulario)
    {
    	// recuperando o nome do formulario
        $resultado = $objFormulario->formName;
        
        // retornando o nome do arquivo do formulario
        return $resultado . '.php';
    }

    /**
     * Retorna Nome da classe do formulário a partir dos nomes do módulo e formulário
     * 
     * @param Basico_Model_Modulo $objModulo
     * @param Basico_Model_Formulario $objFormulario
     * 
     * @return String
     */
    private function retornaNomeClasseForm(&$objModulo, &$objFormulario)
    {
    	// retorna o nome da classe do formulario
        return ucfirst(strtolower($objModulo->nome)) . "_Form_" . $objFormulario->formName;
    }

    /**
     * Retorna o nome da variavel para instanciamento do formulario
     * 
     * @param Basico_Model_Modulo $objModulo
     * @param Basico_Model_Formulario $objSubFormulario
     * 
     * @return String
     */
    private function retornaNomeVariavelSubForm(&$objModulo, &$objSubFormulario)
    {
    	// retorna o nome da variavel para instanciamento
		return "$" . strtolower($objModulo->nome) . ucfirst($objSubFormulario->formName) . "SubForm";
    }

	/**
	 * Gera Formulário.
	 * 
	 * @param Object $objFormulario
	 * @param String $classToExtends
	 * @param String $excludeModulesNames
	 * 
	 * @return Boolean
	 */
    public static function gerar(Basico_Model_Formulario $objFormulario, array $excludeModulesNames = null)
    {
    	// inicializando variaveis
    	$tempReturn = true;
    	
    	// verifica se o objeto eh do tipo categoria FORMULARIO
    	if ($objFormulario->getCategoriaObject()->getTipoCategoriaRootCategoriaPaiObject()->nome != TIPO_CATEGORIA_FORMULARIO)
    		throw new Exception(MSG_ERRO_FORMULARIO_TIPO_CATEGORIA);
    	
    	// recupera templates do formulario
		$templatesPossiveis = $objFormulario->getTemplatesObjects();
		
    	// veririca se existe templates
    	if (count($templatesPossiveis)){
	       	foreach($templatesPossiveis as $templateObject){
	       		// checando se pode continuar
	    		if ($tempReturn){
	    			// checando o tipo de ouput para redirecionar para metodos especificos
		    		if ($templateObject->getOutputObject()->nome === FORM_GERADOR_OUTPUT_DOJO)
		    			$tempReturn = self::gerarDOJO($objFormulario, FORM_CLASS_EXTENDS_DOJO_FORM, $excludeModulesNames);
		    		else if ($templateObject->getOutputObject()->nome === FORM_GERADOR_OUTPUT_HTML)
		    			$tempReturn = self::gerarHTML($objFormulario, FORM_CLASS_EXTENDS_ZEND_FORM, $excludeModulesNames);
	    		}
	    	}
    	}
    	else
    		throw new Exception(MSG_ERRO_FORMULARIO_SEM_TEMPLATE);

    	// retornando resultado
    	return $tempReturn;
    }
    
    /**
     * Gera Formulário HTML.
     * 
     * @param Object $objFormulario
     * @param String $classToExtends
     * @param String $excludeModulesNames
     * 
     * @return Boolean
     */
    private function gerarHTML(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_ZEND_FORM, array $excludeModulesNames = null)
    {
    	return true;
    }
    
    /**
     * Gera Formulário DOJO.
     * 
     * @param Object $objFormulario
     * @param String $classToExtends
     * @param String $excludeModulesNames
     * 
     * @return Boolean
     */
    private function gerarDOJO(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM, array $excludeModulesNames = null)
    {
    	// inicializando variaveis
    	$arrayNomesCategoriasParaChecarAmbienteDesenvolvimento = array('FORMULARIO_ELEMENTO_CAPTCHA');
    	$arrayInitForm      = self::retornaArrayInitForm($objFormulario, $classToExtends);
		$resultado          = false;
        $modulesPath        = array();
        $formClassInstances = array();
        $formMethod         = '';
        $formAction         = '';
        $formAttribs        = '';
        $formDecorator      = '';
        	
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
        $formAddPrefixPathComment               = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ADDPREFIXPATH_COMMENT];
        
        // verificando se o formulario possui metodo de init
        if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_METHOD, $arrayInitForm))
        	$formMethod                         = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_METHOD];

        // verificando se o formulario possui acao
        if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_ACTION, $arrayInitForm))
        	$formAction                         = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ACTION];

        // verificando se o formulario possui atributos
        if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS, $arrayInitForm))
        	$formAttribs                        = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS];

        // inicializacao de atributos do formulario
        $formElementsComment                    = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ELEMENTS_COMMENT];
        $formElementAddElementToFormComment     = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ADD_ELEMENTS_TO_FORM_COMMENT];
        $formArrayElements                      = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_ARRAY_ELEMENTS];
        $formCodigoCheckAmbienteDesenvolvimento = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO]; 
        $formEndTag                             = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_END_TAG];
        
        // verifica se existe decorator para o formulario
        if ($objFormulario->getDecoratorObject()->id)
            $formDecorator                      = $arrayInitForm[FORM_GERADOR_ARRAY_INIT_FORM_DECORATOR];

        // recuperando modulos relacionados com o formulario
        $modulosObjects = $objFormulario->getModulosObjects($excludeModulesNames);
        // verificando se existem modulos relacionados com o formulario
        if (!count($modulosObjects))
        	throw new Exception(MSG_ERRO_FORMULARIO_SEM_MODULO);
        
        // recuperando nome do arquivo do formulario que sera gerado
        $nomeArquivoSaida = self::retornaNomeArquivoForm($objFormulario);
        
        // recuperando caminhos dos modulos e prefixos de nome de classes
        foreach ($modulosObjects as $moduloObject){
            $modulesPath[$moduloObject->nome] = APPLICATION_MODULE_PATH . "/{$moduloObject->path}forms/";
            $formClassInstances[$moduloObject->nome] = 'class ' . self::retornaNomeClasseForm($moduloObject, $objFormulario) . " {$formClassExtendsTag} {$formClassExtendsClass}" . QUEBRA_DE_LINHA;
        }

        try {
        	// inicializando variaveis
            $arrayArquivosModificados = array();
            $podeContinuar = true;

            // loop para criar o formulario em diversos caminhos de modulos
            foreach ($modulesPath as $moduleName => $modulePath){
                $fullFileName = $modulePath . $nomeArquivoSaida;

                // criando ponto de restauração do arquivo de formulário, caso exista.
                if (file_exists($fullFileName)){
                    $podeContinuar = Basico_UtilControllerController::gerarPontoDeRestauracaoArquivo($fullFileName, $filenameExtensionRecovery);
                    $arrayArquivosModificados[] = $fullFileName;
                }

                // verifica se a copia foi bem sucedida
                if (!$podeContinuar)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_LEITURA . "'{$fullFileName}'");

                // abre arquivo com permissoes de escrita
                $fileResource = Basico_UtilControllerController::abreArquivoLimpo($fullFileName);

                // verifica se o sistema conseguiu abrir o arquivo
                if (!$fileResource)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_ESCRITA . "'{$fullFileName}'");

                // nivel 0 de identação
				$nivelIdentacao = 0;
                Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaInstanciamentoClasseFormulario($nivelIdentacao, $formBeginTag, $moduleName, $headerFormulario, $formClassInstances[$moduleName], $formCodeBlockBeginTag));
                
                // nivel 1 de identação
                $nivelIdentacao++;
                Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaChamadaDeInicializacaoFormulario($nivelIdentacao, $moduloObject, $objFormulario, $headerConstructorForm, $formConstructorCall, $formCodeBlockBeginTag));
                
                // nivel 2 de identação
                $nivelIdentacao++;
                Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaInicializacaoFormulario($nivelIdentacao, $formConstructorComment, $formConstructorInherits, $formName, $formMethod, $formAction, $formAttribs, $formDecorator));

                // verifica se o formulario possui elementos
                if (Basico_FormularioControllerController::existeElementos($objFormulario->id)) {

                	// adicao dos prefix e paths de componentes nao ZF
                	$stringAddPrefixPath = self::retornaAddPrefixPathElementosNaoZFFormulario($nivelIdentacao, $objFormulario->id, $formAddPrefixPathComment);

                	// verificando se existem addprefixpaths para serem incluidos no formulario
					if ($stringAddPrefixPath)
                		Basico_UtilControllerController::escreveLinhaFileResource($fileResource, $stringAddPrefixPath);
                	
                	// adição dos elementos do formulário
                	Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaElementosFormulario($nivelIdentacao, $formElementsComment, $formElementAddElementToFormComment, $formArrayElements, $objFormulario->getFormularioElementosObjects(), $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento, $formCodigoCheckAmbienteDesenvolvimento, $objFormulario, $moduloObject, $formCodeBlockEndTag));
                };
                
                // verificacao sobre formularios filhos
                if (Basico_FormularioControllerController::existeFormulariosFilhos($objFormulario->id)) {
                	$formulariosFilhosObjects = $objFormulario->getFormulariosFilhosObjects();
                	foreach ($formulariosFilhosObjects as $formularioFilhoObject){
                		if (!self::gerarSubForm($formularioFilhoObject, $excludeModulesNames))
                			throw new Exception(MSG_ERRO_GERAR_SUB_FORMULARIO);

                		Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaIncludeSubForm($nivelIdentacao, $formularioFilhoObject));
                	}
                }

                // nivel 1 de identação
                $nivelIdentacao--;
                $identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
                Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaFimDeBloco($nivelIdentacao, $formCodeBlockEndTag));

                // nivel 0 de identação
                $nivelIdentacao--;
                $identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
				Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaFimDeBloco($nivelIdentacao, $formCodeBlockEndTag));
				Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaFimDeScript($nivelIdentacao, $formEndTag));

                if ($fileResource)
                    $resultado = Basico_UtilControllerController::fechaArquivo($fileResource);

                // gerando formulario versao HTML
                $resultado = self::escreveObjetoFormularioDOJOHTMLTodasLinguasAtivas($objFormulario, $moduleName);
            }

        } catch (Exception $e) {

            if ($fileResource)
                Basico_UtilControllerController::fechaArquivo($fileResource);

            // Revertendo para o ponto de restauração LKG (Last know good) do arquivo do formulário
            Basico_UtilControllerController::recuperarPontoDeRestauracaoArquivos($arrayArquivosModificados, $filenameExtensionRecovery);

            throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . QUEBRA_DE_LINHA . $e);
        }

        return $resultado;
    }

	/**
	 * Gera Sub-Formulário.
	 * 
	 * @param Object $objFormulario
	 * @param String $classToExtends
	 * @param String $excludeModulesNames
	 * 
	 * @return boolean
	 */
    private function gerarSubForm(Basico_Model_Formulario $objSubFormulario, array $excludeModulesNames = null)
    {
		$tempReturn = true;
		
		// verifica se o formulario possui formulario pai
    	if (!$objSubFormulario->formularioPai)
    		throw new Exception(MSG_ERRO_SUBFORMULARIO_SEM_FORMULARIO_PAI);

    	// verifica se o objeto eh da categoria FORMULARIO_SUB_FORMULARIO
    	if ($objSubFormulario->getCategoriaObject()->getRootCategoriaPaiObject()->nome != FORMULARIO_SUB_FORMULARIO)
    		throw new Exception(MSG_ERRO_FORMULARIO_SUB_FORMULARIO_CATEGORIA);

    	$templatesPossiveis = $objSubFormulario->getTemplatesObjects();
    	
    	// veririca se existe templates
    	if (count($templatesPossiveis)){
	       	foreach($templatesPossiveis as $templateObject){
	    		if ($tempReturn){
		    		if ($templateObject->getOutputObject()->nome === FORM_GERADOR_OUTPUT_DOJO)
		    			$tempReturn = self::gerarSubDOJO($objSubFormulario, FORM_CLASS_EXTENDS_DOJO_FORM_SUB_FORM, $excludeModulesNames);
		    		else if ($templateObject->getOutputObject()->nome === FORM_GERADOR_OUTPUT_HTML)
		    			$tempReturn = self::gerarSubHTML($objSubFormulario, FORM_CLASS_EXTENDS_ZEND_FORM_SUB_FORM, $excludeModulesNames);
	    		}
	    	}
    	}
    	else
    		throw new Exception(MSG_ERRO_SUBFORMULARIO_SEM_TEMPLATE);

    	return $tempReturn;
    }
    
    /**
     * Gera Sub-Formulário HTML.
     * 
     * @param Basico_Model_Formulario $objSubFormulario
     * @param array $excludeModulesNames
     * 
     * @return Boolean
     */
    private function gerarSubHTML(Basico_Model_Formulario $objSubFormulario, $classToExtends = FORM_CLASS_EXTENDS_ZEND_FORM_SUB_FORM, array $excludeModulesNames = null)
    {
		return true;
    }
    
    /**
     * Gera Sub-Formulário DOJO.
     * 
     * @param Object $objSubFormulario
     * @param String $excludeModulesNames
     * 
     * @return Boolean
     */
    private function gerarSubDOJO(Basico_Model_Formulario $objSubFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM_SUB_FORM, array $excludeModulesNames = null)
    {
		// inicializacao do metodo
    	$arrayNomesCategoriasParaChecarAmbienteDesenvolvimento = array();
    	$arrayInitSubForm          = self::retornaArrayInitSubForm($objSubFormulario, $classToExtends);
		$resultado                 = false;
        $modulesPath               = array();
        $subFormClassInstances     = array();
        $subFormVariablesInstances = array();
        $subFormMethod             = '';
        $subFormAction             = '';
        $subFormAttribs            = '';
        $subFormDecorator          = '';
        
    	// inicializacao de atributos do formulario
        $filenameExtensionRecovery                 = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_FILENAME_EXTENSION_RECOVERY];
        $headerSubFormulario                       = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM];
        $subFormBeginTag                           = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_BEGIN_TAG];
        $subFormClassExtendsTag                    = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_TAG];
        $subFormClassExtendsClass                  = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_CLASS];
        $subFormCodeBlockBeginTag                  = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_BEGIN_TAG];      
        $subFormCodeBlockEndTag                    = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_END_TAG];
        $subFormInitComment                        = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_INIT_COMMENT];
        $formAddPrefixPathComment                  = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADDPREFIXPATH_COMMENT];

        $subFormName                               = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_NAME];
        if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_METHOD, $arrayInitSubForm))
        	$subFormMethod                         = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_METHOD];
        if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ACTION, $arrayInitSubForm))
        	$subFormAction                         = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ACTION];
        if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ATTRIBS, $arrayInitSubForm))
        	$subFormAttribs                        = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ATTRIBS];

       	$subFormElementsComment                    = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ELEMENTS_COMMENT];
       	$subFormElementAddElementToFormComment     = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADD_ELEMENTS_TO_FORM_COMMENT];
        $subFormArrayElements                      = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ARRAY_ELEMENTS];
        $subFormCodigoCheckAmbienteDesenvolvimento = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO];
 
        $subFormEndTag                             = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_END_TAG];
       
        // verifica se existe decorator para o formulario
        if ($objSubFormulario->getDecoratorObject()->id)
            $subFormDecorator                   = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_DECORATOR];

        // recuperando modulos relacionados com o formulario
        $modulosObjects = $objSubFormulario->getModulosObjects($excludeModulesNames);
        // verificando se existem modulos relacionados com o formulario
        if (!count($modulosObjects))
        	throw new Exception(MSG_ERRO_FORMULARIO_SEM_MODULO);
        
        // recuperando nome do arquivo do formulario que sera gerado
        $nomeArquivoSaida = self::retornaNomeArquivoForm($objSubFormulario);
        
        // recuperando caminhos dos modulos e prefixos de nome de classes
        foreach ($modulosObjects as $moduloObject){
            $modulesPath[$moduloObject->nome] = APPLICATION_MODULE_PATH . "/{$moduloObject->path}forms/subForms/";
            $subFormClassInstances[$moduloObject->nome] = self::retornaNomeVariavelSubForm($moduloObject, $objSubFormulario) . " {$subFormClassExtendsClass}" . QUEBRA_DE_LINHA;
            $subFormVariablesInstances[$moduloObject->nome] = self::retornaNomeVariavelSubForm($moduloObject, $objSubFormulario);
        }
        try {
            $arrayArquivosModificados = array();

            $podeContinuar = true;

            // loop para criar o formulario em diversos caminhos de modulos
            foreach ($modulesPath as $moduleName => $modulePath){
                $fullFileName = $modulePath . $nomeArquivoSaida;

                // Criando ponto de restauração do arquivo de formulário, caso exista.
                if (file_exists($fullFileName)){
                    $podeContinuar = Basico_UtilControllerController::gerarPontoDeRestauracaoArquivo($fullFileName, $filenameExtensionRecovery);
                    $arrayArquivosModificados[] = $fullFileName;
                }

                // verifica se a copia foi bem sucedida
                if (!$podeContinuar)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_LEITURA . "'{$fullFileName}'");

                // abre arquivo com permissoes de escrita
                $fileResource = Basico_UtilControllerController::abreArquivoLimpo($fullFileName);

                // verifica se o sistema conseguiu abrir o arquivo
                if (!$fileResource)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_ESCRITA . "'{$fullFileName}'");

                // nivel 0 de identação
				$nivelIdentacao = 0;
                Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaInstanciamentoSubFormulario($nivelIdentacao, $subFormBeginTag, $moduleName, $headerSubFormulario, $subFormClassInstances[$moduleName]));
                
                // nivel 1 de identação
                $nivelIdentacao++;
                Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaInicializacaoSubFormulario($nivelIdentacao, $subFormInitComment, $subFormName, $subFormMethod, $subFormAction, $subFormAttribs, $subFormDecorator, $subFormVariablesInstances[$moduleName]));

                // verifica se o formulario possui elementos
                if (Basico_FormularioControllerController::existeElementos($objSubFormulario->id)){

                	// adicao dos prefix e paths de componentes nao ZF
                	$stringAddPrefixPath = self::retornaAddPrefixPathElementosNaoZFFormulario($nivelIdentacao, $objSubFormulario->id, $formAddPrefixPathComment);

                	// verificando se existem addprefixpaths para serem incluidos no formulario
					if ($stringAddPrefixPath)
                		Basico_UtilControllerController::escreveLinhaFileResource($fileResource, $stringAddPrefixPath);

                	// adição dos elementos do formulário
                	Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaElementosFormulario($nivelIdentacao, $subFormElementsComment, $subFormElementAddElementToFormComment, $subFormArrayElements, $objSubFormulario->getFormularioElementosObjects(), $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento, $subFormCodigoCheckAmbienteDesenvolvimento, $objSubFormulario, $moduloObject, $subFormCodeBlockEndTag, $subFormVariablesInstances[$moduleName]));
                };
                        
                // adicionar sub-formulario ao formulario pai
                Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaAdicaoFormularioSubFormulario($nivelIdentacao, $subFormVariablesInstances[$moduleName], $objSubFormulario->formName));

                // nivel 0 de identação
                $nivelIdentacao--;
                $identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
				Basico_UtilControllerController::escreveLinhaFileResource($fileResource, self::retornaFimDeScript($nivelIdentacao, $subFormEndTag));

                if ($fileResource)
                    $resultado = Basico_UtilControllerController::fechaArquivo($fileResource);
            }

        } catch (Exception $e) {

            if ($fileResource)
                Basico_UtilControllerController::fechaArquivo($fileResource);

            // Revertendo para o ponto de restauração LKG (Last know good) do arquivo do formulário
            Basico_UtilControllerController::recuperarPontoDeRestauracaoArquivos($arrayArquivosModificados, $filenameExtensionRecovery);

            throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . QUEBRA_DE_LINHA . $e);
        }
        return $resultado;
    }
    
    /**
     * Retorna array contendo variaveis de inicializacao do sub-formulario passado por parametro
     * 
     * @param Basico_Model_Formulario $objFormulario
     * @param String $classToExtends
     * 
     * @return Array
     */
    private function retornaArrayInitSubForm(Basico_Model_Formulario &$objSubFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM_SUB_FORM)
    {
    	// inicializando variaveis
    	$arrayReturn = array();

    	// carregando atributos do formulario
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_FILENAME_EXTENSION_RECOVERY]           = FORM_GERADOR_RECUPERACAO_EXTENSAO;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]                           = str_replace('@data_criacao', date('d/m/Y H:i:s'), FORM_GERADOR_HEADER) . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]                           = str_replace('@versao', Basico_CVCControllerController::retornaUltimaVersao($objSubFormulario, true), $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]);
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]                           = str_replace('@data_versao', date('d/m/Y H:i:s', Basico_UtilControllerController::retornaTimestamp($objSubFormulario->validadeInicio)), $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]);
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_BEGIN_TAG]                         	  = FORM_BEGIN_TAG . QUEBRA_DE_LINHA;

        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_TAG]                     = FORM_GERADOR_CLASS_EXTENDS_ELEMENT;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_CLASS]                   = "= new {$classToExtends}();";
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_BEGIN_TAG]                  = '{' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_END_TAG]                    = '}' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_INIT_COMMENT]                          = FORM_GERADOR_SUB_FORM_INIT_COMMENT . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_NAME]                                  = FORM_GERADOR_FORM_SUB_FORM_SETNAME . "('{$objSubFormulario->formName}');" . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADDPREFIXPATH_COMMENT]                 = FORM_GERADOR_ADDPREFIXPATH_COMMENT;
        
        // verificando se o formulario possui metodo
        if ($objSubFormulario->formMethod)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_METHOD]                            = FORM_GERADOR_FORM_SUB_FORM_SETMETHOD . "('{$objSubFormulario->formMethod}');" . QUEBRA_DE_LINHA;

		// verificando se o formulario possui acao
        if ($objSubFormulario->formAction)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ACTION]                            = FORM_GERADOR_FORM_SUB_FORM_SETACTION . "('{$objSubFormulario->formAction}');" . QUEBRA_DE_LINHA;

		// inicializando variaveis
        $tempArraySubFormAttrib = array();

        // carregando atributos do formulario
        $tempArraySubFormAttrib[] = "'dijitParams' => array('title' => " . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$objSubFormulario->constanteTextualTitulo}'))";

        // verificando se o formulario possui atributos
        if ($objSubFormulario->formAttribs)
        	$tempArraySubFormAttrib[] = $objSubFormulario->formAttribs;        
        	 
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ATTRIBS]                               = FORM_GERADOR_FORM_SUB_FORM_ADDATTRIBS . "(array(" . implode(",", $tempArraySubFormAttrib) . "));" . QUEBRA_DE_LINHA;

        // verificando se o formulario possui decorator
        if ($objSubFormulario->getDecoratorObject()->id)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_DECORATOR]                         = FORM_GERADOR_FORM_SUB_FORM_SETDECORATORS . "(array({$objSubFormulario->getDecoratorObject()->decorator}));" . QUEBRA_DE_LINHA; 

        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ELEMENTS_COMMENT]                      = FORM_GERADOR_ADD_ELEMENTS_COMMENT . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ARRAY_ELEMENTS]                        = FORM_GERADOR_ELEMENTS . ' = array();' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADD_ELEMENTS_TO_FORM_COMMENT]          = FORM_GERADOR_ADD_ELEMENTS_TO_FORM_COMMENT . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO] = FORM_GERADOR_FORM_ELEMENT_CHECK_DEVELOP . $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_BEGIN_TAG];

        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_END_TAG]                               = FORM_END_TAG;

        // retornando array
        return $arrayReturn;
    }
    
    /**
     * Retorna array contendo variaveis de inicializacao do formulario passado por parametro
     * 
     * @param Basico_Model_Formulario $objFormulario
     * @param String $classToExtends
     * 
     * @return Array
     */
    private function retornaArrayInitForm(Basico_Model_Formulario &$objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM)
    {
    	// inicializando variaveis
    	$arrayReturn = array();
    	
    	// carregando atributos do formulario
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_FILENAME_EXTENSION_RECOVERY]           = FORM_GERADOR_RECUPERACAO_EXTENSAO;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]                           = str_replace('@data_criacao', date('d/m/Y H:i:s'), FORM_GERADOR_HEADER) . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]                           = str_replace('@versao', Basico_CVCControllerController::retornaUltimaVersao($objFormulario, true), $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]);
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]                           = str_replace('@data_versao', date('d/m/Y H:i:s', Basico_UtilControllerController::retornaTimestamp($objFormulario->validadeInicio)), $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]);
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
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ADDPREFIXPATH_COMMENT]                 = FORM_GERADOR_ADDPREFIXPATH_COMMENT;

        // verificando se o formulario possui metodo
        if ($objFormulario->formMethod)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_METHOD]                            = FORM_GERADOR_FORM_SETMETHOD . "('{$objFormulario->formMethod}');" . QUEBRA_DE_LINHA;

        // verificando se o formulario possui acao
        if ($objFormulario->formAction)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ACTION]                            = FORM_GERADOR_FORM_SETACTION . "('{$objFormulario->formAction}');" . QUEBRA_DE_LINHA;

        // verificando se o formulario possui atributos
        if ($objFormulario->formAttribs){
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]                           = FORM_GERADOR_FORM_ADDATTRIBS . "(array({$objFormulario->formAttribs}));" . QUEBRA_DE_LINHA;
        	
        	// carregando chamadas ao tradutor para textos de caixas de dialogo de validacao
        	$tituloDialogValidacao = "{" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('" . FORM_VALIDATION_TITLE . "')}";
        	$labelDialogValidacao = "{" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('" . FORM_VALIDATION_MESSAGE . "')}";
        	
        	// substituicao de tags para caixa de dialogo de validacao
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]						     = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_FORMNAME_TAG, $objFormulario->formName, $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]);
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]                           = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_TITLE_TAG, $tituloDialogValidacao, $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]);
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]                           = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_MESSAGE_TAG, $labelDialogValidacao, $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]);
        }

        if ($objFormulario->getDecoratorObject()->id)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_DECORATOR]                         = FORM_GERADOR_FORM_SETDECORATORS . "(array({$objFormulario->getDecoratorObject()->decorator}));" . QUEBRA_DE_LINHA; 

        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ELEMENTS_COMMENT]                      = FORM_GERADOR_ADD_ELEMENTS_COMMENT . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ADD_ELEMENTS_TO_FORM_COMMENT]          = FORM_GERADOR_ADD_ELEMENTS_TO_FORM_COMMENT . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ARRAY_ELEMENTS]                        = FORM_GERADOR_ELEMENTS . ' = array();' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO] = FORM_GERADOR_FORM_ELEMENT_CHECK_DEVELOP . $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_BEGIN_TAG];
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_END_TAG]                               = FORM_END_TAG;

        // retornando array
        return $arrayReturn;
    }
    
    /**
     * Retorna string contendo o instanciamento de uma classe de formulario
     * 
     * @param Integer $nivelIdentacao
     * @param String $formBeginTag
     * @param String $moduleName
     * @param String $headerFormulario
     * @param String $formClassInstance
     * @param String $formCodeBlockBeginTag
     * 
     * @return String
     */
    private function retornaInstanciamentoClasseFormulario($nivelIdentacaoInicial, $formBeginTag, $moduleName, $headerFormulario, $formClassInstance, $formCodeBlockBeginTag)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	// carregando retorno
		$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacaoInicial);
		$tempReturn .= $identacao . $formBeginTag;
		$tempReturn .= $identacao . str_replace('@modulo', $moduleName, $headerFormulario);
		$tempReturn .= $identacao . $formClassInstance;
		$tempReturn .= $identacao . $formCodeBlockBeginTag;

		// retornando o nome da classe para instanciamento
		return $tempReturn;
    }

    /**
     * retorna string contendo o instanciamento de uma classe de sub-formulario
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param String $formBeginTag
     * @param String $moduleName
     * @param String $headerSubFormulario
     * @param String $subFormClassInstance
     * 
     * @return String 
     */
    private function retornaInstanciamentoSubFormulario($nivelIdentacaoInicial, $subFormBeginTag, $moduleName, $headerSubFormulario, $subFormClassInstance)
    {
    	// inicializando variaveis
    	$tempReturn = '';

    	// carregando retorno
		$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacaoInicial);
		$tempReturn .= $identacao . $subFormBeginTag;
		$tempReturn .= $identacao . str_replace('@modulo', $moduleName, $headerSubFormulario);
		$identacao = Basico_UtilControllerController::retornaIdentacao(++$nivelIdentacaoInicial);
		$tempReturn .= $identacao . $subFormClassInstance;

		// retornando o nome da classe para instanciamento
		return $tempReturn;
    }
    
    /**
     * Retorna string contendo a chamada __construct do formulario
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param String $moduloObject
     * @param Object $objFormulario
     * @param String $headerConstructorForm
     * @param String $formConstructorCall
     * @param String $formCodeBlockBeginTag
     * 
     * @return String
     */
    private function retornaChamadaDeInicializacaoFormulario($nivelIdentacaoInicial, &$moduloObject, &$objFormulario, $headerConstructorForm, $formConstructorCall, $formCodeBlockBeginTag)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	// carregando retorno
    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacaoInicial);
    	$tempReturn .= str_replace('@identacao', $identacao, str_replace('@nome_classe', self::retornaNomeClasseForm($moduloObject, $objFormulario), $headerConstructorForm));
		$tempReturn .= $identacao . $formConstructorCall;
		$tempReturn .= $identacao . $formCodeBlockBeginTag;
		
		// retornando a chamada de inicialzacao do formulario
		return $tempReturn;
    }
    
    /**
     * Retorna string contendo a inicializacao do formulario (__construct)
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param String $formConstructorComment
     * @param String $formConstructorInherits
     * @param String $formName
     * @param String $formMethod
     * @param String $formAction
     * @param String $formAttribs
     * @param String $formDecorator
     * 
     * @return String
     */
    private function retornaInicializacaoFormulario($nivelIdentacaoInicial, $formConstructorComment, $formConstructorInherits, $formName, $formMethod, $formAction, $formAttribs, $formDecorator)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacaoInicial);
    	$tempReturn .= str_replace('@identacao', $identacao, $formConstructorComment);
    	$tempReturn .= $identacao . $formConstructorInherits;
    	$tempReturn .= QUEBRA_DE_LINHA;
    	$tempReturn .= $identacao . $formName;
    	if ($formMethod)
    		$tempReturn .= $identacao . $formMethod;
    	if ($formAction)
    		$tempReturn .= $identacao . $formAction;
    	if ($formAttribs)
    		$tempReturn .= $identacao . $formAttribs;
    	if ($formDecorator)
    		$tempReturn .= $identacao . $formDecorator;
    	$tempReturn .= QUEBRA_DE_LINHA; 

    	// retornando __construct
		return $tempReturn;
    }

    /**
     * Retorna string contendo a inicializacao do sub-formulario
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param String $subFormInitComment
     * @param String $subFormName
     * @param String $subFormMethod
     * @param String $subFormAction
     * @param String $subFormAttribs
     * @param String $subFormDecorator
     * @param String $subFormVariableInstance
     * 
     * @return String
     */
    private function retornaInicializacaoSubFormulario($nivelIdentacaoInicial, $subFormInitComment, $subFormName, $subFormMethod, $subFormAction, $subFormAttribs, $subFormDecorator, $subFormVariableInstance)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacaoInicial);
    	$tempReturn .= QUEBRA_DE_LINHA;
    	$tempReturn .= str_replace('@identacao', $identacao, $subFormInitComment);
    	$tempReturn .= $identacao . $subFormName;
    	if ($subFormMethod)
    		$tempReturn .= $identacao . $subFormMethod;
    	if ($subFormAction)
    		$tempReturn .= $identacao . $subFormAction;
    	if ($subFormAttribs)
    		$tempReturn .= $identacao . $subFormAttribs;
    	if ($subFormDecorator)
    		$tempReturn .= $identacao . $subFormDecorator;
    	$tempReturn .= QUEBRA_DE_LINHA;
    	$tempReturn = str_replace(FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE, $subFormVariableInstance, $tempReturn);

    	// retornando inicializacao do sub-formulario
		return $tempReturn;
    }

    /**
     * Retorna string contendo os addPrefixPath dos componentes nao ZF
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param Integer $idFormulario
     * @param String $addPrefixComment
     * 
     * @return String
     */
	private function retornaAddPrefixPathElementosNaoZFFormulario($nivelIdentacaoInicial, $idFormulario, $addPrefixComment)
	{
		// inicializando variaveis
		$tempReturn = '';
		$arrayPrefixPaths = array();
		$nivelIdentacao = $nivelIdentacaoInicial;

		$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
		
		// recuperando array de prefixos e paths de componentes nao ZF
		$arrayNomesCategoriasComponentesNaoZFFormulario = Basico_CategoriaControllerController::retornaArrayNomesCategoriasComponentesNaoZFFormulario($idFormulario);
		
		// verificando o resultado da recuperacao do array
		if ((isset($arrayNomesCategoriasComponentesNaoZFFormulario)) and (count($arrayNomesCategoriasComponentesNaoZFFormulario > 0)))
			$arrayPrefixPaths = Basico_ComponenteControllerController::retornaArrayPrefixPathComponentesNaoZF($arrayNomesCategoriasComponentesNaoZFFormulario);

		// verificando o resultado da recuperacao do array de prefixos e paths
		if (count($arrayPrefixPaths) <= 0)
			return null;

		// adicionando comentario
		if ($addPrefixComment)
			$tempReturn .= str_replace('@identacao', $identacao, $addPrefixComment) . QUEBRA_DE_LINHA;

		// loop para preencher string de retorno
		foreach ($arrayPrefixPaths as $arrayPrefixPath) {			
			$tempReturn .= $identacao . FORM_GERADOR_FORM_ADDPREFIXPATH . "('{$arrayPrefixPath[COMPONENTE_NAO_ZF_PREFIX]}', '{$arrayPrefixPath[COMPONENTE_NAO_ZF_PATH]}');" . QUEBRA_DE_LINHA;
		}

		// retornando string
		return $tempReturn . QUEBRA_DE_LINHA;
	}

    /**
     * Retorna string contendo os elementos do formulario
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param String $formElementsComment
     * @param String $formElementsAddToFormComment
     * @param String $formArrayElements
     * @param String $formularioElementosObjects
     * @param String $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento
     * @param String $formCodigoCheckAmbienteDesenvolvimento
     * @param Object $objFormulario
     * @param Object $objModulo
     * @param String $formCodeBlockEndTag
     * @param String $subFormVariableInstance
     * 
     * @return String
     */
    private function retornaElementosFormulario($nivelIdentacaoInicial, $formElementsComment, $formElementsAddToFormComment, $formArrayElements, &$formularioElementosObjects, $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento, $formCodigoCheckAmbienteDesenvolvimento, $objFormulario, $objModulo, $formCodeBlockEndTag, $subFormVariableInstance = null)
    {
    	// inicializando variaveis
    	$tempReturn = '';
		$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
    	$tempReturn .= str_replace('@identacao', $identacao, $formElementsComment);
    	$tempReturn .= $identacao . $formArrayElements . QUEBRA_DE_LINHA;

    	$contador = 0;
    	$formElement = FORM_GERADOR_ELEMENTS . '[@contador]';
        $elementoAmbienteDesenvolvimento = false;
        $totalFormularioElementoFormulariosVinculados = 0;

        // recuperando ordem dos elementos
        $arrayOrdemElementos = Basico_FormularioFormularioElementoControllerController::retornaArrayOrdem($objFormulario->id);
        
        foreach ($formularioElementosObjects as $formularioElementoObject){
        	$formElementLoop = str_replace('@contador', $arrayOrdemElementos[$contador], $formElement);
        	
        	// verificando se o é preciso determinar ambiente de desenvolvimento
        	if (false !== array_search($formularioElementoObject->getCategoriaObject()->nome, $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento)){
				$elementoAmbienteDesenvolvimento = true;
				$tempReturn .= $identacao . $formCodigoCheckAmbienteDesenvolvimento;
                $identacao = Basico_UtilControllerController::retornaIdentacao(++$nivelIdentacao);
            } else
            	$elementoAmbienteDesenvolvimento = false;
            
            // verifica se elemento é da categoria FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO
            if ($formularioElementoObject->getCategoriaObject()->nome === FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO) {
            	// localiza formulario vinculado
            	$formularioElementoFormularioVinculado = $formularioElementoObject->getFormularioElementoFormularioVinculadoObject($objFormulario, $totalFormularioElementoFormulariosVinculados);
            	$formularioElementoConstanteTextualTitulo = $formularioElementoObject->getFormularioElementoConstanteTextualTitulo($objFormulario, $totalFormularioElementoFormulariosVinculados);
      
            	// recuperando variaveis que serao utilizadas para instanciar o formulario vinculado
            	$nomeClasseSubForm = self::retornaNomeClasseForm($objModulo, $formularioElementoFormularioVinculado);

            	// incrementa variavel de offset
            	$totalFormularioElementoFormulariosVinculados++;
            }
            else {           	
            	if (isset($nomeClasseSubForm))
            		unset($nomeClasseSubForm);
            	
            	if (isset($formularioElementoConstanteTextualTitulo))
            		unset($formularioElementoConstanteTextualTitulo);
            }

            // faz substituicao de tags caso o elemento seja do tipo FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO
            if (isset($formularioElementoConstanteTextualTitulo)){
            	$tempFormElement = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_FORM_NAME, FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoConstanteTextualTitulo}')", $formularioElementoObject->element);
            	$tempFormElement = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_OFFSET, $totalFormularioElementoFormulariosVinculados, $tempFormElement);
            }  	
            else {
            	// carregando elemento
            	$tempFormElement = $formularioElementoObject->element;            	

            	// fazendo substituicoes
            	$tempFormElement = str_replace(FORM_GERADOR_FORM_ELEMENT_FORM_NAME, self::retornaNomeClasseForm($objModulo, $objFormulario), $tempFormElement);
            }

			// recuperando string para concatenacao do nome do modulo e formulario
			$stringToReplace = substr($tempFormElement, 1, strpos($tempFormElement, "'", 1)-1);

			// montando string concatenada para substituicao
			$stringConcatenadaSubstituicao = ucfirst(strtolower($objModulo->nome)) . $objFormulario->formName . ucfirst($stringToReplace);

			// substituindo string
			$tempFormElement = str_replace($stringToReplace, $stringConcatenadaSubstituicao, $tempFormElement);

			// criando elemento
			$tempReturn .= $identacao . $formElementLoop . " = " . FORM_GERADOR_FORM_ELEMENT_CREATEELEMENT . "({$formularioElementoObject->getComponenteObject()->componente}, {$tempFormElement});" . QUEBRA_DE_LINHA;

			// setando a ordem do elemento
			$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETORDER . "($arrayOrdemElementos[$contador]);" . QUEBRA_DE_LINHA;

			// setando atributos do elemento
			if ($formularioElementoObject->elementAttribs){
				// faz substituicao de tags caso o elemento seja do tipo FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO
				if (isset($nomeClasseSubForm)) {

					// descobrindo o tipo de formulario (form ou sub-form)
					if ($formularioElementoFormularioVinculado->getCategoriaObject()->getRootCategoriaPaiObject() === 'FORMULARIO_SUB_FORMULARIO')
						$publicFormsSubPath = '/subforms/';
					else
						$publicFormsSubPath = '/forms/';

					// substituindo tags
					$tempFormAttribs = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_FORM_URL, APPLICATION_BASE_URL . '/public_forms/' . strtolower($objModulo->nome) . $publicFormsSubPath . $formularioElementoFormularioVinculado->formName . '." . ' . "Basico_PessoaControllerController::retornaLinguaUsuario() . " . '".html', $formularioElementoObject->elementAttribs);
					$tempFormAttribs = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_FORM_NAME, $nomeClasseSubForm, $tempFormAttribs);
					$tempFormAttribs = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_TITLE_DIALOG, FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoConstanteTextualTitulo}')", $tempFormAttribs);
				}
				else
					$tempFormAttribs = $formularioElementoObject->elementAttribs;
					
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETATTRIBS . "(array({$tempFormAttribs}));" . QUEBRA_DE_LINHA;
			}

			// descobrindo se o campo é requerido
            if ($formularioElementoObject->getFormularioFormularioElementoObject()->elementRequired == true) {
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_TRUE . ";" . QUEBRA_DE_LINHA;
            	
            	// setando variavel de label de campo requerido
            	$labelCampoRequerido = FORM_GERADOR_FORM_ELEMENT_LABEL_REQUIRED;
            } else {
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_FALSE . ";" . QUEBRA_DE_LINHA;
            	
            	// limpando variavel de label de campo requerido
            	$labelCampoRequerido = '';
            }

			// adicionando filtros
            if ($formularioElementoObject->getFormularioElementoFilterObject()->id)
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDFILTERS . "(array({$formularioElementoObject->getFormularioElementoFilterObject()->filter}));" . QUEBRA_DE_LINHA;

			// adicionando validadores
            $arrayFormularioElementoValidators = $formularioElementoObject->getFormularioElementoValidatorsObjects();

            foreach($arrayFormularioElementoValidators as $formularioElementoValidator){
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDVALIDATOR . "({$formularioElementoValidator->validator});" . QUEBRA_DE_LINHA;
            }

			// adiciona o decorator para os elementos que possuem decorator
			if ($formularioElementoObject->getDecoratorObject()->id)
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$formularioElementoObject->getDecoratorObject()->decorator});" . QUEBRA_DE_LINHA;

			// recuperando decorator de formularioFormularioElemento
			$decoratorFormularioFormularioElemento = Basico_FormularioFormularioElementoControllerController::retornaDecoratorObject($objFormulario->id, $formularioElementoObject->id, $arrayOrdemElementos[$contador]);

			// verificando o resultado da recuperacao do decorator
			if (isset($decoratorFormularioFormularioElemento))
				// setando decorator para o elemento a partir de formularioFormularioElemento
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$decoratorFormularioFormularioElemento->decorator});" . QUEBRA_DE_LINHA;

			// verificando se elemento é da categoria FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO ou o elemento eh da categoria FORMULARIO_ELEMENTO_BUTTON
            if (($formularioElementoObject->getCategoriaObject()->nome === FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO) or ($formularioElementoObject->getCategoriaObject()->nome === FORMULARIO_ELEMENTO_BUTTON)) {
            	// removendo decorator DtDdWrapper
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_REMOVEDECORATOR . "('DtDdWrapper');" . QUEBRA_DE_LINHA;
            }

        	// adicionando elementos label e ajuda
            if ($formularioElementoObject->constanteTextualLabel){
					
				// adicionando o link de ajuda
                if ($formularioElementoObject->getAjudaObject()->id){
					if ($formularioElementoObject->getAjudaObject()->url){
						$href = Basico_UtilControllerController::retornaStringEntreCaracter($formularioElementoObject->getAjudaObject()->url, "\'");
                        $target = Basico_UtilControllerController::retornaStringEntreCaracter('_blank', "\'");
                        $urlAjuda = ' . "<br><br>URL: <a href=' . $href . ' target=' . $target . '>' . $formularioElementoObject->getAjudaObject()->url . '</a>"';
                    } else
                        $urlAjuda = '';

                    $constanteTextoAjuda = Basico_UtilControllerController::retornaStringEntreCaracter($formularioElementoObject->getAjudaObject()->constanteTextualAjuda, "'");
                    $chamadaJavaScriptDialog = Basico_UtilControllerController::retornaJavaScriptDialog($objFormulario->formName, '$this->getView()->tradutor(\'' . DIALOG_HELP_TITLE . '\')', 'Basico_UtilControllerController::escapaAspasStringJavascriptPHP($this->getView()->tradutor(' . $constanteTextoAjuda . '))' . $urlAjuda);
                    $linkAjuda = "&nbsp;" . FORM_GERADOR_AJUDA_BUTTON_BEGIN_TAG . AJUDA_BUTTON_LABEL . FORM_GERADOR_AJUDA_BUTTON_SCRIPT_BEGIN_TAG . $chamadaJavaScriptDialog . FORM_GERADOR_AJUDA_BUTTON_SCRIPT_END_TAG . FORM_GERADOR_AJUDA_BUTTON_END_TAG;
                } else
                	$linkAjuda = '';

                $linkAjuda = Basico_UtilControllerController::retornaStringEntreCaracter($linkAjuda, "'");
                $tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETLABEL . "(" . Basico_UtilControllerController::retornaStringEntreCaracter($labelCampoRequerido, "'") . " . " . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->constanteTextualLabel}') . {$linkAjuda});" . QUEBRA_DE_LINHA;
                	
			}

			if (($formularioElementoObject->getAjudaObject()->id) and ($formularioElementoObject->getAjudaObject()->constanteTextualHint))
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETINVALIDMESSAGE . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->getAjudaObject()->constanteTextualHint}'));" . QUEBRA_DE_LINHA;

        	// verificando se o elemento pode ser carregando com dados
            if ($formularioElementoObject->elementReloadable){
            	$tempReturn .= $identacao . FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE . QUEBRA_DE_LINHA;

            	$nivelIdentacao++;
            	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETVALUE . "(" . FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE . "{$formularioElementoObject->elementName});" . QUEBRA_DE_LINHA;
				$nivelIdentacao--;
				$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
			}
			
        	// verificando se o é preciso determinar ambiente de desenvolvimento
            if ($elementoAmbienteDesenvolvimento){
				$nivelIdentacao--;
				$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
				$tempReturn .= $identacao . $formCodeBlockEndTag;
			}

			$tempReturn .= QUEBRA_DE_LINHA;
            $contador++;
        }
        
        $tempReturn .= $identacao . $formElementsAddToFormComment;
        
        if (!$subFormVariableInstance)
        	$tempReturn .= $identacao . FORM_GERADOR_FORM_ADDELEMENTS . "(" . FORM_GERADOR_ELEMENTS . ");" . QUEBRA_DE_LINHA;
        else {
        	$tempReturn .= $identacao . FORM_GERADOR_FORM_SUB_FORM_ADDELEMENTS . "(" . FORM_GERADOR_ELEMENTS . ");" . QUEBRA_DE_LINHA . QUEBRA_DE_LINHA;
        	
        	$tempReturn .=  $identacao . FORM_GERADOR_ADD_SUB_FORM_TO_FORM_COMMENT . QUEBRA_DE_LINHA;
        	$tempReturn =  str_replace(FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE, $subFormVariableInstance, $tempReturn);
        }
        
        // recuperando displays groups do formulario
        $stringAddDisplayGroup = self::retornaDisplaysGroupsFormulario($nivelIdentacao, $objFormulario);

        // verificando se existem displays groups
        if ($stringAddDisplayGroup)
        	$tempReturn .= $stringAddDisplayGroup;

        // retornando elementos do formulario
		return $tempReturn;
    }
    
    /**
     * Retorna string contendo a adicao do sub-formulario ao formulario pai
     * 
     * @param Integer $nivelIdentacao
     * @param String $subFormVariableInstance
     * @param String $subFormName
     * 
     * @return String
     */
    private function retornaAdicaoFormularioSubFormulario($nivelIdentacao, $subFormVariableInstance, $subFormName)
    {
    	// inicializando variaveis
    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
    	
    	// retornando adicao do sub-formulario ao formulario
    	return $identacao . FORM_GERADOR_FORM_SUB_FORM_ADDSUBFORM . "({$subFormVariableInstance}, '{$subFormName}');" . QUEBRA_DE_LINHA;
    }
    
    /**
     * Retorna string contendo o include de sub-formularios em formularios
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param Object $objSubFormulario
     * @param String $metodo
     * 
     * @return String
     */
    private function retornaIncludeSubForm($nivelIdentacaoInicial, $objSubFormulario, $metodo = INCLUDE_REQUIRE)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	$nivelIdentacao = $nivelIdentacaoInicial;
    	
    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
    	
    	// recuperando o nome do arquivo
    	$nomeDoArquivo = self::retornaNomeArquivoForm($objSubFormulario);
    	
    	$tempReturn .= $identacao . FORM_GERADOR_INCLUDE_SUB_FORM_TO_FORM_COMMENT . QUEBRA_DE_LINHA;
    	
    	$tempReturn .= "{$identacao}{$metodo}(\"subForms/{$nomeDoArquivo}\");" . QUEBRA_DE_LINHA;
    	
    	// retornando o include do sub-formulario
    	return $tempReturn;
    }

    /**
     * Retorna string contendo o fim de um bloco
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param String $formCodeBlockEndTag
     * 
     * @return String
     */
    private function retornaFimDeBloco($nivelIdentacaoInicial, $formCodeBlockEndTag)
    {
    	// inicializacao das variaveis
    	$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);

    	// retorna o codigo de fim de bloco
    	return $identacao . $formCodeBlockEndTag;
    }

    /**
     * Retorna string contendo o fim de um script
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param String $formEndTag
     * 
     * @return String
     */
    private function retornaFimDeScript($nivelIdentacaoInicial, $formEndTag)
    {
    	// inicializacao das variaveis
    	$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);
    	
    	// retorna o codigo de fim de script
    	return $identacao . $formEndTag;
    }
    
    /**
     * Escreve arquivos .html contendo o formulario DOJO passado como parametro em todas as linguas ativas no sistema
     * 
     * @param Basico_Model_Formulario $objetoFormularioDOJO
     * @param String $moduleName
     * 
     * @return Boolean
     */
    private function escreveObjetoFormularioDOJOHTMLTodasLinguasAtivas(Basico_Model_Formulario $objetoFormularioDOJO, $moduleName)
    {
    	// inicializando variaveis
    	$tempReturn = true;

		// recuperando objetos Basico_Model_Categoria das linguas ativas no sistema
		$objsCategoriasLinguasAtivas = Basico_TradutorControllerController::retornaCategoriasLinguasAtivas();

		// loop para cada lingua ativa no sistema
		foreach ($objsCategoriasLinguasAtivas as $objCategoriaLinguaAtiva)
		{
			$tempReturn = self::escreveObjetoFormularioDOJOHTMLLingua($objetoFormularioDOJO, $moduleName, $objCategoriaLinguaAtiva);
			
			if (!$tempReturn)
				return $tempReturn;
		}
		
		return $tempReturn;
    }
    
    /**
     * Escreve arquivo .html contendo o formulario DOJO passado como parametro na lingua passada por parametro
     * 
     * @param Basico_Model_Formulario $objetoFormularioDOJO
     * @param String $moduleName
     * @param Basico_Model_Categoria $objCategoriaLingua
     * 
     * @return Boolean
     */
    private function escreveObjetoFormularioDOJOHTMLLingua(Basico_Model_Formulario $objetoFormularioDOJO, $moduleName, $objCategoriaLingua)
    {
    	// carregar nome do arquivo de saida
    	$caminhoPastaPublicForms    = PUBLIC_PATH_PUBLIC_FORMS . '/' . strtolower($moduleName) . '/forms';
    	$caminhoPastaPublicSubForms = $caminhoPastaPublicForms . '/subforms';

		// verificando se o caminho existe
		if (!file_exists($caminhoPastaPublicForms) | !file_exists($caminhoPastaPublicSubForms))
			throw new Exception(MSG_ERRO_PATH_INEXISTENTE);

		// recuperando dados do objeto formulario
		$nomeClasseFormulario  = self::retornaNomeClasseForm(Basico_ModuloControllerController::retornaObjetoModuloNome($moduleName), $objetoFormularioDOJO);
		$nomeArquivoFormulario = self::retornaNomeArquivoForm($objetoFormularioDOJO);

		// modificando o nome do arquivo
		$fullFileName = Basico_UtilControllerController::retornaNomeArquivoConcatenadoLingua($caminhoPastaPublicForms . '/' . $nomeArquivoFormulario, $objCategoriaLingua, '.html');

		// recuperando informacoes sobre a lingua atual do usuario
		$linguaUsuario = DEFAULT_SYSTEM_LANGUAGE;
		
		// setando a lingua do sistema para a lingua de geracao do formulario
		Basico_PessoaControllerController::setaLinguaUsuario($objCategoriaLingua->nome);

		// instanciando o formulario
		$form = new $nomeClasseFormulario();
		
		// recuperando subformularios
		$subForms = $form->getSubForms();

		// transformando o form em string
		$form = Basico_UtilControllerController::retornaValorTipado($form, TIPO_STRING);

		// escrevendo o conteudo do form no arquivo .html
		Basico_UtilControllerController::escreveConteudoArquivo($fullFileName, $form);

		// loop para escrever os subforms
		foreach ($subForms as $subform)	{
			// recuperando o nome do arquivo do subform
			$fullFileName = Basico_UtilControllerController::retornaNomeArquivoConcatenadoLingua($caminhoPastaPublicSubForms . '/' . $subform->getName(), $objCategoriaLingua, '.html');
			
			// transformando o form em string
			$subform = Basico_UtilControllerController::retornaValorTipado($subform, TIPO_STRING);
			
			// escrevendo o conteudo do sub-form no arquivo .html
			Basico_UtilControllerController::escreveConteudoArquivo($fullFileName, $subform);
		}

		// setando a lingua do sistema para a lingua do usuario
		Basico_PessoaControllerController::setaLinguaUsuario($linguaUsuario);

		return true;
    }

    /**
     * Retorna uma string contendo as linhas que devem ser adicionadas ao formulario para incluir display group
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param Basico_Model_Formulario $objFormulario
     * 
     * @return String
     */
    private function retornaDisplaysGroupsFormulario($nivelIdentacaoInicial, Basico_Model_Formulario $objFormulario)
    {
    	// inicializacao das variaveis
    	$nivelIdentacao = $nivelIdentacaoInicial;
    	$arrayDisplaysGroups = array();
    	$arrayDecoratorsDisplayGroups = array();
    	$tempReturn = '';

    	$identacao = Basico_UtilControllerController::retornaIdentacao($nivelIdentacao);

    	// recuperando elementos que possuem display group
    	$arrayObjsFormularioFormularioElemento = Basico_FormularioFormularioElementoControllerController::retornaObjsFormularioFormularioElementoGrupoFormularioElementoFormulario($objFormulario);

    	// verificando o resultado da recuperacao
    	if (count($arrayObjsFormularioFormularioElemento) <= 0)
    		return null;

		// loop para identificar os elementos dentro dos displays groups
		foreach ($arrayObjsFormularioFormularioElemento as $objFormularioFormularioElemento) {

			// descobrindo o id do display group
			$objGrupoFormularioElemento = $objFormularioFormularioElemento->getGrupoFormularioElementoObject();

			// verificando se o id do display group existe no array de displays groups
			if (!array_key_exists($objGrupoFormularioElemento->id, $arrayDisplaysGroups)) {
				// inicializando array dentro do array de displays groups
				$arrayDisplaysGroups[$objGrupoFormularioElemento->id] = array();
				// recuperando decorator do primeiro elemento do grupo
				$arrayDecoratorsDisplayGroups[$objFormularioFormularioElemento->ordem] = $objFormularioFormularioElemento->getDecoratorObject();
			}

			// carregando array com os elementos do grupo
			$arrayDisplaysGroups[$objGrupoFormularioElemento->id][] = $objFormularioFormularioElemento->ordem;
		}

		// inicializando o modelo GrupoFormularioElemento
		$objGrupoFormularioElemento = new Basico_Model_GrupoFormularioElemento();

		// inicializando array para preenchimento de elementos do grupo
		$arrayElementosDisplayGroup = array();

		// loop para escrever os display groups
		foreach ($arrayDisplaysGroups as $idDisplayGroup => $arrayOrdemElementosDisplayGroup) {
			// carregando objeto GrupoFormularioElemento
			$objGrupoFormularioElemento->find($idDisplayGroup);

			// loop para descarregar os elementos do grupo
			foreach ($arrayOrdemElementosDisplayGroup as $ordemElementoDisplayGroup) {
				// carregando array com os elementos do grupo
				$arrayElementosDisplayGroup[] = FORM_GERADOR_ELEMENTS . "[{$ordemElementoDisplayGroup}]" . FORM_GERADOR_FORM_ELEMENT_GETNAME;				
			}

			// estourando array em string
			$stringElementos = implode(',', $arrayElementosDisplayGroup);

			// recuperando o nome do display group
			$nomeDisplayGroup = strtolower($objGrupoFormularioElemento->nome);

			// escrevendo display group
			$tempReturn .= str_replace('@identacao', $identacao, FORM_GERADOR_ADDDISPLAYGROUP_COMMENT) . QUEBRA_DE_LINHA;
			$tempReturn .= $identacao . FORM_GERADOR_FORM_ADDDISPLAYGROUP . "(array({$stringElementos}), '{$nomeDisplayGroup}', array('legend' => " . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$objGrupoFormularioElemento->constanteTextualLabel}'), 'order' => {$arrayOrdemElementosDisplayGroup[0]}));" . QUEBRA_DE_LINHA;
			$tempReturn .= $identacao . "\${$nomeDisplayGroup} = " . FORM_GERADOR_FORM_GETDISPLAYGROUP . "('{$nomeDisplayGroup}');" . QUEBRA_DE_LINHA;
			$tempReturn .= $identacao . "\${$nomeDisplayGroup}" . FORM_GERADOR_FORM_ELEMENT_REMOVEDECORATOR . "('DtDdWrapper');" . QUEBRA_DE_LINHA;
			$tempReturn .= $identacao . "\${$nomeDisplayGroup}" . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$arrayDecoratorsDisplayGroups[$arrayOrdemElementosDisplayGroup[0]]->decorator});" . QUEBRA_DE_LINHA;
		}
		
		return QUEBRA_DE_LINHA . $tempReturn;
    }
}