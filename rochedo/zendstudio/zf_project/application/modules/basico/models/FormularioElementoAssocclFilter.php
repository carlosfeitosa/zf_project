<?php
/**
 * Basico_Model_FormularioElementoAssocclFilter model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoAssocclFilterMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElementoAssocclFilter extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
     * @var Int
     */
    protected $_idElemento;
    /**
     * @var Int
     */
    protected $_idFilter;
    /**
     * @var Int
     */
    protected $_idFilterGrupo;
    /**
     * @var Int
     */
    protected $_ordem;
    /**
     * @var Boolean
     */
    protected $_removeFlag;

    /**
    * Set formularioElemento
    * 
    * @param int $idElemento
    * 
    * @return Basico_Model_FormularioElementoAssocclFilter
    */
    public function setIdElemento($idElemento)
    {
        $this->_idElemento = Basico_OPController_UtilOPController::retornaValorTipado($idElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioelemento
    * 
    * @return null|int
    */
    public function getIdElemento()
    {
        return $this->_idElemento;
    }
 
    /**
     * Get formularioelemento object
     * 
     * @return null|Basico_Model_FormularioElemento
     */
    public function getAssocclElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = $model->find($this->_idElemento);
        return $object;
    }
    
    /**
    * Set idFilter
    * 
    * @param int $idFilter
    * @return Basico_Model_FormularioElementoAssocclFilter
    */
    public function setIdFilter($idFilter)
    {
        $this->_idFilter = Basico_OPController_UtilOPController::retornaValorTipado($idFilter, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idFilter
    * 
    * @return null|int
    */
    public function getIdFilter()
    {
        return $this->_idFilter;
    }
 
    /**
     * Get filter object
     * @return null|Basico_Model_Filter
     */
    public function getFilterObject()
    {
        $model = new Basico_Model_Filter();
        $object = $model->find($this->_idFilter);
        return $object;
    }
    
	/**
    * Set idFilterGrupo
    * 
    * @param int $idFilterGrupo
    * @return Basico_Model_FormularioElementoAssocclFilter
    */
    public function setIdFilterGrupo($idFilterGrupo)
    {
        $this->_idFilterGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idFilterGrupo, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idFilterGrupo
    * 
    * @return null|int
    */
    public function getIdFilterGrupo()
    {
        return $this->_idFilterGrupo;
    }
 
    /**
     * Get FilterGrupo object
     * @return null|Basico_Model_FilterGrupo
     */
    public function getFilterGrupoObject()
    {
        $model = new Basico_Model_FilterGrupo();
        $object = $model->find($this->_idFilterGrupo);
        return $object;
    }

    /**
    * Set ordem
    * 
    * @param int $ordem
    * @return Basico_Model_FormularioElementoAssocclFilter
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
    * Set removeFlag
    * 
    * @param Boolean $removeFlag
    * @return Basico_Model_FormularioElementoAssocclFilter
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
    * Lazy loads Basico_Model_FormulariosElementosFormulariosElementosFiltersMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosElementosFormulariosElementosFiltersMapper
    */
    public function getMapper()
    {
    	return parent::getMapper('Basico_Model_FormularioElementoAssocclFilterMapper');
    }
}