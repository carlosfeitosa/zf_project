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
     * @var idAssocclElemento
     */
    protected $_idAssocclElemento;
    /**
     * @var idFilter
     */
    protected $_idFilter;
    /**
     * @var ordem
     */
    protected $_ordem;
    /**
     * @var removeFlag
     */
    protected $_removeFlag;

    /**
    * Set formularioElemento
    * 
    * @param int $idAssocclElemento
    * 
    * @return Basico_Model_FormularioElementoAssocclFilter
    */
    public function setIdAssocclElemento($idAssocclElemento)
    {
        $this->_idAssocclElemento = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioelemento
    * 
    * @return null|int
    */
    public function getIdAssocclElemento()
    {
        return $this->_idAssocclElemento;
    }
 
    /**
     * Get formularioelemento object
     * 
     * @return null|Basico_Model_FormularioElemento
     */
    public function getAssocclElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = $model->find($this->_idAssocclElemento);
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
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormulariosElementosFormulariosElementosFiltersMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosElementosFormulariosElementosFiltersMapper
    */
    public function getMapper()
    {
    	return parent::getMapper('Basico_Model_FormularioElementoFilterMapper');
    }
}