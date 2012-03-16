<?php
/**
 * Formulario model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioMapper
 * @subpackage Model
 */

class Basico_Model_Formulario extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
	 * @var int
	 */
	protected $_idFormularioPai;
	/**
	 * @var int
	 */
	protected $_nivel;
	/**
	 * @var int
	 */
	protected $_idCategoria;
	/**
     * @var int
     */
    protected $_idAjuda;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var String
	 */
	protected $_formName;
	/**
	 * @var String
	 */
	protected $_formMethod;
	/**
	 * @var String
	 */
	protected $_formAction;
	/**
	 * @var String
	 */
	protected $_formEnctype;
	/**
     * @var String
     */
    protected $_formAttribs;
    /**
	* @var int
	*/
	protected $_ordem;
	/**
     * @var Boolean
     */
    protected $_permiteRascunho;
	
	/**
	* Set idFormularioPai
	* 
	* @param Int $idFormularioPai 
	* @return Basico_Model_Formulario
	*/
	public function setIdFormularioPai($idFormularioPai)
	{
		$this->_idFormularioPai = Basico_OPController_UtilOPController::retornaValorTipado($idFormularioPai, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idFormularioPai
	* 
	* @return null|Int
	*/
	public function getIdFormularioPai()
	{
		return $this->_idFormularioPai;
	}
	
	/**
     * Get formularioPai object
     * 
     * @return null|Basico_Model_Formulario
     */
    public function getFormularioPaiObject()
    {
    	// verificando se o formulario possui formulario pai
    	if ($this->_idFormularioPai) {
    		// instanciando o modelo de formulario
    		$modelFormulario = new Basico_Model_Formulario();
    		
    		// recuperando o objeto formulario pai
    		$modelFormulario = Basico_OPController_PersistenceOPController::bdObjectFind($modelFormulario, $this->_idFormularioPai);

    		// retornando o objeto formulario pai
    		return $modelFormulario;
    	}
    }
	
	/**
	* Set nivel
	* 
	* @param Int $nivel 
	* @return Basico_Model_Formulario
	*/
	public function setNivel($nivel)
	{
		$this->_nivel = Basico_OPController_UtilOPController::retornaValorTipado($nivel, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get nivel
	* 
	* @return null|Int
	*/
	public function getNivel()
	{
		return $this->_nivel;
	}
	
	/**
	 * Set idCategoria
	 * 
	 * @param int $idCategoria
	 * @return Basico_Model_Formulario
	 */
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}
	
	/**
	 * Get idCategoria
	 * 
	 * @return null|int
	 */
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
	
	/**
	 * Recupera objeto categoria
	 * 
	 * @return null|Basico_Model_Categoria
	 */
	public function getCategoriaObject()
	{
		$model = new Basico_Model_Categoria();
		$object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
		return $object;
	}
	
	/**
    * Set idAjuda
    * 
    * @param Int $idAjuda
    * 
    * @return Basico_Model_Formulario
    */
    public function setIdAjuda($idAjuda)
    {
        $this->_idAjuda = Basico_OPController_UtilOPController::retornaValorTipado($idAjuda, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idAjuda
    * 
    * @return null|Integer
    */
    public function getIdAjuda()
    {
       	return $this->_idAjuda;
    }
    
	/**
     * Get ajuda object
     * @return null|Basico_Model_Ajuda
     */
    public function getAjudaObject()
    {
        $model = new Basico_Model_Ajuda();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAjuda);
        return $object;
    }
    
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Formulario
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nome
	* 
	* @return null|String
	*/
	public function getNome()
	{
		return $this->_nome;
	}
	
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_Formulario
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
     
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_Formulario
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}
	
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Formulario
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Boolean
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
     
	/**
	* Set formName
	* 
	* @param String $formName 
	* @return Basico_Model_Formulario
	*/
	public function setFormName($formName)
	{
		$this->_formName = Basico_OPController_UtilOPController::retornaValorTipado($formName, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get formName
	* 
	* @return null|String
	*/
	public function getFormName()
	{
		return $this->_formName;
	}
	
	/**
	* Set formMethod
	* 
	* @param String $formMethod 
	* @return Basico_Model_Formulario
	*/
	public function setFormMethod($formMethod)
	{
		$this->_formMethod = Basico_OPController_UtilOPController::retornaValorTipado($formMethod, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get formMethod
	* 
	* @return null|String
	*/
	public function getFormMethod()
	{
		return $this->_formMethod;
	}
     
	/**
	* Set formAction
	* 
	* @param String $formAction 
	* @return Basico_Model_Formulario
	*/
	public function setFormAction($formAction)
	{
		$this->_formAction = Basico_OPController_UtilOPController::retornaValorTipado($formAction, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get formAction
	* 
	* @return null|String
	*/
	public function getFormAction()
	{
		return $this->_formAction;
	}
     
	/**
	* Set formEnctype
	* 
	* @param String $formEnctype 
	* @return Basico_Model_Formulario
	*/
	public function setFormEnctype($formEnctype)
	{
		$this->_formEnctype = Basico_OPController_UtilOPController::retornaValorTipado($formEnctype, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get formEnctype
	* 
	* @return null|String
	*/
	public function getFormEnctype()
	{
		return $this->_formEnctype;
	}
		
    /**
    * Set formAttribs
    * 
    * @param String $formAttribs 
    * @return Basico_Model_Formulario
    */
    public function setFormAttribs($formAttribs)
    {
        $this->_formAttribs = Basico_OPController_UtilOPController::retornaValorTipado($formAttribs, TIPO_STRING, true);
        return $this;
    }

    /**
    * Get formAttribs
    * 
    * @return null|String
    */
    public function getFormAttribs()
    {
       	return $this->_formAttribs;
    }
	
	/**
	* Set entry ordem
	* 
	* @param  int $ordem 
	* @return Basico_Model_Formulario
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry ordem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}
	
	/**
	* Set permiteRascunho
	* 
	* @param boolean permiteRascunho 
	* @return Basico_Model_Formulario
	*/
	public function setPermiteRascunho($permiteRascunho)
	{
		$this->_permiteRascunho = Basico_OPController_UtilOPController::retornaValorTipado($permiteRascunho, TIPO_BOOLEAN, true);
		return $this;
	}
	
	/**
	* Get permiteRascunho
	* 
	* @return null|Boolena
	*/
	public function getPermiteRascunho()
	{
		return $this->_permiteRascunho;
	}
    
    /**
     * Get formulariosFilhos objects
     * @return null|arrayFormulario
     */
    public function getFormulariosFilhosObjects()
    {
    	$modelFormulario = new Basico_Model_Formulario();
    	return Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormulario, "id_formulario_pai = {$this->_id}", "ordem");
    }
	
    /**
     * Get modulo objects
     * @return null|array
     */
    public function getModulosObjects(array $excludeModulesNames = null)
    {
        $modelModuloFormulario = new Basico_Model_ModuloFormulario();
        $arrayModulosFormulariosObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelModuloFormulario, "id_formulario = {$this->_id}");
        $modelModulo = new Basico_Model_Modulo();
        
        $arrayIdsModulos = array();
        foreach ($arrayModulosFormulariosObjects as $moduloFormularioObject){
            $arrayIdsModulos[] = $moduloFormularioObject->modulo;
        }
        
        $stringIdsModulos = implode(',', $arrayIdsModulos);
        
        for ($contador = 0; $contador <= count($excludeModulesNames)-1; $contador++)
            $excludeModulesNames[$contador] = Basico_OPController_UtilOPController::retornaStringEntreCaracter($excludeModulesNames[$contador], "'"); 
        
        if ($excludeModulesNames)
            $stringExcludeModulesNames = implode(',', $excludeModulesNames);
        else
            $stringExcludeModulesNames = null;
        
        if (($stringIdsModulos) and ($stringExcludeModulesNames)) 
            $arrayObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelModulo, "id IN ({$stringIdsModulos}) and nome NOT IN ({$stringExcludeModulesNames})");
        else if ($stringIdsModulos) 
            $arrayObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelModulo, "id IN ({$stringIdsModulos})");
        else
            $arrayObjects = array();
        
        return $arrayObjects;
    }

    /**
     * Get formularioElemento objects
     * 
     * @return null|array
     */
    public function getFormularioElementosObjects()
    {
    	// recuperando modelos
        $modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();

        // recuperando objetos
        $arrayFormularioFormularioElementosObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioFormularioElemento, "id_formulario = {$this->_id}", "ordem");      

        // inicializando variaveis
        $arrayIdsFormularioElementos = array();
        $arrayObjectsFormularioElemento = array();

        // loop para recuperar os ids dos formularioselementos
        foreach ($arrayFormularioFormularioElementosObjects as $formularioElementoObject){
        	// recuperando ids
            $arrayIdsFormularioElementos[] = $formularioElementoObject->formularioElemento;
        }

        // loop para recuperar os formularioElemento
        foreach ($arrayIdsFormularioElementos as $idFormularioElemento) {
        	// recuperando objetos formularioElemento
        	$arrayObjectsFormularioElemento[] = Basico_OPController_PersistenceOPController::bdObjectFind(new Basico_Model_FormularioElemento(), $idFormularioElemento);
        }

        // verificando se o formulario eh persistente
        if ((GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT) and (Basico_OPController_FormularioOPController::getInstance()->existePersistenciaPorIdFormularioViaSQL($this->_id))) {
        	// adicionando elemento hash
        	$arrayObjectsFormularioElemento[] = Basico_OPController_FormularioElementoOPController::getInstance()->retornaElementoHash();
        }

        // retornando array de objetos formulario elemento
        return $arrayObjectsFormularioElemento;
    }

    /**
     * Get template objects
     * 
     * @return null|array
     */
    public function getTemplatesObjects()
    {
        $modelTemplateFormulario = new Basico_Model_TemplateFormulario();
        $arrayTemplatesFormularios = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelTemplateFormulario, "id_formulario = {$this->_id}");
        $modelTemplate = new Basico_Model_Template();

        $arrayIdsTemplates = array();
        foreach($arrayTemplatesFormularios as $templateFormularioObject){
        	$arrayIdsTemplates[] = $templateFormularioObject->template;
        }
        
        $arrayObjects = array();
        
        if (count($arrayIdsTemplates)){
			$stringIdsTemplates = implode(',', $arrayIdsTemplates);
        	$arrayObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelTemplate, "id IN ({$stringIdsTemplates})");
        } 
        
        return $arrayObjects;
    }
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_FormularioMapper);
	}
}
