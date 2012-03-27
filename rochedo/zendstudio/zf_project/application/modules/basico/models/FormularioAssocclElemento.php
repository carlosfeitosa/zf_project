<?php
/**
 * FormularioAssocclElemento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElemento extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * Referencia a classe Basico_Model_Formulario
     * @var int
     */
    protected $_idFormulario;
    /**
     * Referencia a classe Basico_Model_FormularioElemento
     * @var int
     */
    protected $_idElemento;
    /**
     * Referencia a classe Basico_Model_Ajuda
     * @var int
     */
    protected $_idAjuda;
    /**
     * Referencia a classe Basico_Model_FormularioAssocclElementoGrupo
     * @var int
     */
    protected $_idGrupo;
	/**
	 * @var String
	 */
	protected $_constanteTextualLabel;
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
     * @var ElementRequired
     */
    protected $_elementRequired;
    /**
     * @var int
     */
    protected $_ordem;
    
    /**
    * Set idFormulario
    * 
    * @param int $idFormulario 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setIdFormulario($idFormulario)
    {
    	$this->_idFormulario = Basico_OPController_UtilOPController::retornaValorTipado($idFormulario, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idFormulario
    * 
    * @return null|int
    */
    public function getIdFormulario()
    {
        return $this->_idFormulario;
    }
 
    /**
     * Get formulario object
     * @return null|Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFormulario);
        return $object;
    }
    
	/**
    * Set idElemento
    * 
    * @param int $idElemento 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setIdElemento($idElemento)
    {
    	$this->_idElemento = Basico_OPController_UtilOPController::retornaValorTipado($idElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idElemento
    * 
    * @return null|int
    */
    public function getIdElemento()
    {
        return $this->_idElemento;
    }
    
	/**
     * Get Basico_Model_FormularioElemento object
     * @return null|Basico_Model_FormularioElemento
     */
    public function getElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idElemento);
        return $object;
    }
    
	/**
    * Set idAjuda
    * 
    * @param int $idAjuda 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setIdAjuda($idAjuda)
    {
    	$this->_idAjuda = Basico_OPController_UtilOPController::retornaValorTipado($idAjuda, TIPO_INTEIRO, true);
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
     * Get Basico_Model_Ajuda object
     * @return null|Basico_Model_Ajuda
     */
    public function getAjudaObject()
    {
        $model = new Basico_Model_Ajuda();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAjuda);
        return $object;
    }
    
	/**
    * Set idGrupo
    * 
    * @param int $idGrupo 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setIdGrupo($idGrupo)
    {
    	$this->_idGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idGrupo, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idGrupo
    * 
    * @return null|int
    */
    public function getIdGrupo()
    {
        return $this->_idGrupo;
    }
    
	/**
     * Get Basico_Model_FormularioAssocclElementoGrupo object
     * @return null|Basico_Model_FormularioAssocclElementoGrupo
     */
    public function getGrupoObject()
    {
        $model = new Basico_Model_FormularioAssocclElementoGrupo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idGrupo);
        return $object;
    }
    
	/**
	* Set constanteTextualLabel
	* 
	* @param String $constanteTextualLabel 
	* @return Basico_Model_FormularioAssocclElemento
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
	* Set elementName
	* 
	* @param String $elementName 
	* @return Basico_Model_FormularioAssocclElemento
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
	* @return Basico_Model_FormularioAssocclElemento
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
    * @return Basico_Model_FormularioAssocclElemento
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
    * @param Boolean $element 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setElementReloadable($elementReloadable)
    {
    	$this->_elementReloadable = Basico_OPController_UtilOPController::retornaValorTipado($elementReloadable, TIPO_BOOLEAN,true);
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
    * Set elementRequired
    * 
    * @param Boolean $elementRequired
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setElementRequired($elementRequired)
    {
    	$this->_elementRequired = Basico_OPController_UtilOPController::retornaValorTipado($elementRequired, TIPO_BOOLEAN, true);
        return $this;
    }

    /**
    * Get elementRequired
    * 
    * @return null|Boolean
    */
    public function getElementRequired()
    {
        return $this->_elementRequired;
    }

    /**
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_FormularioAssocclElemento
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|String
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioAssocclElementoMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclElementoMapper
    */
    public function getMapper()
    {
        return parent::getMapper('Basico_Model_FormularioAssocclElementoMapper');
    }
}
