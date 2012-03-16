<?php
/**
 * FormularioElementoAssocclValidator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoAssocclValidatorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElementoAssocclValidator extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
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
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioElementoAssocclValidatorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioElementoAssocclValidatorMapper
    */
    public function getMapper()
    {
        return parent::getMapper(Basico_Model_FormularioElementoAssocclValidatorMapper);
    }
}
