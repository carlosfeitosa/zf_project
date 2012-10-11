<?php
/**
 * FormularioElementoAssocclValidator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoAssocclValidatorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElementoAssocclValidator extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var int
     */
    protected $_idElemento;
    /**
     * @var Int
     */
    protected $_idValidator;
    /**
     * @var Int
     */
    protected $_idValidatorGrupo;
    /**
     * @var String
     */
    protected $_options;
    /**
     * @var Boolean
     */
    protected $_removeFlag;
    
	/**
    * Set entry idElemento
    * 
    * @param  int $idElemento 
    * @return Basico_Model_FormularioElementoAssocclValidElementoator
    */
    public function setIdElemento($idElemento)
    {
        $this->_idElemento = Basico_OPController_UtilOPController::retornaValorTipado($idElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idElemento
    * 
    * @return null|int
    */
    public function getIdElemento()
    {
        return $this->_idElemento;
    }
    
	/**
     * Get elemento object
     * @return null|Basico_Model_FormularioElemento
     */
    public function getElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idElemento);
        return $object;
    }
    
	/**
    * Set entry idValidator
    * 
    * @param  int $idValidator 
    * @return Basico_Model_FormularioElementoAssocclValidator
    */
    public function setIdValidator($idValidator)
    {
        $this->_idValidator = Basico_OPController_UtilOPController::retornaValorTipado($idValidator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idValidator
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
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idValidator);
        return $object;
    }
    
	/**
    * Set entry idValidatorGrupo
    * 
    * @param  int $idValidatorGrupo 
    * @return Basico_Model_FormularioElementoAssocclValidator
    */
    public function setIdValidatorGrupo($idValidatorGrupo)
    {
        $this->_idValidatorGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idValidatorGrupo, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idValidatorGrupo
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
    * Set options
    * 
    * @param String $options
    * @return Basico_Model_FormularioElementoAssocclValidator
    */
    public function setOptions($options)
    {
        $this->_options = Basico_OPController_UtilOPController::retornaValorTipado($options, TIPO_STRING, true);
        return $this;
    }

    /**
    * Get options
    * 
    * @return String
    */
    public function getOptions()
    {
        return $this->_options;
    }
    
	/**
    * Set removeFlag
    * 
    * @param Boolean $removeFlag
    * @return Basico_Model_FormularioElementoAssocclValidator
    */
    public function setRemoveFlag($removeFlag)
    {
        $this->_removeFlag = Basico_OPController_UtilOPController::retornaValorTipado($removeFlag, TIPO_BOOLEAN, true);
        return $this;
    }

    /**
    * Get removeFlag
    * 
    * @return Boolean
    */
    public function getRemoveFlag()
    {
        return $this->_removeFlag;
    }

    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioElementoAssocclValidatorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioElementoAssocclValidatorMapper
    */
    public function getMapper()
    {
        return parent::getMapper('Basico_Model_FormularioElementoAssocclValidatorMapper');
    }
}
