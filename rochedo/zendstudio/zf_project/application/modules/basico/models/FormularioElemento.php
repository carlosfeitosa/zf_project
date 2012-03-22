<?php
/**
 * FormularioElemento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElemento extends Abstract_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{

	/**
	 * @var Integer
	 */
	protected $_idCategoria;
	/**
     * @var Integer
     */
    protected $_idComponente;
	/**
	 * @var Integer
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
	 * @var String
	 */
	protected $_constanteTextualLabel;
	/**
	 * @var String
	 */
	protected $_element;
	/**
	 * @var String
	 */
	protected $_elementName;
	/**
	 * @var String
	 */
	protected $_elementAttribs;
	/**
	 * @var String
	 */
	protected $_elementValueDefault;
	/**
     * @var Boolean
     */
    protected $_elementReloadable;
	/**
     * @var Integer
     */
    protected $_ativo;

	/**
	* Set idCategoria
	* 
	* @param int $idCategoria
	* 
	* @return Basico_Model_FormularioElemento
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria,TIPO_INTEIRO,true);
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
     * Get Categoria object
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
	* Set idComponente
	* 
	* @param int $idComponente
	* 
	* @return Basico_Model_FormularioElemento
	*/
	public function setIdComponente($idComponente)
	{
		$this->_idComponente = Basico_OPController_UtilOPController::retornaValorTipado($idComponente,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idComponente
	* 
	* @return null|int
	*/
	public function getIdComponente()
	{
		return $this->_idComponente;
	}
	
    /**
     * Get Componente object
     * 
     * @return null|Basico_Model_Componente
     */
    public function getComponenteObject()
    {
        $model = new Basico_Model_Componente();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idComponente);
        return $object;
    }
    
	/**
	* Set idAjuda
	* 
	* @param int $idAjuda
	* 
	* @return Basico_Model_FormularioElemento
	*/
	public function setIdAjuda($idAjuda)
	{
		$this->_idAjuda = Basico_OPController_UtilOPController::retornaValorTipado($idAjuda,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idAjuda
	* 
	* @return null|int
	*/
	public function getIdAjuda()
	{
		return $this->_idAjuda;
	}
	
    /**
     * Get Ajuda object
     * 
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
	* 
	* @return String
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome, TIPO_STRING,true);
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
	* 
	* @return String
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING,true);
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
	* 
	* @return String
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING,true);
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
	* Set constanteTextualLabel
	* 
	* @param String $constanteTextualLabel 
	* @return String
	*/
	public function setConstanteTextualLabel($constanteTextualLabel)
	{
		$this->_constanteTextualLabel = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualLabel, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextualLabel
	* 
	* @return null|String
	*/
	public function getConstanteTextualLabel()
	{
		return $this->_constanteTextualLabel;
	}
     
	/**
	* Set element
	* 
	* @param String $element 
	* 
	* @return String
	*/
	public function setElement($element)
	{
		$this->_element = Basico_OPController_UtilOPController::retornaValorTipado($element, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get element
	* 
	* @return null|String
	*/
	public function getElement()
	{
		return $this->_element;
	}
	
	/**
	* Set elementName
	* 
	* @param String $elementName 
	* 
	* @return String
	*/
	public function setElementName($elementName)
	{
		$this->_elementName = Basico_OPController_UtilOPController::retornaValorTipado($elementName, TIPO_STRING,true); 
		return $this;
	}

	/**
	* Get elementName
	* 
	* @return null|String
	*/
	public function getElementName()
	{
		return $this->_elementName;
	}
	
    /**
	* Set elementAttribs
	* 
	* @param String $elementAttribs
	* 
	* @return String
	*/
	public function setElementAttribs($elementAttribs)
	{
		$this->_elementAttribs = Basico_OPController_UtilOPController::retornaValorTipado($elementAttribs, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get elementAttribs
	* 
	* @return null|String
	*/
	public function getElementAttribs()
	{
		return $this->_elementAttribs;
	}

    /**
    * Set elementValueDefault
    * 
    * @param String $elementValueDefault
    *  
    * @return Basico_Model_FormularioElemento
    */
    public function setElementValueDefault($elementValueDefault)
    {
    	$this->_elementValueDefault = Basico_OPController_UtilOPController::retornaValorTipado($elementValueDefault, TIPO_STRING,true);
        return $this;
    }

    /**
    * Get elementValueDefault
    * 
    * @return null|String
    */
    public function getElementValueDefault()
    {
        return $this->_elementValueDefault;
    }
	
    /**
    * Set elementReloadable
    * 
    * @param String $elementReloadable
    *  
    * @return Basico_Model_FormularioElemento
    */
    public function setElementReloadable($elementReloadable)
    {
    	$this->_elementReloadable = Basico_OPController_UtilOPController::retornaValorTipado($elementReloadable, TIPO_STRING,true);
        return $this;
    }

    /**
    * Get elementReloadable
    * 
    * @return null|String
    */
    public function getElementReloadable()
    {
        return $this->_elementReloadable;
    }
      
    /**
    * Set ativo
    * 
    * @param String $ativo
    *  
    * @return Basico_Model_FormularioElemento
    */
    public function setAtivo($ativo)
    {
    	$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_STRING,true);
        return $this;
    }

    /**
    * Get elementReloadable
    * 
    * @return null|String
    */
    public function getAtivo()
    {
        return $this->_ativo;
    }
       
    /**
     * Get FormularioAssocclElemento object
     * 
     * @return null|Basico_Model_FormularioAssocclElemento
     */
    public function getFormularioAssocclElementoObject()
    {
    	// instanciando modelo de formulario formulario elemento
        $model = new Basico_Model_FormularioAssocclElemento();

        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFetchList($model, "id_elemento = {$this->_id}");

        // verificando se o objeto existe
        if (count($object))
        	return $object[0];

		return null;
    }

    /**
     * Get FormularioAssocclElemento object
     * 
     * @param Integer $idFormulario
     * 
     * @return null|Basico_Model_FormularioAssocclElemento
     */
    public function getFormularioAssocclElementoObjectPorIdFormulario($idFormulario)
    {
    	// verificando se foi passado o id do formulario
    	if (!$idFormulario)
    		return null;

    	// instanciando modelo de formulario formulario elemento
        $model = new Basico_Model_FormularioAssocclElemento();

        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFetchList($model, "id_elemento = {$this->_id} and id_formulario = {$idFormulario}");

        // verificando se o objeto existe
        if (count($object))
        	return $object[0];

		return null;
    }

    /**
     * Get formularioElementoValidators objects
     * 
     * @return null|Basico_Model_Validator
     */   
    public function getFormularioElementoValidatorsObjects()
    {
    	$modelFormularioElementoAssocclValidator = new Basico_Model_FormularioElementoAssocclValidator();
    	$arrayFormularioElementoAssocclValidatorObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioElementoAssocclValidator, "id_elemento = {$this->_id}");
    	$modelValidator = new Basico_Model_Validator();

        $arrayIdsValidators = array();

        foreach ($arrayFormularioElementoAssocclValidatorObjects as $formularioElementoAssocclValidatorObject){
            $arrayIdsValidators[] = $formularioElementoAssocclValidatorObject->validator;
        }
        
        $stringIdsValidators = implode(',', $arrayIdsValidators);
        
        if ($stringIdsValidators)
            $arrayObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelValidator, "id IN ({$stringIdsValidators})");
        else
            $arrayObjects = array();
       
        return $arrayObjects; 	
    }

    /**
     * Retorna os objetos FormularioAssocclValidator
     * 
     * @return Array|null
     */
    public function getFormularioElementoAssocclValidatorObjects()
    {
    	// recuperando modelo
    	$modelFormularioElementoAssocclValidator = new Basico_Model_FormularioElementoAssocclValidator();
    	// recuperando objetos
    	$arrayFormularioElementoAssocclValidatorObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioElementoAssocclValidator, "id_elemento = {$this->_id}");

    	// verificando o resultado da recuperacao
    	if (count($arrayFormularioElementoAssocclValidatorObjects) > 0) {
    		// retornando array de objetos FormularioElementoAssocclValidator
    		return $arrayFormularioElementoAssocclValidatorObjects;
    	}

    	return null;
    }
    
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioElementoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioElementoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_FormularioElementoMapper);
	} 
}