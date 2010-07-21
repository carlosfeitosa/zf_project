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
        $headerFormulario                       = str_replace('@data_criacao', date('d/m/Y H:i:s'), FORM_GERADOR_HEADER) . PHP_EOL;
        $formBeginTag                           = FORM_BEGIN_TAG . PHP_EOL;
        $formClassExtendsTag                    = 'extends';
        $formClassExtendsClass                  = $classToExtends;        
        $formCodeBlockBeginTag                  = '{' . PHP_EOL;      
        $formCodeBlockEndTag                    = '}' . PHP_EOL;
        $headerConstructorForm                  = FORM_GERADOR_CONSTRUCTOR_HEADER . PHP_EOL;
        $formConstructorCall                    = FORM_GERADOR_CONSTRUCTOR_CALL . PHP_EOL;
        $formConstructorInherits                = FORM_GERADOR_CONSTRUCTOR_INHERITS . PHP_EOL;
        $formConstructorComment                 = FORM_GERADOR_CONSTRUCTOR_COMMENT . PHP_EOL;
        $formName                               = FORM_GERADOR_FORM_SETNAME . "('{$objFormulario->formName}');" . PHP_EOL;
        $formMethod                             = FORM_GERADOR_FORM_SETMETHOD . "('{$objFormulario->formMethod}');" . PHP_EOL;
        $formAction                             = FORM_GERADOR_FORM_SETACTION . "('{$objFormulario->formAction}');" . PHP_EOL;
        $formAttribs                            = FORM_GERADOR_FORM_ADDATTRIBS . "(array({$objFormulario->formAttribs}));" . PHP_EOL;

        if ($objFormulario->getDecoratorObject()->id)
            $formDecorator                      = FORM_GERADOR_FORM_SETDECORATORS . "(array({$objFormulario->getDecoratorObject()->decorator}));" . PHP_EOL; 

        $formElementsComment                    = FORM_GERADOR_ADD_ELEMENTS_COMMENT . PHP_EOL;
        $formArrayElements                      = FORM_GERADOR_ELEMENTS . ' = array();' . PHP_EOL;
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
                fputs($fileResource, PHP_EOL);
                fputs($fileResource, $identacao . $formName);
                fputs($fileResource, $identacao . $formMethod);
                fputs($fileResource, $identacao . $formAction);
                fputs($fileResource, $identacao . $formAttribs);
                fputs($fileResource, $identacao . $formDecorator);
                fputs($fileResource, PHP_EOL);           

                // adição dos elementos do formulário
                fputs($fileResource, str_replace('@identacao', $identacao, $formElementsComment) . PHP_EOL);
                fputs($fileResource, $identacao . $formArrayElements . PHP_EOL);

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
                    fputs($fileResource, $identacao . $formElementLoop . " = " . FORM_GERADOR_FORM_ELEMENT_CREATEELEMENT . "({$formularioElementoObject->element});" . PHP_EOL);

                    // setando atributos do elemento
                    if ($formularioElementoObject->elementAttribs)
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETATTRIBS . "(array({$formularioElementoObject->elementAttribs}));" . PHP_EOL);

                    // descobrindo se o campo é requerido
                    if ($formularioElementoObject->getFormularioFormularioElementoObject()->elementRequired == true)
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_TRUE . ";" . PHP_EOL);
                    else
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_FALSE . ";" . PHP_EOL);

                    // adicionando filtros
                    if ($formularioElementoObject->getFormularioElementoFilterObject()->id)
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDFILTERS . "(array({$formularioElementoObject->getFormularioElementoFilterObject()->filter}));" . PHP_EOL);

                    // adicionando validadores
                    $arrayFormularioElementoValidators = $formularioElementoObject->getFormularioElementoValidatorsObjects();

                    foreach($arrayFormularioElementoValidators as $formularioElementoValidator){
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDVALIDATOR . "({$formularioElementoValidator->validator});" . PHP_EOL);
                    }

                    // adicionando elementos label e ajuda
                    if ($formularioElementoObject->constanteTextualLabel){
                        // adiciona o decorator para os elementos que possuem decorator
                        if ($formularioElementoObject->getDecoratorObject()->id)
                            fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR . "({$formularioElementoObject->getDecoratorObject()->decorator});" . PHP_EOL);

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
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETLABEL . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->constanteTextualLabel}', DEFAULT_USER_LANGUAGE).{$linkAjuda});" . PHP_EOL);
                    }

                    if ($formularioElementoObject->getAjudaObject()->id){
                        if ($formularioElementoObject->getAjudaObject()->constanteTextualHint)
                            fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETINVALIDMESSAGE . "(" . FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL . "('{$formularioElementoObject->getAjudaObject()->constanteTextualHint}', DEFAULT_USER_LANGUAGE));" . PHP_EOL);
                    }

                    // verificando se o elemento pode ser carregando com dados
                    if ($formularioElementoObject->elementReloadable){
                        fputs($fileResource, $identacao . FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE . PHP_EOL);

                        $nivelIdentacao++; 
                        $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                        fputs($fileResource, $identacao . $formElementLoop . FORM_GERADOR_FORM_ELEMENT_SETVALUE . "(" . FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE . "{$formularioElementoObject->elementName});" . PHP_EOL);

                        $nivelIdentacao--;
                        $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);
                    }

                    // verificando se o é preciso determinar ambiente de desenvolvimento
                    if ($elementoAmbienteDesenvolvimento){
                        $nivelIdentacao--;
                        $identacao = Basico_Model_Util::retornaIdentacao($nivelIdentacao);                   	
                        fputs($fileResource, $identacao . $formCodeBlockEndTag);
                    }

                    fputs($fileResource, PHP_EOL);
                    $contador++;
                }

                fputs($fileResource, $identacao . FORM_GERADOR_FORM_ADDELEMENTS . "(" . FORM_GERADOR_ELEMENTS . ");" . PHP_EOL);

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
                    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . PHP_EOL . $e);
                }
            }
            throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . PHP_EOL . $e);       	
        }

        return $resultado;    
    }

}
