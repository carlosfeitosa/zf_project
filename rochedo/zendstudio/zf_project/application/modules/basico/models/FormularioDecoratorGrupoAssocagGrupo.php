<?php
/**
 * FormDecoratorGrupoAssocagGrupo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormDecoratorGrupoAssocagGrupoMapper
 * @subpackage Model
 */

class Basico_Model_FormularioDecoratorGrupoAssocagGrupo extends Basico_AbstractModel_RochedoPersistentModeloGenerico implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
     * @var Int
     */
    protected $_idFormularioDecoratorGrupo;
    /**
     * @var Int
     */
    protected $_idFormularioDecorator;
    /**
     * @var Int
     */
    protected $_idFormularioDecoratorGrupoAssoc;
    /**
     * @var Int
     */
    protected $_ordem;
		
	/**
	* Set id FormularioDecoratorGrupo
	* 
	* @param int $idFormularioDecoratorGrupo 
	* @return Basico_Model_FormularioDecoratorFormularioDecoratorGrupoAssocagFormularioDecoratorGrupo
	*/
	public function setIdFormularioDecoratorGrupo($idFormularioDecoratorGrupo)
	{
		$this->_idFormularioDecoratorGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idFormularioDecoratorGrupo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id FormularioDecoratorGrupo
	* 
	* @return null|int
	*/
	public function getIdFormularioDecoratorGrupo()
	{
		return $this->_idFormularioDecoratorGrupo;
	}
	
	/**
     * Get FormularioDecoratorGrupo object
     * @return null|Basico_Model_FormularioDecoratorFormularioDecoratorGrupo
     */
    public function getFormularioDecoratorGrupoObject()
    {
        $model = new Basico_Model_FormularioDecoratorGrupo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFormularioDecoratorGrupo);
        return $object;
    }
    
	/**
	* Set id FormularioDecorator
	* 
	* @param int $idFormularioDecorator 
	* @return Basico_Model_FormularioDecoratorGrupoAssocagGrupo
	*/
	public function setIdFormularioDecorator($idFormularioDecorator)
	{
		$this->_idFormularioDecorator = Basico_OPController_UtilOPController::retornaValorTipado($idFormularioDecorator, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id FormularioDecorator
	* 
	* @return null|int
	*/
	public function getIdFormularioDecorator()
	{
		return $this->_idFormularioDecorator;
	}
	
	/**
     * Get FormularioDecorator object
     * @return null|Basico_Model_FormularioDecorator
     */
    public function getFormularioDecoratorObject()
    {
        $model = new Basico_Model_FormularioDecorator();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFormularioDecorator);
        return $object;
    }
    
	/**
	* Set id FormularioDecoratorGrupoAssoc
	* 
	* @param int $idFormularioDecoratorGrupoAssoc 
	* @return Basico_Model_FormularioDecoratorFormularioDecoratorGrupoAssocagGrupo
	*/
	public function setIdFormularioDecoratorGrupoAssoc($idFormularioDecoratorGrupoAssoc)
	{
		$this->_idFormularioDecoratorGrupoAssoc = Basico_OPController_UtilOPController::retornaValorTipado($idFormularioDecoratorGrupoAssoc, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id FormularioDecoratorGrupoAssoc
	* 
	* @return null|int
	*/
	public function getIdFormularioDecoratorGrupoAssoc()
	{
		return $this->_idFormularioDecoratorGrupoAssoc;
	}
	
	/**
     * Get FormularioDecoratorGrupoAssoc object
     * @return null|Basico_Model_FormularioDecoratorGrupo
     */
    public function getFormularioDecoratorGrupoAssocObject()
    {
        $model = new Basico_Model_FormularioDecoratorGrupo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFormularioDecoratorGrupoAssoc);
        return $object;
    }
	
	/**
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_FormularioDecoratorGrupoAssocagGrupo
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
	* Lazy loads Basico_Model_FormDecoratorGrupoAssocagGrupoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormDecoratorGrupoAssocagGrupoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_FormularioDecoratorGrupoAssocagGrupoMapper');
	}	
}