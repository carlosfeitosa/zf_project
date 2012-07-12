<?php
/**
 * FormularioAssocclElementoAssocclFilter model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoAssocclFilterMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclFilter extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * Referencia a classe Basico_Model_FormularioAssocclElemento
     * @var int
     */
    protected $_idAssocclElemento;
    /**
     * Referencia a classe Basico_Model_Filter
     * @var int
     */
    protected $_idFilter;
    /**
     * Referencia a classe Basico_Model_FilterGrupo
     * @var int
     */
    protected $_idFilterGrupo;
    /**
     * @var int
     */
    protected $_ordem;
    /**
     * @var Boolean
     */
    protected $_removeFlag;
	
    /**
    * Set idAssocclElemento
    * 
    * @param int $idAssocclElemento
    * @return Basico_Model_FormularioAssocclElementoAssocclFilter
    */
    public function setIdAssocclElemento($idAssocclElemento)
    {
        $this->_idAssocclElemento = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idAssocclElemento
    * 
    * @return int
    */
    public function getIdAssocclElemento()
    {
        return $this->_idAssocclElemento;
    }
    
    /**
     * Get FormularioAssocclElemento object
     * @return null|Basico_Model_FormularioAssocclElemento
     */
    public function getFormularioAssocclElementoObject()
    {
        $model = new Basico_Model_FormularioAssocclElemento();
        $object = $model->find($this->_idAssocclElemento);
        return $object;
    }
        
	/**
    * Set idFilter
    * 
    * @param int $idFilter
    * @return Basico_Model_FormularioAssocclElementoAssocclFilter
    */
    public function setIdFilter($idFilter)
    {
        $this->_idFilter = Basico_OPController_UtilOPController::retornaValorTipado($idFilter, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idFilter
    * 
    * @return int
    */
    public function getIdFilter()
    {
        return $this->_idFilter;
    }
 
    /**
     * Get Filter object
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
    * @return Basico_Model_FormularioAssocclElementoAssocclFilter
    */
    public function setIdFilterGrupo($idFilterGrupo)
    {
        $this->_idFilterGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idFilterGrupo, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idFilterGrupo
    * 
    * @return int
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
    * @return Basico_Model_FormularioAssocclElementoAssocclFilter
    */
    public function setOrdem($ordem)
    {
        $this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get ordem
    * 
    * @return int
    */
    public function getOrdem()
    {
        return $this->_ordem;
    }
    
	/**
    * Set removeFlag
    * 
    * @param Boolean $removeFlag
    * @return Basico_Model_FormularioAssocclElementoAssocclFilter
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
    * Lazy loads Basico_Model_FormularioAssocclElementoAssocclFilterMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclElementoAssocclFilterMapper
    */
    public function getMapper()
    {
        return parent::getMapper('Basico_Model_FormularioAssocclElementoAssocclFilterMapper');
    }

}
