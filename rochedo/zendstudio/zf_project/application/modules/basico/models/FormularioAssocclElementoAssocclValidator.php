<?php
/**
 * FormularioAssocclElementoAssocclValidator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoAssocclValidatorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclValidator extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
     * Referência a classe Basico_Model_FormularioAssocclElemento
     * @var Int
     */
    protected $_idAssocclElemento;
    /**
     * Referência a classe Basico_Model_Validator
     * @var int
     */
    protected $_idValidator;
    /**
     * Referência a classe Basico_Model_ValidatorGrupo
     * @var int
     */
    protected $_idValidatorGrupo;
	/**
     * @var int
     */
    protected $_removeFlag;
   
    /**
    * Set idAssocclElemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioAssocclElementoAssocclValidator
    */
    public function setIdAssocclElemento($idAssocclElemento)
    {
        $this->_idAssocclElemento = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idAssocclElemento
    * 
    * @return null|int
    */
    public function getIdAssocclElemento()
    {
        return $this->_idAssocclElemento;
    }
 
    /**
     * Get assocclElemento object
     * @return null|Basico_Model_FormularioAssocclElemento
     */
    public function getAssocclElementoObject()
    {
        $model = new Basico_Model_FormularioAssocclElemento();
        $object = $model->find($this->_idAssocclElemento);
        return $object;
    }
    
    /**
    * Set idValidator
    * 
    * @param int $ 
    * @return Basico_Model_FormularioAssocclElementoAssocclValidator
    */
    public function setIdValidator($idValidator)
    {
        $this->_idValidator = Basico_OPController_UtilOPController::retornaValorTipado($idValidator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idValidator
    * 
    * @return null|int
    */
    public function getIdValidator()
    {
        return $this->_idValidator;
    }
 
    /**
     * Get validator object
     * @return null|Basico_Model_Validator
     */
    public function getValidatorObject()
    {
        $model = new Basico_Model_Validator();
        $object = $model->find($this->_idValidator);
        return $object;
    }
    
	/**
    * Set idValidatorGrupo
    * 
    * @param int $idValidatorGrupo 
    * @return Basico_Model_FormularioAssocclElementoAssocclValidator
    */
    public function setIdValidatorGrupo($idValidatorGrupo)
    {
        $this->_idValidatorGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idValidatorGrupo, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idValidatorGrupo
    * 
    * @return null|int
    */
    public function getIdValidatorGrupo()
    {
        return $this->_idValidatorGrupo;
    }
 
    /**
     * Get ValidatorGrupo object
     * @return null|Basico_Model_ValidatorGrupo
     */
    public function getValidatorGrupoObject()
    {
        $model = new Basico_Model_ValidatorGrupo();
        $object = $model->find($this->_idValidatorGrupo);
        return $object;
    }

   /**
	* Set removeFlag
	* 
	* @param int $flag
	* @return Basico_Model_FormularioAssocclElementoAssocclValidator
	*/
	public function setRemoveFlag($flag)
	{
		$this->_removeFlag = Basico_OPController_UtilOPController::retornaValorTipado($flag, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get removeFlag
	* 
	* @return null|String
	*/
	public function getRemoveFlag()
	{
		return $this->_removeFlag;
	}
	
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioAssocclElementoAssocclValidatorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclElementoAssocclValidatorMapper
    */
    public function getMapper()
    {
        return parent::getMapper('Basico_Model_FormularioAssocclElementoAssocclValidatorMapper');
    }
}