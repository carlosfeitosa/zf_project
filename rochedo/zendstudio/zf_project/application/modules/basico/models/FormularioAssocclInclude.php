<?php
/**
 * FormularioAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclInclude extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * Referencia a classe Basico_Model_Formulario
     * @var int
     */
    protected $_idFormulario;
    /**
     * Referencia a classe Basico_Model_Include
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
     * Get Formulario object
     * @return null|Basico_Model_Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFormulario);
        return $object;
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
     * Get Include object
     * @return null|Basico_Model_Include
     */
    public function getIncludeObject()
    {
        $model = new Basico_Model_Include();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idInclude);
        return $object;
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
        return parent::getMapper('Basico_Model_FormularioAssocclIncludeMapper');
    }
}
