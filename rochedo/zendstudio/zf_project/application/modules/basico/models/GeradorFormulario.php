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
    public function gerarHTML(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_ZEND_FORM, array $excludeModulesNames = null)
    {
    	return true;
    }
    
    /**
     * Gera Formulário DOJO.
     * @param $objFormulario
     * @param $classToExtends
     * @param $excludeModulesNames
     */
    public function gerarDOJO(Basico_Model_Formulario $objFormulario, $classToExtends = FORM_CLASS_EXTENDS_DOJO_FORM, array $excludeModulesNames = null)
    {
        $filenameExtensionRecovery              = '.lkg';
        $headerFormulario                       = str_replace('@data_criacao', date('d/m/Y H:i:s'), FORM_GERADOR_HEADER) . QUEBRA_DE_LINHA;
        $formBeginTag                           = FORM_BEGIN_TAG . QUEBRA_DE_LINHA;
        $formClassExtendsTag                    = FORM_GERADOR_CLASS_EXTENDS_ELEMENT;
        $formClassExtendsClass                  = $classToExtends;        
        $formCodeBlockBeginTag                  = '{' . QUEBRA_DE_LINHA;      
        $formCodeBlockEndTag                    = '}' . QUEBRA_DE_LINHA;
        $headerConstructorForm                  = FORM_GERADOR_CONSTRUCTOR_HEADER . QUEBRA_DE_LINHA;
        $formConstructorCall                    = FORM_GERADOR_CONSTRUCTOR_CALL . QUEBRA_DE_LINHA;
        $formConstructorInherits                = FORM_GERADOR_CONSTRUCTOR_INHERITS . QUEBRA_DE_LINHA;
        $formConstructorComment                 = FORM_GERADOR_CONSTRUCTOR_COMMENT . QUEBRA_DE_LINHA;
        $formName                               = FORM_GERADOR_FORM_SETNAME . "('{$objFormulario->formName}');" . QUEBRA_DE_LINHA;
        $formMethod                             = FORM_GERADOR_FORM_SETMETHOD . "('{$objFormulario->formMethod}');" . QUEBRA_DE_LINHA;
        $formAction                             = FORM_GERADOR_FORM_SETACTION . "('{$objFormulario->formAction}');" . QUEBRA_DE_LINHA;
        $formAttribs                            = FORM_GERADOR_FORM_ADDATTRIBS . "(array({$objFormulario->formAttribs}));" . QUEBRA_DE_LINHA;

        if ($objFormulario->getDecoratorObject()->id)
            $formDecorator                      = FORM_GERADOR_FORM_SETDECORATORS . "(array({$objFormulario->getDecoratorObject()->decorator}));" . QUEBRA_DE_LINHA; 

        $formElementsComment                    = FORM_GERADOR_ADD_ELEMENTS_COMMENT . QUEBRA_DE_LINHA;
        $formArrayElements                      = FORM_GERADOR_ELEMENTS . ' = array();' . QUEBRA_DE_LINHA;
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
            $formClassInstances[$moduloObject->nome] = 'class ' . self::retornaNomeClasseForm($moduloObject, $objFormulario) . " {$formClassExtendsTag} {$formClassExtendsClass}" . QUEBRA_DE_LINHA;
        }

        try {
            $arrayArquivosModificados = array();

            $podeContinuar = true;

            $nivelIdentacao = 0;
            $identacao = '';

            foreach ($modulesPath as $moduleName => $modulePath) {
                $fullFileName = $modulePath . $nomeArquivoSaida;

                //Criando ponto de restauração do arquivo de formulário, caso exista.
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
                $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                fputs($fileResource, $identacao . $formBeginTag);
                fputs($fileResource, $identacao . str_replace('@modulo', $moduleName, $headerFormulario));
                fputs($fileResource, $identacao . $formClassInstances[$moduleName]);
                fputs($fileResource, $identacao . $formCodeBlockBeginTag);

                // nivel 1 de identação
                $nivelIdentacao++;
                $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                fputs($fileResource, str_replace('@identacao', $identacao, str_replace('@nome_classe', self::retornaNomeClasseForm($moduloObject, $objFormulario), $headerConstructorForm)));
                fputs($fileResource, $identacao . $formConstructorCall);
                fputs($fileResource, $identacao . $formCodeBlockBeginTag);

                // nivel 2 de identação
                $nivelIdentacao++;
                $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                fputs($fileResource, str_replace('@identacao', $identacao, $formConstructorComment));
                fputs($fileResource, $identacao . $formConstructorInherits);
                fputs($fileResource, QUEBRA_DE_LINHA);
                fputs($fileResource, $identacao . $formName);
                fputs($fileResource, $identacao . $formMethod);
                fputs($fileResource, $identacao . $formAction);
                fputs($fileResource, $identacao . $formAttribs);
                fputs($fileResource, $identacao . $formDecorator);
                fputs($fileResource, QUEBRA_DE_LINHA);           

                // adição dos elementos do formulário
                fputs($fileResource, str_replace('@identacao', $identacao, $formElementsComment) . QUEBRA_DE_LINHA);
                fputs($fileResource, $identacao . $formArrayElements . QUEBRA_DE_LINHA);

                $formularioElementosObjects = $objFormulario->getFormularioElementosObjects();

                $contador = 0;
                $formElement = FORM_GERADOR_ELEMENTS . '[@contador]';
                $elementoAmbienteDesenvolvimento = false;

                foreach ($formularioElementosObjects as $formularioElementoObject){
                    $formElementLoop = str_replace('@contador', $contador, $formElement);

                    // verificando se o é preciso determinar ambiente de desenvolvimento 
                    if (false !== array_search($formularioElementoObject->getCategoriaObject()->nome, $arrayNomesCategoriasParaChecarAmbienteDesenvolvimento)){
                        $elementoAmbienteDesenvolvimento = true;
                        fputs($fileResource, $identacao . $formCodigoCheckAmbienteDesenvolvimento);

                        $nivelIdentacao++;
                        $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                    }else
                        $elementoAmbienteDesenvolvimento = false;

                    // criando elemento
                    fputs($fileResource, $identacao . $formElementLoop . " = " . FORM_GERADOR_FORM_ELEMENT_CREATEELEMENT . "({$formularioElementoObject->element});" . QUEBRA_DE_LINHA);

                    // setando atributos do elemento
                    if ($formularioElementoObject->elementAttribs)
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETATTRIBS . "(array({$formularioElementoObject->elementAttribs}));" . QUEBRA_DE_LINHA);

                    // descobrindo se o campo é requerido
                    if ($formularioElementoObject->getFormularioFormularioElementoObject()->elementRequired == true)
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_TRUE . ";" . QUEBRA_DE_LINHA);
                    else
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_FALSE . ";" . QUEBRA_DE_LINHA);

                    // adicionando filtros
                    if ($formularioElementoObject->getFormularioElementoFilterObject()->id)
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDFILTERS . "(array({$formularioElementoObject->getFormularioElementoFilterObject()->filter}));" . QUEBRA_DE_LINHA);

                    // adicionando validadores
                    $arrayFormularioElementoValidators = $formularioElementoObject->getFormularioElementoValidatorsObjects();

                    foreach($arrayFormularioElementoValidators as $formularioElementoValidator){
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDVALIDATOR . "({$formularioElementoValidator->validator});" . QUEBRA_DE_LINHA);
                    }

                    // adicionando elementos label e ajuda
                    if ($formularioElementoObject->constanteTextualLabel){
                        // adiciona o decorator para os elementos que possuem decorator
                        if ($formularioElementoObject->getDecoratorObject()->id)
                            fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$formularioElementoObject->getDecoratorObject()->decorator});" . QUEBRA_DE_LINHA);

                        // adicionando o link de ajuda
                        if ($formularioElementoObject->getAjudaObject()->id){

                            if ($formularioElementoObject->getAjudaObject()->url){
                                $ref = Basico_Model_Util::retornaStringEntreCaracter($formularioElementoObject->getAjudaObject()->url, "\'");
                                $target = Basico_Model_Util::retornaStringEntreCaracter('_blank', "\'");
                                $urlAjuda = ' . "<br><br>URL: <a href=' . $ref . ' target=' . $target . '>' . $formularioElementoObject->getAjudaObject()->url . '</a>"';
                            }else
                                $urlAjuda = '';

                            $ajudaObject = Basico_Model_Util::retornaStringEntreCaracter($formularioElementoObject->getAjudaObject()->constanteTextualAjuda, "'");
                            $refLink = Basico_Model_Util::retornaStringEntreCaracter(Basico_Model_Util::retornaJavaScriptDialog($objFormulario->formName, '$this->getView()->tradutor(' . DIALOG_HELP_TITLE . ', DEFAULT_USER_LANGUAGE)', '$this->getView()->tradutor(' . $ajudaObject . ', DEFAULT_USER_LANGUAGE)' . $urlAjuda), '"');
                            $linkAjuda = "&nbsp;<a href=" . $refLink . ">(?)</a>";
                        }else
                            $linkAjuda = '';

                        $linkAjuda = Basico_Model_Util::retornaStringEntreCaracter($linkAjuda, "'");
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETLABEL . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->constanteTextualLabel}', DEFAULT_USER_LANGUAGE).{$linkAjuda});" . QUEBRA_DE_LINHA);
                    }

                    if ($formularioElementoObject->getAjudaObject()->id){
                        if ($formularioElementoObject->getAjudaObject()->constanteTextualHint)
                            fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETINVALIDMESSAGE . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->getAjudaObject()->constanteTextualHint}', DEFAULT_USER_LANGUAGE));" . QUEBRA_DE_LINHA);
                    }

                    // verificando se o elemento pode ser carregando com dados
                    if ($formularioElementoObject->elementReloadable){
                        fputs($fileResource, $identacao . FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE . QUEBRA_DE_LINHA);

                        $nivelIdentacao++; 
                        $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETVALUE . "(" . FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE . "{$formularioElementoObject->elementName});" . QUEBRA_DE_LINHA);

                        $nivelIdentacao--;
                        $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                    }

                    // verificando se o é preciso determinar ambiente de desenvolvimento
                    if ($elementoAmbienteDesenvolvimento){
                        $nivelIdentacao--;
                        $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                        fputs($fileResource, $identacao . $formCodeBlockEndTag);
                    }

                    fputs($fileResource, QUEBRA_DE_LINHA);
                    $contador++;
                }

                fputs($fileResource, $identacao . FORM_GERADOR_FORM_ADDELEMENTS . "(" . FORM_GERADOR_ELEMENTS . ");" . QUEBRA_DE_LINHA);

                // nivel 1 de identação
                $nivelIdentacao--;
                $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                fputs($fileResource, $identacao . $formCodeBlockEndTag);

                // nivel 0 de identação
                $nivelIdentacao--;
                $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                fputs($fileResource, $identacao . $formCodeBlockEndTag);
                fputs($fileResource, $identacao . $formEndTag);

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
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . QUEBRA_DE_LINHA . $e);
                }
            }
            throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . QUEBRA_DE_LINHA . $e);
        }

        return $resultado;
    }

}