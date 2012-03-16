<?php
/**
 * FormularioAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclInclude extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
{
    /**
     * @var int
     */
    protected $_idFormulario;
    /**
     * @var Int
     */
    protected $_idInclude;
    /**
     * @var Int
     */
    protected $_ordem;
    
	/**
    * Set entry idFormulario
    * 
    * @param  int $idFormulario 
    * @return Basico_Model_FormularioFormularioAssocclValidFormularioator
    */
    public function setIdFormulario($idFormulario)
    {
        $this->_idFormulario = Basico_OPController_UtilOPController::retornaValorTipado($idFormulario, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idFormulario
    * 
    * @return null|int
    */
    public function getIdFormulario()
    {
        return $this->_idFormulario;
    }
    
	/**
    * Set entry idInclude
    * 
    * @param  int $idInclude 
    * @return Basico_Model_FormularioAssocclInclude
    */
    public function setIdInclude($idInclude)
    {
        $this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idInclude
    * 
    * @return null|int
    */
    public function getIdInclude()
    {
        return $this->_idInclude;
    }
    
	/**
    * Set entry ordem
    * 
    * @param  int $ordem 
    * @return Basico_Model_FormularioAssocclInclude
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
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioAssocclIncludeMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclIncludeMapper
    */
    public function getMapper()
    {
        return parent::getMapper(Basico_Model_FormularioAssocclIncludeMapper);
    }
}
