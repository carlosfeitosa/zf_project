<?php
/**
 * FilterGrupoAssocagGrupo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FilterGrupoAssocagGrupoMapper
 * @subpackage Model
 */

class Basico_Model_FilterGrupoAssocagGrupo extends Basico_AbstractModel_RochedoPersistentModeloGenerico implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
     * @var Int
     */
    protected $_idFilterGrupo;
    /**
     * @var Int
     */
    protected $_idFilter;
    /**
     * @var Int
     */
    protected $_idFilterGrupoAssoc;
    /**
     * @var Int
     */
    protected $_ordem;
		
	/**
	* Set id FilterGrupo
	* 
	* @param int $idFilterGrupo 
	* @return Basico_Model_FilterGrupoAssocagGrupo
	*/
	public function setIdFilterGrupo($idFilterGrupo)
	{
		$this->_idFilterGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idFilterGrupo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id FilterGrupo
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
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFilterGrupo);
        return $object;
    }
    
	/**
	* Set id Filter
	* 
	* @param int $idFilter 
	* @return Basico_Model_FilterGrupoAssocagGrupo
	*/
	public function setIdFilter($idFilter)
	{
		$this->_idFilter = Basico_OPController_UtilOPController::retornaValorTipado($idFilter, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id Filter
	* 
	* @return null|int
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
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFilter);
        return $object;
    }
    
	/**
	* Set id FilterGrupoAssoc
	* 
	* @param int $idFilterGrupoAssoc 
	* @return Basico_Model_FilterGrupoAssocagGrupo
	*/
	public function setIdFilterGrupoAssoc($idFilterGrupoAssoc)
	{
		$this->_idFilterGrupoAssoc = Basico_OPController_UtilOPController::retornaValorTipado($idFilterGrupoAssoc, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id FilterGrupoAssoc
	* 
	* @return null|int
	*/
	public function getIdFilterGrupoAssoc()
	{
		return $this->_idFilterGrupoAssoc;
	}
	
	/**
     * Get FilterGrupoAssoc object
     * @return null|Basico_Model_FilterGrupo
     */
    public function getFilterGrupoAssocObject()
    {
        $model = new Basico_Model_FilterGrupo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFilterGrupoAssoc);
        return $object;
    }
	
	/**
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_FilterGrupoAssocagGrupo
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
	* Lazy loads Basico_Model_FilterGrupoAssocagGrupoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FilterGrupoAssocagGrupoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_FilterGrupoAssocagGrupoMapper');
	}	
}