<?php
/**
 * Controlador Gerador Formulario
 */

class Basico_OPController_GeradorFormularioOPController
{
    /**
     * Retorna Nome do arquivo do formulário a partir do nome do formulário
     * 
     * @param Basico_Model_Formulario $objFormulario
     * 
     * @return String
     */
    private static function retornaNomeArquivoForm(Basico_Model_Formulario &$objFormulario)
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
    private static function retornaNomeClasseForm(Basico_Model_Modulo $objModulo, Basico_Model_Formulario $objFormulario)
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
    private static function retornaNomeVariavelSubForm(Basico_Model_Modulo $objModulo, Basico_Model_Formulario $objSubFormulario)
    {
    	// retorna o nome da variavel para instanciamento
		return "$" . strtolower($objModulo->nome) . ucfirst($objSubFormulario->formName) . "SubForm";
    }

    /**
     * Gera todos os formularios do sistema
     *
     * @return true
     */
    public static function gerarTodos()
    {
    	// setando as diretrizes administraticas para execucao de metodos administrativos e recuperando as configuracoes atuais do servidor
	    $arrayConfigAtualPHP = Basico_OPController_UtilOPController::setaDiretivasAdministrativasPHP();

		// recuperando os objetos formulario dos sistema
		$objsFormularios = Basico_OPController_FormularioOPController::getInstance()->retornaTodosObjsFormularios();

		// loop para capturar cada formulario
		foreach ($objsFormularios as $objFormulario) {
			// gerando o formulario
			try {
				self::gerar($objFormulario);
			} catch (Exception $e) {
				throw new Exception(MSG_ERRO_GERAR_TODOS_FORMULARIO . $objFormulario->nome . QUEBRA_DE_LINHA . $e->getMessage());
			}
		}

		// voltando as diretrizes administrativas
		Basico_OPController_UtilOPController::setaDiretivasAdministrativasPHP($arrayConfigAtualPHP);

    	return true;
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
    		// loop paara processar os templates
	       	foreach($templatesPossiveis as $templateObject){
	       		// checando se pode continuar
	    		if ($tempReturn){
	    			// checando o tipo de ouput para redirecionar para metodos especificos
		    		if ($templateObject->getOutputObject()->nome === FORM_GERADOR_OUTPUT_DOJO) {
		    			// gerando formulario dojo
		    			$tempReturn = self::gerarDOJO($objFormulario, FORM_CLASS_EXTENDS_DOJO_FORM, $excludeModulesNames);
		    		} else if ($templateObject->getOutputObject()->nome === FORM_GERADOR_OUTPUT_HTML) {
		    			// gerando formulario zend
		    			$tempReturn = self::gerarHTML($objFormulario, FORM_CLASS_EXTENDS_ZEND_FORM, $excludeModulesNames);
		    		}
	    		}
	    	}
    	} else {
    		// estourando excecao
    		throw new Exception(MSG_ERRO_FORMULARIO_SEM_TEMPLATE);
    	}

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
    private static function gerarHTML(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_ZEND_FORM, array $excludeModulesNames = null)
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
    private static function gerarDOJO(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM, array $excludeModulesNames = null)
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
        if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_DECORATOR, $arrayInitForm))
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
            	// montando o nome do arquivo de saida
                $fullFileName = $modulePath . $nomeArquivoSaida;

                // criando ponto de restauração do arquivo de formulário, caso exista.
                if (file_exists($fullFileName)){
                    $podeContinuar = Basico_OPController_UtilOPController::gerarPontoDeRestauracaoArquivo($fullFileName, $filenameExtensionRecovery);
                    $arrayArquivosModificados[] = $fullFileName;
                }

                // verifica se a copia foi bem sucedida
                if (!$podeContinuar)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_LEITURA . "'{$fullFileName}'");

                // abre arquivo com permissoes de escrita
                $fileResource = Basico_OPController_UtilOPController::abreArquivoLimpo($fullFileName);

                // verifica se o sistema conseguiu abrir o arquivo
                if (!$fileResource)
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_ESCRITA . "'{$fullFileName}'");

                // nivel 0 de identação
				$nivelIdentacao = 0;
                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaInstanciamentoClasseFormulario($nivelIdentacao, $formBeginTag, $moduleName, $headerFormulario, $formClassInstances[$moduleName], $formCodeBlockBeginTag));
                
                // nivel 1 de identação
                $nivelIdentacao++;
                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaChamadaDeInicializacaoFormulario($nivelIdentacao, $moduloObject, $objFormulario, $headerConstructorForm, $formConstructorCall, $formCodeBlockBeginTag));
                
                // nivel 2 de identação
                $nivelIdentacao++;
                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaInicializacaoFormulario($nivelIdentacao, $formConstructorComment, $formConstructorInherits, str_replace($objFormulario->formName, ucfirst(strtolower($moduleName)) . $objFormulario->formName, $formName), $formMethod, $formAction, $formAttribs, $formDecorator));

                // verifica se o formulario possui elementos
                if (Basico_OPController_FormularioOPController::existeElementosPorIdFormularioViaSQL($objFormulario->id)) {

                	// adicao dos prefix e paths de componentes nao ZF
                	$stringAddPrefixPath = self::retornaAddPrefixPathElementosNaoZFFormulario($nivelIdentacao, $objFormulario->id, $formAddPrefixPathComment);

                	// verificando se existem mascaras para serem inseridas no formulario para adicao do prefix para o elemento html dinamico
                	if (Basico_OPController_UtilOPController::retornaScriptAplicacaoMascarasPorNomeModuloNomeFormulario($moduleName, $objFormulario->nome)) {
                		// recuperando prefix paths do componente html
                		$arrayPrefixPathComponenteHtml = Basico_OPController_ComponenteOPController::retornaArrayPrefixPathComponentesNaoZF(array(CATEGORIA_COMPONENTE_ROCHEDO));

                		// verificando o resultado da recuperacao
                		if (count($arrayPrefixPathComponenteHtml) > 0) {
                			// recuperando string de adicao de prefix path
                			$stringAddPrefixPathComponenteHtml = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao) . FORM_GERADOR_FORM_ADDPREFIXPATH . "('{$arrayPrefixPathComponenteHtml[0][COMPONENTE_NAO_ZF_PREFIX]}', '{$arrayPrefixPathComponenteHtml[0][COMPONENTE_NAO_ZF_PATH]}');" . QUEBRA_DE_LINHA;

                			// verificando se este prefix path para ser incluido no formulario, por haver algum elemento de terceiros
                			if ($stringAddPrefixPath) {
                				// verificando se o prefix path do elemento html ja nao esta sendo incluido no formulario por haver algum elemento que carregue este prefix path
                				if (strpos($stringAddPrefixPath, $stringAddPrefixPathComponenteHtml) === false) {
                					// adicionando o prefix path a string de prefix paths do formulario
                					$stringAddPrefixPath .= $stringAddPrefixPathComponenteHtml;
                				}
                			} else {
                				// setando string prefix path
                				$stringAddPrefixPath = str_replace('@identacao', Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao), $formAddPrefixPathComment) . QUEBRA_DE_LINHA . $stringAddPrefixPathComponenteHtml . QUEBRA_DE_LINHA;
                			}
                		}
                	}

                	// verificando se existem addprefixpaths para serem incluidos no formulario
					if (isset($stringAddPrefixPath)) {
						// adicionando prefix paths
                		Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, $stringAddPrefixPath);
					}
                	
                	// adição dos elementos do formulário
                	Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaElementosFormulario($nivelIdentacao, $formElementsComment, $formElementAddElementToFormComment, $formArrayElements, $objFormulario->getFormularioElementosObjects(), $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento, $formCodigoCheckAmbienteDesenvolvimento, $objFormulario, $moduloObject, $formCodeBlockEndTag));
                }

                // verificacao sobre formularios filhos
                if (Basico_OPController_FormularioOPController::existeFormulariosFilhosPorIdFormularioViaSQL($objFormulario->id)) {
                	// recuperando subformularios filhos
                	$formulariosFilhosObjects = $objFormulario->getFormulariosFilhosObjects();

                	// loop para gerar os subformularios filhos
                	foreach ($formulariosFilhosObjects as $formularioFilhoObject){
                		// gerando subformularios filhos
                		if (!self::gerarSubForm($formularioFilhoObject, $excludeModulesNames)) {
                			throw new Exception(MSG_ERRO_GERAR_SUB_FORMULARIO);
                		}

                		// incluindo o subformulario
                		Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaIncludeSubForm($nivelIdentacao, $formularioFilhoObject));
                	}
                }

                // nivel 1 de identação
                $nivelIdentacao--;
                $identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
                // escrevendo fim de bloco
                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaFimDeBloco($nivelIdentacao, $formCodeBlockEndTag));

                // nivel 0 de identação
                $nivelIdentacao--;
                $identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
                // escrevendo fim de bloco
				Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaFimDeBloco($nivelIdentacao, $formCodeBlockEndTag));
				// escrevendo o fim do script
				Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaFimDeScript($nivelIdentacao, $formEndTag));

				// verificando se existe arquivo aberto
                if ($fileResource) {
                	// fechando arquivo
                    $resultado = Basico_OPController_UtilOPController::fechaArquivo($fileResource);
                }

                // gerando formulario versao HTML
                $resultado = self::escreveObjetoFormularioDOJOHTMLTodasLinguasAtivas($objFormulario, $moduleName);
            }

        } catch (Exception $e) {

        	// verificando se o arquivo encontra-se aberto
            if ($fileResource)
                Basico_OPController_UtilOPController::fechaArquivo($fileResource);

            // Revertendo para o ponto de restauração LKG (Last know good) do arquivo do formulário
            Basico_OPController_UtilOPController::recuperarPontoDeRestauracaoArquivos($arrayArquivosModificados, $filenameExtensionRecovery);

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
    private static function gerarSubForm(Basico_Model_Formulario $objSubFormulario, array $excludeModulesNames = null)
    {
		$tempReturn = true;
		
		// verifica se o formulario possui formulario pai
    	if (!$objSubFormulario->formularioPai) {
    		throw new Exception(MSG_ERRO_SUBFORMULARIO_SEM_FORMULARIO_PAI);
    	}

    	// verifica se o objeto eh da categoria FORMULARIO_SUB_FORMULARIO
    	if ($objSubFormulario->getCategoriaObject()->getRootCategoriaPaiObject()->nome != FORMULARIO_SUB_FORMULARIO) {
    		throw new Exception(MSG_ERRO_FORMULARIO_SUB_FORMULARIO_CATEGORIA);
    	}

    	$templatesPossiveis = $objSubFormulario->getTemplatesObjects();
    	
    	// veririca se existe templates
    	if (count($templatesPossiveis)){
    		// loop para gerar cada template do subform
	       	foreach($templatesPossiveis as $templateObject){
	       		// verificando o resultado dos metodos abaixo executados
	    		if ($tempReturn){
	    			// recuperando output do template
	    			$outputTemplate = $templateObject->getOutputObject();
					// verificando template
		    		if ($outputTemplate->nome === FORM_GERADOR_OUTPUT_DOJO) {
		    			// gerando subformulario dojo
		    			$tempReturn = self::gerarSubDOJO($objSubFormulario, FORM_CLASS_EXTENDS_DOJO_FORM_SUB_FORM, $excludeModulesNames);
		    		} else if ($outputTemplate->nome === FORM_GERADOR_OUTPUT_HTML) {
		    			// gerando subformulario html
		    			$tempReturn = self::gerarSubHTML($objSubFormulario, FORM_CLASS_EXTENDS_ZEND_FORM_SUB_FORM, $excludeModulesNames);
		    		}
	    		}
	    	}
    	} else {
    		throw new Exception(MSG_ERRO_SUBFORMULARIO_SEM_TEMPLATE);
    	}

    	// retornando resultado
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
    private static function gerarSubHTML(Basico_Model_Formulario $objSubFormulario, $classToExtends = FORM_CLASS_EXTENDS_ZEND_FORM_SUB_FORM, array $excludeModulesNames = null)
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
    private static function gerarSubDOJO(Basico_Model_Formulario $objSubFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM_SUB_FORM, array $excludeModulesNames = null)
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
		if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ORDER, $arrayInitSubForm))
			$subFormOrder 						   = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ORDER];

       	$subFormElementsComment                    = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ELEMENTS_COMMENT];
       	$subFormElementAddElementToFormComment     = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADD_ELEMENTS_TO_FORM_COMMENT];
        $subFormArrayElements                      = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ARRAY_ELEMENTS];
        $subFormCodigoCheckAmbienteDesenvolvimento = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO];
 
        $subFormEndTag                             = $arrayInitSubForm[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_END_TAG];
       
        // verifica se existe decorator para o formulario
        if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_DECORATOR, $arrayInitSubForm))
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
        	// inicializando variaveis
            $arrayArquivosModificados = array();
            $podeContinuar = true;

            // loop para criar o formulario em diversos caminhos de modulos
            foreach ($modulesPath as $moduleName => $modulePath){
                $fullFileName = $modulePath . $nomeArquivoSaida;

                // Criando ponto de restauração do arquivo de formulário, caso exista.
                if (file_exists($fullFileName)){
                    $podeContinuar = Basico_OPController_UtilOPController::gerarPontoDeRestauracaoArquivo($fullFileName, $filenameExtensionRecovery);
                    $arrayArquivosModificados[] = $fullFileName;
                }

                // verifica se a copia foi bem sucedida
                if (!$podeContinuar) {
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_LEITURA . "'{$fullFileName}'");
                }

                // abre arquivo com permissoes de escrita
                $fileResource = Basico_OPController_UtilOPController::abreArquivoLimpo($fullFileName);

                // verifica se o sistema conseguiu abrir o arquivo
                if (!$fileResource) {
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_ESCRITA . "'{$fullFileName}'");
                }

                // nivel 0 de identação
				$nivelIdentacao = 0;
				// escrevendo instanciamento do subformulario
                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaInstanciamentoSubFormulario($nivelIdentacao, $subFormBeginTag, $moduleName, $headerSubFormulario, $subFormClassInstances[$moduleName]));
                
                // nivel 1 de identação
                $nivelIdentacao++;
                // escrevendo a inicializacao do formulario
                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaInicializacaoSubFormulario($nivelIdentacao, $subFormInitComment, $subFormName, $subFormMethod, $subFormAction, $subFormAttribs, $subFormDecorator, $subFormVariablesInstances[$moduleName], $subFormOrder));

                // verifica se o formulario possui elementos
                if (Basico_OPController_FormularioOPController::existeElementosPorIdFormularioViaSQL($objSubFormulario->id)){
                	// adicao dos prefix e paths de componentes nao ZF
                	$stringAddPrefixPath = self::retornaAddPrefixPathElementosNaoZFFormulario($nivelIdentacao, $objSubFormulario->id, $formAddPrefixPathComment);

                    // verificando se existem mascaras para serem inseridas no formulario para adicao do prefix para o elemento html dinamico
                	if (Basico_OPController_UtilOPController::retornaScriptAplicacaoMascarasPorNomeModuloNomeFormulario($moduleName, $objSubFormulario->nome)) {
                		// recuperando prefix paths do componente html
                		$arrayPrefixPathComponenteHtml = Basico_OPController_ComponenteOPController::retornaArrayPrefixPathComponentesNaoZF(array(CATEGORIA_COMPONENTE_ROCHEDO));

                		// verificando o resultado da recuperacao
                		if (count($arrayPrefixPathComponenteHtml) > 0) {
                			// recuperando string de adicao de prefix path
                			$stringAddPrefixPathComponenteHtml = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao) . FORM_GERADOR_FORM_ADDPREFIXPATH . "('{$arrayPrefixPathComponenteHtml[0][COMPONENTE_NAO_ZF_PREFIX]}', '{$arrayPrefixPathComponenteHtml[0][COMPONENTE_NAO_ZF_PATH]}');" . QUEBRA_DE_LINHA;

                			// verificando se este prefix path para ser incluido no formulario, por haver algum elemento de terceiros
                			if ($stringAddPrefixPath) {
                				// verificando se o prefix path do elemento html ja nao esta sendo incluido no formulario por haver algum elemento que carregue este prefix path
                				if (strpos($stringAddPrefixPath, $stringAddPrefixPathComponenteHtml) === false) {
                					// adicionando o prefix path a string de prefix paths do formulario
                					$stringAddPrefixPath .= $stringAddPrefixPathComponenteHtml;
                				}
                			} else {
                				// setando string prefix path
                				$stringAddPrefixPath = str_replace('@identacao', Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao), $formAddPrefixPathComment) . QUEBRA_DE_LINHA .  $stringAddPrefixPathComponenteHtml . QUEBRA_DE_LINHA;
                			}
                		}
                	}

                	// verificando se existem addprefixpaths para serem incluidos no formulario
					if ($stringAddPrefixPath)
                		Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, $stringAddPrefixPath);

                	// adição dos elementos do formulário
                	Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaElementosFormulario($nivelIdentacao, $subFormElementsComment, $subFormElementAddElementToFormComment, $subFormArrayElements, $objSubFormulario->getFormularioElementosObjects(), $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento, $subFormCodigoCheckAmbienteDesenvolvimento, $objSubFormulario, $moduloObject, $subFormCodeBlockEndTag, $subFormVariablesInstances[$moduleName]));
                }

                // recuperando formulario pai
                $objFormularioPai = $objSubFormulario->getFormularioPaiObject();

				// verificando se o pai do formulario eh da categoria FORMULARIO_SUB_FORMULARIO
    			if ($objFormularioPai->getCategoriaObject()->getRootCategoriaPaiObject()->nome === FORMULARIO_SUB_FORMULARIO) {
    				// recuperando o nome da variavel que instancia o sub formulario pai
    				$formPaiVariableInstance = self::retornaNomeVariavelSubForm(Basico_OPController_ModuloOPController::getInstance()->retornaObjetoModuloPorNome($moduleName), $objFormularioPai);
	                // adicionanando sub-formulario ao sub formulario pai
	                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaAdicaoFormularioSubFormulario($nivelIdentacao, $subFormVariablesInstances[$moduleName], $objSubFormulario->formName, $formPaiVariableInstance));
    			} else {
					// adicionanando sub-formulario ao formulario pai
	                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaAdicaoFormularioSubFormulario($nivelIdentacao, $subFormVariablesInstances[$moduleName], $objSubFormulario->formName));
    			}

            	// verificacao sobre formularios filhos
				if (Basico_OPController_FormularioOPController::existeFormulariosFilhosPorIdFormularioViaSQL($objSubFormulario->id)) {
					// recuperando formularios filhos
					$formulariosFilhosObjects = $objSubFormulario->getFormulariosFilhosObjects();

					// loop para gerar os formularios filhos
					foreach ($formulariosFilhosObjects as $formularioFilhoObject){
						// verificando o resultado da geracao do formulario filho
						if (!self::gerarSubForm($formularioFilhoObject, $excludeModulesNames)) {
		                	throw new Exception(MSG_ERRO_GERAR_SUB_FORMULARIO);
						}

						// escrevendo include do subform
		                Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, QUEBRA_DE_LINHA . self::retornaIncludeSubForm($nivelIdentacao, $formularioFilhoObject));
					}
				}

				// nivel 0 de identação
                $nivelIdentacao--;
                $identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
                // escrevendo a finalizacao do arquivo (script)
				Basico_OPController_UtilOPController::escreveLinhaFileResource($fileResource, self::retornaFimDeScript($nivelIdentacao, $subFormEndTag));

				// verificando se o arquivo encontra-se aberto
                if ($fileResource) {
                	// recuperando resultado da acao de fechar o arquivo
                    $resultado = Basico_OPController_UtilOPController::fechaArquivo($fileResource);
                }
            }

        } catch (Exception $e) {
        	// verificando se o arquivo encontra-se aberto
            if ($fileResource)
                Basico_OPController_UtilOPController::fechaArquivo($fileResource);

            // Revertendo para o ponto de restauração LKG (Last know good) do arquivo do formulário
            Basico_OPController_UtilOPController::recuperarPontoDeRestauracaoArquivos($arrayArquivosModificados, $filenameExtensionRecovery);

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
    private static function retornaArrayInitSubForm(Basico_Model_Formulario &$objSubFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM_SUB_FORM)
    {
    	// inicializando variaveis
    	$arrayReturn = array();
    	$baseUrl     = Basico_OPController_UtilOPController::retornaBaseUrl();

    	// carregando atributos do sub-formulario
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_FILENAME_EXTENSION_RECOVERY]           = FORM_GERADOR_RECUPERACAO_EXTENSAO;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]                           = str_replace('@data_criacao', date('d/m/Y H:i:s'), FORM_GERADOR_HEADER) . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]                           = str_replace('@versao', Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objSubFormulario, true), $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]);
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]                           = str_replace('@data_versao', date('d/m/Y H:i:s', Basico_OPController_UtilOPController::retornaTimestamp($objSubFormulario->validadeInicio)), $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM]);
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_BEGIN_TAG]                         	  = FORM_BEGIN_TAG . QUEBRA_DE_LINHA;

        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_TAG]                     = FORM_GERADOR_CLASS_EXTENDS_ELEMENT;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_CLASS]                   = "= new {$classToExtends}();";
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_BEGIN_TAG]                  = '{' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_END_TAG]                    = '}' . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_INIT_COMMENT]                          = FORM_GERADOR_SUB_FORM_INIT_COMMENT . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_NAME]                                  = FORM_GERADOR_FORM_SUB_FORM_SETNAME . "('{$objSubFormulario->formName}');" . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADDPREFIXPATH_COMMENT]                 = FORM_GERADOR_ADDPREFIXPATH_COMMENT;
        
        // verificando se o sub-formulario possui metodo
        if ($objSubFormulario->formMethod)
        	// setando o metodo do sub formulario
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_METHOD]                            = FORM_GERADOR_FORM_SUB_FORM_SETMETHOD . "('{$objSubFormulario->formMethod}');" . QUEBRA_DE_LINHA;

		// verificando se o sub-formulario possui acao
        if ($objSubFormulario->formAction) {
        	// montando o php para setar o action do form
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ACTION]                            = FORM_GERADOR_FORM_SUB_FORM_SET_ENCRYPTED_ACTION . "('{$baseUrl}{$objSubFormulario->formAction}'));" . QUEBRA_DE_LINHA;
        }

		// inicializando variaveis
        $tempArraySubFormAttrib = array();

        // carregando atributos do sub-formulario
        $tempArraySubFormAttrib[] = "'title' => " . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$objSubFormulario->constanteTextualTitulo}')";
        $tempArraySubFormAttrib[] = "'legend' => " . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$objSubFormulario->constanteTextualTitulo}')";

        // verificando se o sub-formulario possui atributos ou permite rascunho
        if (($objSubFormulario->formAttribs) or ($objSubFormulario->permiteRascunho)) {
        	// verificando se o sub-form possui atributos
        	if ($objSubFormulario->formAttribs) {
	        	// carregando chamadas ao tradutor para textos de caixas de dialogo de validacao
	        	$tituloDialogValidacao = "{" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('" . FORM_VALIDATION_TITLE . "')}";
	        	$labelDialogValidacao = "{" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('" . FORM_VALIDATION_MESSAGE . "')}";
	
	        	// carregando atributos
	        	$tempSubFormAttrib = $objSubFormulario->formAttribs;
	
	        	// substituicao de tags para caixa de dialogo de validacao
	        	$tempSubFormAttrib = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_FORMNAME_TAG, $objSubFormulario->formName, $tempSubFormAttrib);
	        	$tempSubFormAttrib = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_TITLE_TAG, $tituloDialogValidacao, $tempSubFormAttrib);
	        	$tempSubFormAttrib = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_MESSAGE_TAG, $labelDialogValidacao, $tempSubFormAttrib);
	
	        	// setando atributo
				$tempArraySubFormAttrib[] = $tempSubFormAttrib;
        	}

			// verificando se o sub-formulario permite rascunho
			if ($objSubFormulario->permiteRascunho) {
        		// adicionando linha de adicao de atributo de permissao de rascunho
        		$tempArraySubFormAttrib[] = "'rascunho' => true"; 
			}
        }

        // adicionando atributos do subformulario
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ATTRIBS]                               = FORM_GERADOR_FORM_SUB_FORM_ADDATTRIBS . "(array(" . implode(",", $tempArraySubFormAttrib) . "));" . QUEBRA_DE_LINHA;

        // recuperando decorator do subform
        $objdecoratorSubForm = $objSubFormulario->getDecoratorObject();

        // verificando se o sub-formulario possui decorator
        if ($objdecoratorSubForm)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_DECORATOR]                         = FORM_GERADOR_FORM_SUB_FORM_SETDECORATORS . "(array({$objdecoratorSubForm->decorator}));" . QUEBRA_DE_LINHA;

        // verificando se o sub-formulario possui ordem
        if ($objSubFormulario->ordem)
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ORDER]                             = FORM_GERADOR_FORM_SUB_FORM_SETORDER . "({$objSubFormulario->ordem});" . QUEBRA_DE_LINHA;

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
    private static function retornaArrayInitForm(Basico_Model_Formulario &$objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM)
    {
    	// inicializando variaveis
    	$arrayReturn = array();
    	$baseUrl     = Basico_OPController_UtilOPController::retornaBaseUrl();
    	
    	// carregando atributos do formulario
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_FILENAME_EXTENSION_RECOVERY]           = FORM_GERADOR_RECUPERACAO_EXTENSAO;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]                           = str_replace('@data_criacao', date('d/m/Y H:i:s'), FORM_GERADOR_HEADER) . QUEBRA_DE_LINHA;
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]                           = str_replace('@versao', Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objFormulario, true), $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]);
        $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]                           = str_replace('@data_versao', date('d/m/Y H:i:s', Basico_OPController_UtilOPController::retornaTimestamp($objFormulario->validadeInicio)), $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM]);
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
        if ($objFormulario->formMethod) {
        	// setando o metodo do formulario
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_METHOD]                            = FORM_GERADOR_FORM_SETMETHOD . "('{$objFormulario->formMethod}');" . QUEBRA_DE_LINHA;
        }

        // verificando se o formulario possui acao
        if ($objFormulario->formAction) {
        	// montando o php para setar o action do form
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ACTION]                            = FORM_GERADOR_FORM_SET_ENCRYPTED_ACTION . "('{$baseUrl}{$objFormulario->formAction}'));" . QUEBRA_DE_LINHA;
        }

        // verificando se o formulario possui atributos ou permite rascunho
        if (($objFormulario->formAttribs) or ($objFormulario->permiteRascunho)){
        	if ($objFormulario->formAttribs) {
	        	// montando php para adicao de atributos
	        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]                           = FORM_GERADOR_FORM_ADDATTRIBS . "(array({$objFormulario->formAttribs}));" . QUEBRA_DE_LINHA;
	        	
	        	// carregando chamadas ao tradutor para textos de caixas de dialogo de validacao
	        	$tituloDialogValidacao = "{" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('" . FORM_VALIDATION_TITLE . "')}";
	        	$labelDialogValidacao = "{" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('" . FORM_VALIDATION_MESSAGE . "')}";
	        	
	        	// substituicao de tags para caixa de dialogo de validacao
	        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]						     = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_FORMNAME_TAG, $objFormulario->formName, $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]);
	        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]                           = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_TITLE_TAG, $tituloDialogValidacao, $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]);
	        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]                           = str_replace(FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_MESSAGE_TAG, $labelDialogValidacao, $arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS]);
        	}

        	// verificando se o formulario permite rascunho
        	if ($objFormulario->permiteRascunho) {
        		if (array_key_exists(FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS, $arrayReturn)) {
	        		// adicionando linha de adicao de atributo de permissao de rascunho
	        		$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS] .= '@identacao' . FORM_GERADOR_FORM_ADDATTRIBS . "(array('rascunho' => true));" . QUEBRA_DE_LINHA;
        		} else {
	        		// adicionando linha de adicao de atributo de permissao de rascunho
	        		$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS] = FORM_GERADOR_FORM_ADDATTRIBS . "(array('rascunho' => true));" . QUEBRA_DE_LINHA;
        		} 
        	}
        }

        // recuperando decorators do formulario
        $objDecorator = $objFormulario->getDecoratorObject();

        // verificando se o objeto foi carregado
        if ($objDecorator) {
        	// carregando decorator
        	$arrayReturn[FORM_GERADOR_ARRAY_INIT_FORM_DECORATOR]                         = FORM_GERADOR_FORM_SETDECORATORS . "(array({$objDecorator->decorator}));" . QUEBRA_DE_LINHA;
        } 

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
    private static function retornaInstanciamentoClasseFormulario($nivelIdentacaoInicial, $formBeginTag, $moduleName, $headerFormulario, $formClassInstance, $formCodeBlockBeginTag)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	// carregando retorno
		$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacaoInicial);
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
    private static function retornaInstanciamentoSubFormulario($nivelIdentacaoInicial, $subFormBeginTag, $moduleName, $headerSubFormulario, $subFormClassInstance)
    {
    	// inicializando variaveis
    	$tempReturn = '';

    	// carregando retorno
		$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacaoInicial);
		$tempReturn .= $identacao . $subFormBeginTag;
		$tempReturn .= $identacao . str_replace('@modulo', $moduleName, $headerSubFormulario);
		$identacao = Basico_OPController_UtilOPController::retornaIdentacao(++$nivelIdentacaoInicial);
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
    private static function retornaChamadaDeInicializacaoFormulario($nivelIdentacaoInicial, &$moduloObject, &$objFormulario, $headerConstructorForm, $formConstructorCall, $formCodeBlockBeginTag)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	// carregando retorno
    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacaoInicial);
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
    private static function retornaInicializacaoFormulario($nivelIdentacaoInicial, $formConstructorComment, $formConstructorInherits, $formName, $formMethod, $formAction, $formAttribs, $formDecorator)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacaoInicial);
    	$tempReturn .= $formConstructorComment;
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

    	// trocando tags de identacao
    	$tempReturn = str_replace('@identacao', $identacao, $tempReturn);

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
     * @param Integer $subFormOrdem
     * 
     * @return String
     */
    private static function retornaInicializacaoSubFormulario($nivelIdentacaoInicial, $subFormInitComment, $subFormName, $subFormMethod, $subFormAction, $subFormAttribs, $subFormDecorator, $subFormVariableInstance, $subFormOrdem)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacaoInicial);
    	$tempReturn .= QUEBRA_DE_LINHA;
    	$tempReturn .= str_replace('@identacao', $identacao, $subFormInitComment);
    	$tempReturn .= $identacao . $subFormName;
    	// verificando/adicionando atributos do sub-form
    	if ($subFormMethod)
    		$tempReturn .= $identacao . $subFormMethod;
    	if ($subFormAction)
    		$tempReturn .= $identacao . $subFormAction;
    	if ($subFormAttribs)
    		$tempReturn .= $identacao . $subFormAttribs;
    	if ($subFormDecorator)
    		$tempReturn .= $identacao . $subFormDecorator;
		if ($subFormOrdem)
			$tempReturn .= $identacao . $subFormOrdem;
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
	private static function retornaAddPrefixPathElementosNaoZFFormulario($nivelIdentacaoInicial, $idFormulario, $addPrefixComment)
	{
		// inicializando variaveis
		$tempReturn = '';
		$arrayPrefixPaths = array();
		$nivelIdentacao = $nivelIdentacaoInicial;

		$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
		
		// recuperando array de prefixos e paths de componentes nao ZF
		$arrayNomesCategoriasComponentesNaoZFFormulario = Basico_OPController_CategoriaOPController::retornaArrayNomesCategoriasComponentesNaoZFPorIdFormularioViaSQL($idFormulario);
		
		// verificando o resultado da recuperacao do array
		if ((isset($arrayNomesCategoriasComponentesNaoZFFormulario)) and (count($arrayNomesCategoriasComponentesNaoZFFormulario > 0)))
			// recuperando array
			$arrayPrefixPaths = Basico_OPController_ComponenteOPController::retornaArrayPrefixPathComponentesNaoZF($arrayNomesCategoriasComponentesNaoZFFormulario);

		// verificando o resultado da recuperacao do array de prefixos e paths
		if (count($arrayPrefixPaths) <= 0)
			return null;

		// adicionando comentario
		if ($addPrefixComment)
			// montando retorno
			$tempReturn .= str_replace('@identacao', $identacao, $addPrefixComment) . QUEBRA_DE_LINHA;

		// loop para preencher string de retorno
		foreach ($arrayPrefixPaths as $arrayPrefixPath) {
			// montando retorno			
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
    private static function retornaElementosFormulario($nivelIdentacaoInicial, $formElementsComment, $formElementsAddToFormComment, $formArrayElements, $formularioElementosObjects, $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento, $formCodigoCheckAmbienteDesenvolvimento, $objFormulario, $objModulo, $formCodeBlockEndTag, $subFormVariableInstance = null)
    {
    	// inicializando variaveis
    	$tempReturn = '';
		$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
    	$tempReturn .= str_replace('@identacao', $identacao, $formElementsComment);
    	$tempReturn .= $identacao . $formArrayElements . QUEBRA_DE_LINHA;

    	$contador = 0;
    	$formElement = FORM_GERADOR_ELEMENTS . '[@contador]';
        $elementoAmbienteDesenvolvimento = false;
        $totalFormularioElementoFormulariosVinculados = 0;

        // recuperando ordem dos elementos
        $arrayOrdemElementos = Basico_OPController_FormularioFormularioElementoOPController::retornaArrayOrdemPorIdFormularioViaSQL($objFormulario->id);

        // recuperando mascaras do formulario
        $scriptMascarasFormulario = Basico_OPController_UtilOPController::retornaScriptAplicacaoMascarasPorNomeModuloNomeFormulario($objModulo->nome, $objFormulario->nome);

        // verificando se o formulario possui mascaras
        if ($scriptMascarasFormulario) {
        	// carregando tags javascript
        	$scriptMascarasFormulario = Basico_OPController_UtilOPController::retornaJavaScriptEntreTagsScriptHtml(Basico_OPController_UtilOPController::escapaAspasDuplasPHP(Basico_OPController_UtilOPController::escapaDolarPHP($scriptMascarasFormulario)));

        	// adicionando elemento html, com conteudo dinamico, para insercao por ULTIMO no formulario
        	$formularioElementosObjects[] = Basico_OPController_FormularioElementoOPController::getInstance()->retornaElementoJavaScript();

        	// adicionando mais um elemento no array de ordem de elementos
        	$arrayOrdemElementos[] = count($arrayOrdemElementos) + 1;
        }

        // loop para todos os elementos do formulario
        foreach ($formularioElementosObjects as $formularioElementoObject){
			// verificando se o unico elemento disponivel eh o hash
			if ((count($formularioElementosObjects) === 1) and ($formularioElementoObject->nome === FORM_ELEMENT_HASH)) {
				// setando a ordem para um unico elemento
				$arrayOrdemElementos = array();
				$arrayOrdemElementos[0] = 0;
			}

			// setando a ordem do elemento
        	$formElementLoop = str_replace('@contador', $arrayOrdemElementos[$contador], $formElement);

        	// recuperando o nome da categoria do formularioElemento
        	$nomeCategoriaFormularioElemento = $formularioElementoObject->getCategoriaObject()->nome;

        	// verificando se o é preciso determinar ambiente de desenvolvimento
        	if (false !== array_search($nomeCategoriaFormularioElemento, $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento)){
        		// setando verificacao de ambiente de desenvolvimento
				$elementoAmbienteDesenvolvimento = true;
				$tempReturn .= $identacao . $formCodigoCheckAmbienteDesenvolvimento;
                $identacao = Basico_OPController_UtilOPController::retornaIdentacao(++$nivelIdentacao);
            } else {
            	// marcando que nao precisa verificar ambiente de desenvolvimento
            	$elementoAmbienteDesenvolvimento = false;
            }

            // verifica se elemento é da categoria FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO
            if ($nomeCategoriaFormularioElemento === FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO) {
            	// localiza formulario vinculado
            	$formularioElementoFormularioVinculado = $formularioElementoObject->getFormularioElementoFormularioVinculadoObject($objFormulario, $totalFormularioElementoFormulariosVinculados);
            	$formularioElementoConstanteTextualTitulo = $formularioElementoObject->getFormularioElementoConstanteTextualTitulo($objFormulario, $totalFormularioElementoFormulariosVinculados);

            	// recuperando variaveis que serao utilizadas para instanciar o formulario vinculado
            	$nomeClasseSubForm = self::retornaNomeClasseForm($objModulo, $formularioElementoFormularioVinculado);

            	// incrementa variavel de offset
            	$totalFormularioElementoFormulariosVinculados++;
            } else {
            	// removendo variaveis, se setadas           	
            	if (isset($nomeClasseSubForm)) {
            		unset($nomeClasseSubForm);
            	}

            	if (isset($formularioElementoConstanteTextualTitulo)) {
            		unset($formularioElementoConstanteTextualTitulo);
            	}
            }

            // faz substituicao de tags caso o elemento seja do tipo FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO
            if (isset($formularioElementoConstanteTextualTitulo)){
            	// substituindo tags
            	$tempFormElement = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_FORM_NAME, FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoConstanteTextualTitulo}')", $formularioElementoObject->element);
            	$tempFormElement = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_OFFSET, $totalFormularioElementoFormulariosVinculados, $tempFormElement);
            } else {
            	// carregando elemento
            	$tempFormElement = $formularioElementoObject->element;

            	// fazendo substituicoes
            	$tempFormElement = str_replace(FORM_GERADOR_FORM_ELEMENT_FORM_NAME, self::retornaNomeClasseForm($objModulo, $objFormulario), $tempFormElement);
            	$tempFormElement = str_replace(FORM_GERADOR_ARRAY_INIT_FORM_ACTION_BASE_URL, Basico_OPController_UtilOPController::retornaBaseUrl(), $tempFormElement);
            }

			// recuperando string para concatenacao do nome do modulo e formulario
			$stringToReplace = substr($tempFormElement, 1, strpos($tempFormElement, "'", 1)-1);

			// recuperando o elementName de formularioFormularioElemento
			$elementNameFormularioFormularioElemento = Basico_OPController_FormularioFormularioElementoOPController::retornaElementNamePorIdFormularioIdFormularioElementoOrdemViaSQL($objFormulario->id, $formularioElementoObject->id, $arrayOrdemElementos[$contador]);

        	// verificando a recuperacao do elementName do formularioFormularioElemento
			if ($elementNameFormularioFormularioElemento) {
				// montando string concatenada para substituicao
				$stringConcatenadaSubstituicao = ucfirst(strtolower($objModulo->nome)) . $objFormulario->formName . ucfirst($elementNameFormularioFormularioElemento);
			} else {
				// montando string concatenada para substituicao
				$stringConcatenadaSubstituicao = ucfirst(strtolower($objModulo->nome)) . $objFormulario->formName . ucfirst($stringToReplace);
			}

			// substituindo string
			$tempFormElement = str_replace($stringToReplace, $stringConcatenadaSubstituicao, $tempFormElement);

			// recuperando componente
			$objComponenteFormularioElemento = $formularioElementoObject->getComponenteObject();

			// criando elemento
			$tempReturn .= $identacao . $formElementLoop . " = " . FORM_GERADOR_FORM_ELEMENT_CREATEELEMENT . "({$objComponenteFormularioElemento->componente}, {$tempFormElement});" . QUEBRA_DE_LINHA;

			// setando a ordem do elemento
			$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETORDER . "($arrayOrdemElementos[$contador]);" . QUEBRA_DE_LINHA;

			// setando atributos do elemento
			if ($formularioElementoObject->elementAttribs){
				// faz substituicao de tags caso o elemento seja do tipo FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO
				if (isset($nomeClasseSubForm)) {

					// descobrindo o tipo de formulario (form ou sub-form)
					if ($formularioElementoFormularioVinculado->getCategoriaObject()->getRootCategoriaPaiObject() === 'FORMULARIO_SUB_FORMULARIO') {
						$publicFormsSubPath = '/subforms/';
					} else {
						$publicFormsSubPath = '/forms/';
					}

					// substituindo tags
					$tempFormAttribs = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_FORM_URL, Basico_OPController_UtilOPController::retornaBaseUrl() . '/public_forms/' . strtolower($objModulo->nome) . $publicFormsSubPath . $formularioElementoFormularioVinculado->formName . '." . ' . "Basico_OPController_PessoaOPController::retornaLinguaUsuario() . " . '".html', $formularioElementoObject->elementAttribs);
					$tempFormAttribs = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_FORM_NAME, $nomeClasseSubForm, $tempFormAttribs);
					$tempFormAttribs = str_replace(FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_TITLE_DIALOG, FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoConstanteTextualTitulo}')", $tempFormAttribs);
				} else {
					// setando atribs
					$tempFormAttribs = $formularioElementoObject->elementAttribs;
				}

				// setando atributos do elemento
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETATTRIBS . "(array({$tempFormAttribs}));" . QUEBRA_DE_LINHA;
			}

			// descobrindo se o campo é requerido
			if (Basico_OPController_FormularioFormularioElementoOPController::retornaElementRequiredPorIdFormularioIdFormularioElementoViaSQL($objFormulario->id, $formularioElementoObject->id)) {
				// setando campo como requerido
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_TRUE . ";" . QUEBRA_DE_LINHA;
            	
            	// setando variavel de label de campo requerido
            	$labelCampoRequerido = FORM_GERADOR_FORM_ELEMENT_LABEL_REQUIRED;
            } else {
            	// setando o campo como nao requerido
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_FALSE . ";" . QUEBRA_DE_LINHA;
            	
            	// limpando variavel de label de campo requerido
            	$labelCampoRequerido = '';
            }

            // recuperando filtros
            $objFormElementFilter = $formularioElementoObject->getFormularioElementoFilterObject();

			// adicionando filtros
            if ($objFormElementFilter)
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDFILTERS . "(array({$objFormElementFilter->filter}));" . QUEBRA_DE_LINHA;

            // recuperando validators
            $arrayFormularioElementoFormularioElementoValidatorObjects = $formularioElementoObject->getFormularioElementoFormularioElementoValidatorObjects();

            // verificando o resultado da recuperacao
            if (count($arrayFormularioElementoFormularioElementoValidatorObjects) > 0) {
	            // loop para adicao dos validators
	            foreach ($arrayFormularioElementoFormularioElementoValidatorObjects as $formularioElementoFormularioElementoValidatorObject) {
	            	// recuperando options do validator
	            	$validatorOptions = $formularioElementoFormularioElementoValidatorObject->validatorOptions;
	            	// verificando se foi recuperado os options do validator
	            	if ($validatorOptions) {
	            		// montando parametro
	            		$parametroOptionsValidator = ", {$validatorOptions}";
	            	} else {
	            		// inicializando variaveis vazia
	            		$parametroOptionsValidator = "";
	            	}
	
	            	// recuperando validator
	            	$formularioElementoValidator = $formularioElementoFormularioElementoValidatorObject->getFormularioElementoValidatorObject();
	
	            	// vinculado o validator com o elemento do formulario
	            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDVALIDATOR . "({$formularioElementoValidator->validator}{$parametroOptionsValidator});" . QUEBRA_DE_LINHA;
            	}
            }

            // recuperando decoratos
            $objFormDecorator = $formularioElementoObject->getDecoratorObject();

			// adiciona o decorator para os elementos que possuem decorator
			if ($objFormDecorator)
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$objFormDecorator->decorator});" . QUEBRA_DE_LINHA;

			// recuperando decorator de formularioFormularioElemento
			$objDecoratorFormularioFormularioElemento = Basico_OPController_FormularioFormularioElementoOPController::getInstance()->retornaDecoratorObjectPorIdFormularioIdFormularioElementoOrdem($objFormulario->id, $formularioElementoObject->id, $arrayOrdemElementos[$contador]);

			// verificando o resultado da recuperacao do decorator
			if (isset($objDecoratorFormularioFormularioElemento))
				// setando decorator para o elemento a partir de formularioFormularioElemento
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$objDecoratorFormularioFormularioElemento->decorator});" . QUEBRA_DE_LINHA;

			// verificando se o elemento é da categoria FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO ou o elemento eh da categoria FORMULARIO_ELEMENTO_BUTTON
            if (($nomeCategoriaFormularioElemento === FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO) or ($nomeCategoriaFormularioElemento === FORMULARIO_ELEMENTO_BUTTON) or ($nomeCategoriaFormularioElemento === FORMULARIO_ELEMENTO_HTML)) {
            	// removendo decorator DtDdWrapper
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_REMOVEDECORATOR . "('DtDdWrapper');" . QUEBRA_DE_LINHA;
            } else if ($nomeCategoriaFormularioElemento === FORMULARIO_ELEMENTO_HASH) { // verificanso se o elemento eh da categoria FORMULARIO_ELEMENTO_HASH
            	// removendo decorator label
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_REMOVEDECORATOR . "('Label');" . QUEBRA_DE_LINHA;
            }

        	// adicionando elementos label e ajuda
            if ($formularioElementoObject->constanteTextualLabel){

            	// recuperando a ajuda do element
            	$objAjudaFormularioElemento = $formularioElementoObject->getAjudaObject();

				// adicionando o link de ajuda
                if ($objAjudaFormularioElemento){
					if ($objAjudaFormularioElemento->url){
						$href = Basico_OPController_UtilOPController::retornaStringEntreCaracter($objAjudaFormularioElemento->url, ASPAS_SIMPLES_ESCAPADA_HTML);
                        $target = Basico_OPController_UtilOPController::retornaStringEntreCaracter('_blank', ASPAS_SIMPLES_ESCAPADA_HTML);
                        $urlAjuda = ' . "<br><br>URL: <a href=' . $href . ' target=' . $target . '>' . $objAjudaFormularioElemento->url . '</a>"';
                    } else {
                        $urlAjuda = '';
                    }

                    $constanteTextoAjuda = Basico_OPController_UtilOPController::retornaStringEntreCaracter($objAjudaFormularioElemento->constanteTextualAjuda, "'");
                    $chamadaJavaScriptDialog = Basico_OPController_UtilOPController::retornaJavaScriptDialog($objFormulario->formName, '$this->getView()->tradutor(\'' . DIALOG_HELP_TITLE . '\')', 'Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP($this->getView()->tradutor(' . $constanteTextoAjuda . '))' . $urlAjuda);
                    $linkAjuda = "&nbsp;" . FORM_GERADOR_AJUDA_BUTTON_BEGIN_TAG . AJUDA_BUTTON_LABEL . FORM_GERADOR_AJUDA_BUTTON_SCRIPT_BEGIN_TAG . $chamadaJavaScriptDialog . FORM_GERADOR_AJUDA_BUTTON_SCRIPT_END_TAG . FORM_GERADOR_AJUDA_BUTTON_END_TAG;
                } else
                	$linkAjuda = '';

                $linkAjuda = Basico_OPController_UtilOPController::retornaStringEntreCaracter($linkAjuda, "'");
                $tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETLABEL . "(" . Basico_OPController_UtilOPController::retornaStringEntreCaracter($labelCampoRequerido, "'") . " . " . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->constanteTextualLabel}') . {$linkAjuda});" . QUEBRA_DE_LINHA;
			} else {
				// limpando o objeto ajuda
            	unset($objAjudaFormularioElemento);
			}

			// verificando se o formulario elemento possui ajuda e se ele possui hint para setar no elemento
			if ((isset($objAjudaFormularioElemento)) and ($objAjudaFormularioElemento->constanteTextualHint))
				$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETINVALIDMESSAGE . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$objAjudaFormularioElemento->constanteTextualHint}'));" . QUEBRA_DE_LINHA;

        	// verificando se o elemento pode ser carregando com dados
            if ($formularioElementoObject->elementReloadable){
            	// recuperando o nome do elemento
            	$elementName = $stringConcatenadaSubstituicao;

            	$tempReturn .= $identacao . FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE . "(isset(" . FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE . "'{$elementName}'])))" . QUEBRA_DE_LINHA;

            	$nivelIdentacao++;
            	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETVALUE . "(" . FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE . "'{$elementName}']);" . QUEBRA_DE_LINHA;
				$nivelIdentacao--;
				$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
			}

        	// verificando se o é preciso determinar ambiente de desenvolvimento
            if ($elementoAmbienteDesenvolvimento){
				$nivelIdentacao--;
				$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
				$tempReturn .= $identacao . $formCodeBlockEndTag;
			}

            // verificando se existem mascaras para o formulario, se trata-se da ULTIMA volta e se trata-se do elemento FORM_FIELD_HTML_CONTENT_DINAMICO, para insercao de script de mascaras
            if (($formularioElementoObject->nome === FORM_ELEMENT_HTML_JAVASCRIPT_CONTENT) and ($scriptMascarasFormulario) and ($contador + 1 > count($arrayOrdemElementos)-1)) {
            	// setando valor no elemento html
            	$tempReturn .= $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETVALUE . "(\"{$scriptMascarasFormulario}\");" . QUEBRA_DE_LINHA;
            }

			// adicionando quebra de linha
			$tempReturn .= QUEBRA_DE_LINHA;

			// incrementando contador
            $contador++;
        }

       	// adicionando comentario sobre a remocao de escapes nas mensagens de erro dos elementos do zend form
       	$tempReturn .= $identacao . FORM_GERADOR_REMOVE_ZEND_FORM_ELEMENTS_ERROR_MESSAGES_ESCAPE . QUEBRA_DE_LINHA;
       	// adicionando metodo para remocao do escape nas mensagens de erro dos elementos zend form
       	$tempReturn .= $identacao . "Basico_OPController_UtilOPController::removeEscapeMensagensErrosZendFormElements(" . FORM_GERADOR_ELEMENTS . ");" . QUEBRA_DE_LINHA . QUEBRA_DE_LINHA;

		// adicionando comentarios sobre adicao de elementos
        $tempReturn .= $identacao . $formElementsAddToFormComment;

        // verificando se foi passado a instancia do subformulario
        if (!$subFormVariableInstance) {
        	// adicionando elementos no formulario
        	$tempReturn .= $identacao . FORM_GERADOR_FORM_ADDELEMENTS . "(" . FORM_GERADOR_ELEMENTS . ");" . QUEBRA_DE_LINHA;
        } else {
        	// adicionando elementos no formulario
        	$tempReturn .= $identacao . FORM_GERADOR_FORM_SUB_FORM_ADDELEMENTS . "(" . FORM_GERADOR_ELEMENTS . ");" . QUEBRA_DE_LINHA;
        	// adicionando subformularios
        	$tempReturn =  str_replace(FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE, $subFormVariableInstance, $tempReturn);
        	$tempReturn .=  $identacao . FORM_GERADOR_ADD_SUB_FORM_TO_FORM_COMMENT . QUEBRA_DE_LINHA;
        }

        // recuperando displays groups do formulario
        $stringAddDisplayGroup = self::retornaDisplaysGroupsFormulario($nivelIdentacao, $objFormulario, $subFormVariableInstance);

        // verificando se existem displays groups
        if ($stringAddDisplayGroup)
        	$tempReturn .= $stringAddDisplayGroup . QUEBRA_DE_LINHA;

        // retornando elementos do formulario
		return $tempReturn;
    }

    /**
     * Retorna string contendo a adicao do sub-formulario ao formulario pai
     * 
     * @param Integer $nivelIdentacao
     * @param String $subFormVariableInstance
     * @param String $subFormName
     * @param String $formPaiVariableInstance
     * 
     * @return String
     */
    private static function retornaAdicaoFormularioSubFormulario($nivelIdentacao, $subFormVariableInstance, $subFormName, $formPaiVariableInstance = FORM_GERADOR_THIS_INSTANCE)
    {
    	// inicializando variaveis
    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);

    	// retornando adicao do sub-formulario ao formulario
    	return $identacao . $formPaiVariableInstance . FORM_GERADOR_FORM_SUB_FORM_ADDSUBFORM . "({$subFormVariableInstance}, '{$subFormName}');" . QUEBRA_DE_LINHA;
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
    private static function retornaIncludeSubForm($nivelIdentacaoInicial, $objSubFormulario, $metodo = INCLUDE_REQUIRE)
    {
    	// inicializando variaveis
    	$tempReturn = '';
    	
    	$nivelIdentacao = $nivelIdentacaoInicial;
    	
    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
    	
    	// recuperando o nome do arquivo
    	$nomeDoArquivo = self::retornaNomeArquivoForm($objSubFormulario);
    	
    	$tempReturn .= $identacao . FORM_GERADOR_INCLUDE_SUB_FORM_TO_FORM_COMMENT . QUEBRA_DE_LINHA;
    	
    	// verificando se o pai do formulario eh da categoria FORMULARIO_SUB_FORMULARIO
    	if ($objSubFormulario->getFormularioPaiObject()->getCategoriaObject()->getRootCategoriaPaiObject()->nome === FORMULARIO_SUB_FORMULARIO)
    		// incluindo sub formulario filho de sub formulario
			$tempReturn .= "{$identacao}{$metodo}(\"{$nomeDoArquivo}\");" . QUEBRA_DE_LINHA;
    	else
    		// incluindo sub formulario filho de formulario
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
    private static function retornaFimDeBloco($nivelIdentacaoInicial, $formCodeBlockEndTag)
    {
    	// inicializacao das variaveis
    	$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);

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
    private static function retornaFimDeScript($nivelIdentacaoInicial, $formEndTag)
    {
    	// inicializacao das variaveis
    	$nivelIdentacao = $nivelIdentacaoInicial;

    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);
    	
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
    private static function escreveObjetoFormularioDOJOHTMLTodasLinguasAtivas(Basico_Model_Formulario $objetoFormularioDOJO, $moduleName)
    {
    	// inicializando variaveis
    	$tempReturn = true;

		// recuperando objetos Basico_Model_Categoria das linguas ativas no sistema
		$objsCategoriasLinguasAtivas = Basico_OPController_TradutorOPController::getInstance()->retornaCategoriasLinguasAtivas();

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
    private static function escreveObjetoFormularioDOJOHTMLLingua(Basico_Model_Formulario $objetoFormularioDOJO, $moduleName, $objCategoriaLingua)
    {
    	// carregar nome do arquivo de saida
    	$caminhoPastaPublicForms    = PUBLIC_PATH_PUBLIC_FORMS . '/' . strtolower($moduleName) . '/forms';
    	$caminhoPastaPublicSubForms = $caminhoPastaPublicForms . '/subforms';

		// verificando se o caminho existe
		if (!file_exists($caminhoPastaPublicForms) | !file_exists($caminhoPastaPublicSubForms)) {
			throw new Exception(MSG_ERRO_PATH_INEXISTENTE);
		}

		// recuperando dados do objeto formulario
		$nomeClasseFormulario  = self::retornaNomeClasseForm(Basico_OPController_ModuloOPController::getInstance()->retornaObjetoModuloPorNome($moduleName), $objetoFormularioDOJO);
		$nomeArquivoFormulario = self::retornaNomeArquivoForm($objetoFormularioDOJO);

		// modificando o nome do arquivo
		$fullFileName = Basico_OPController_UtilOPController::retornaNomeArquivoConcatenadoLingua($caminhoPastaPublicForms . '/' . $nomeArquivoFormulario, $objCategoriaLingua, '.html');

		// recuperando informacoes sobre a lingua atual do usuario
		$linguaUsuario = DEFAULT_SYSTEM_LANGUAGE;
		
		// setando a lingua do sistema para a lingua de geracao do formulario
		Basico_OPController_PessoaOPController::setaLinguaUsuario($objCategoriaLingua->nome);

		// instanciando o formulario
		$form = new $nomeClasseFormulario();
		
		// recuperando subformularios
		$subForms = $form->getSubForms();

		// transformando o form em string
		$form = Basico_OPController_UtilOPController::retornaValorTipado($form, TIPO_STRING);

		// escrevendo o conteudo do form no arquivo .html
		Basico_OPController_UtilOPController::escreveConteudoArquivo($fullFileName, $form);

		// loop para escrever os subforms
		foreach ($subForms as $subform)	{
			// recuperando o nome do arquivo do subform
			$fullFileName = Basico_OPController_UtilOPController::retornaNomeArquivoConcatenadoLingua($caminhoPastaPublicSubForms . '/' . $subform->getName(), $objCategoriaLingua, '.html');
			
			// transformando o form em string
			$subform = Basico_OPController_UtilOPController::retornaValorTipado($subform, TIPO_STRING);
			
			// escrevendo o conteudo do sub-form no arquivo .html
			Basico_OPController_UtilOPController::escreveConteudoArquivo($fullFileName, $subform);
		}

		// setando a lingua do sistema para a lingua do usuario
		Basico_OPController_PessoaOPController::setaLinguaUsuario($linguaUsuario);

		return true;
    }

    /**
     * Retorna uma string contendo as linhas que devem ser adicionadas ao formulario para incluir display group
     * 
     * @param Integer $nivelIdentacaoInicial
     * @param Basico_Model_Formulario $objFormulario
     * @param String $subFormVariableInstance
     * 
     * @return String
     */
    private static function retornaDisplaysGroupsFormulario($nivelIdentacaoInicial, Basico_Model_Formulario $objFormulario, $subFormVariableInstance)
    {
    	// inicializacao das variaveis
    	$nivelIdentacao = $nivelIdentacaoInicial;
    	$arrayDisplaysGroups = array();
    	$arrayDecoratorsDisplayGroups = array();
    	$tempReturn = '';

    	$identacao = Basico_OPController_UtilOPController::retornaIdentacao($nivelIdentacao);

    	// recuperando elementos que possuem display group
    	$arrayObjsFormularioFormularioElemento = Basico_OPController_FormularioFormularioElementoOPController::getInstance()->retornaObjetosFormularioFormularioElementoGrupoFormularioElemento($objFormulario);

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
		$objGrupoFormularioElemento = Basico_OPController_GrupoFormularioElementoOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_GrupoFormularioElementoOPController');

		// loop para escrever os display groups
		foreach ($arrayDisplaysGroups as $idDisplayGroup => $arrayOrdemElementosDisplayGroup) {
			// inicializando array para preenchimento de elementos do grupo
			$arrayElementosDisplayGroup = array();
			
			// carregando objeto GrupoFormularioElemento
			$objGrupoFormularioElemento = Basico_OPController_PersistenceOPController::bdObjectFind($objGrupoFormularioElemento, $idDisplayGroup);

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
			if (!$subFormVariableInstance) {
				$tempReturn .= $identacao . FORM_GERADOR_FORM_ADDDISPLAYGROUP . "(array({$stringElementos}), '{$nomeDisplayGroup}', array('legend' => " . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$objGrupoFormularioElemento->constanteTextualLabel}'), 'order' => {$arrayOrdemElementosDisplayGroup[0]}));" . QUEBRA_DE_LINHA;
				$tempReturn .= $identacao . "\${$nomeDisplayGroup} = " . FORM_GERADOR_FORM_GETDISPLAYGROUP . "('{$nomeDisplayGroup}');" . QUEBRA_DE_LINHA;
			}
			else {
				$tempReturn .= $identacao . FORM_GERADOR_FORM_SUB_FORM_ADDDISPLAYGROUP . "(array({$stringElementos}), '{$nomeDisplayGroup}', array('legend' => " . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$objGrupoFormularioElemento->constanteTextualLabel}'), 'order' => {$arrayOrdemElementosDisplayGroup[0]}));" . QUEBRA_DE_LINHA;
				$tempReturn .= $identacao . "\${$nomeDisplayGroup} = " . FORM_GERADOR_FORM_SUB_FORM_GETDISPLAYGROUP . "('{$nomeDisplayGroup}');" . QUEBRA_DE_LINHA;
				$tempReturn = str_replace(FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE, $subFormVariableInstance, $tempReturn);
			}
			$tempReturn .= $identacao . "\${$nomeDisplayGroup}" . FORM_GERADOR_FORM_ELEMENT_REMOVEDECORATOR . "('DtDdWrapper');" . QUEBRA_DE_LINHA;
			// verificando se existe decorator setado para o displaygroup
			if (($arrayDecoratorsDisplayGroups[$arrayOrdemElementosDisplayGroup[0]]) and ($arrayDecoratorsDisplayGroups[$arrayOrdemElementosDisplayGroup[0]]->decorator))
				$tempReturn .= $identacao . "\${$nomeDisplayGroup}" . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$arrayDecoratorsDisplayGroups[$arrayOrdemElementosDisplayGroup[0]]->decorator});" . QUEBRA_DE_LINHA;
		}
		
		return QUEBRA_DE_LINHA . $tempReturn;
    }
}