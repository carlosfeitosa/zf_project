<?php
/**
 * ValidatorGrupoAssocagGrupo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ValidatorGrupoAssocagGrupoMapper
 * @subpackage Model
 */

class Basico_Model_ValidatorGrupoAssocagGrupo extends Basico_AbstractModel_RochedoPersistentModeloGenerico implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
     * @var Int
     */
    protected $_idValidatorGrupo;
    /**
     * @var Int
     */
    protected $_idValidator;
    /**
     * @var Int
     */
    protected $_idValidatorGrupoAssoc;
    /**
     * @var Int
     */
    protected $_ordem;
		
	/**
	* Set id ValidatorGrupo
	* 
	* @param int $idValidatorGrupo 
	* @return Basico_Model_ValidatorGrupoAssocagGrupo
	*/
	public function setIdValidatorGrupo($idValidatorGrupo)
	{
		$this->_idValidatorGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idValidatorGrupo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id ValidatorGrupo
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
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idValidatorGrupo);
        return $object;
    }
    
	/**
	* Set id Validator
	* 
	* @param int $idValidator 
	* @return Basico_Model_ValidatorGrupoAssocagGrupo
	*/
	public function setIdValidator($idValidator)
	{
		$this->_idValidator = Basico_OPController_UtilOPController::retornaValorTipado($idValidator, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id Validator
	* 
	* @return null|int
	*/
	public function getIdValidator()
	{
		return $this->_idValidator;
	}
	
	/**
     * Get Validator object
     * @return null|Basico_Model_Validator
     */
    public function getValidatorObject()
    {
        $model = new Basico_Model_Validator();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idValidator);
        return $object;
    }
    
	/**
	* Set id ValidatorGrupoAssoc
	* 
	* @param int $idValidatorGrupoAssoc 
	* @return Basico_Model_ValidatorGrupoAssocagGrupo
	*/
	public function setIdValidatorGrupoAssoc($idValidatorGrupoAssoc)
	{
		$this->_idValidatorGrupoAssoc = Basico_OPController_UtilOPController::retornaValorTipado($idValidatorGrupoAssoc, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id ValidatorGrupoAssoc
	* 
	* @return null|int
	*/
	public function getIdValidatorGrupoAssoc()
	{
		return $this->_idValidatorGrupoAssoc;
	}
	
	/**
     * Get ValidatorGrupoAssoc object
     * @return null|Basico_Model_ValidatorGrupo
     */
    public function getValidatorGrupoAssocObject()
    {
        $model = new Basico_Model_ValidatorGrupo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idValidatorGrupoAssoc);
        return $object;
    }
	
	/**
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_ValidatorGrupoAssocagGrupo
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ValidatorGrupoAssocagGrupoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ValidatorGrupoAssocagGrupoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_ValidatorGrupoAssocagGrupoMapper');
	}	
}