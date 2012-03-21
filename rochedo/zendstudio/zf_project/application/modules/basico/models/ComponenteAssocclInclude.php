<?php
/**
 * ComponenteAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ComponenteAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_ComponenteAssocclInclude extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */	
	protected $_idComponente;
	/**
	 * @var Integer
	 */
	protected $_idInclude;
	/**
	 * @var Integer
	 */
	protected $_ordem;
	
	/**
	* Set idComponente
	* 
	* @param int $idComponente
	* 
	* @return Basico_Model_ComponenteAssocclInclude
	*/
	public function setIdComponente($idComponente)
	{
		$this->_idComponente = Basico_OPController_UtilOPController::retornaValorTipado($idComponente,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idComponente
	* 
	* @return null|Integer
	*/
	public function getIdComponente()
	{
		if ($this->_idComponente)
			return $this->_idComponente;
		else
			return null;
	}
	
    /**
     * Get Componente object
     * 
     * @return null|Basico_Model_Componente
     */
    public function getComponenteObject()
    {
        $model = new Basico_Model_Componente();
        $object = $model->getMapper()->find($this->_idComponente);
        return $object;
    }
 	
	/**
	* Set idInclude
	* 
	* @param Integer $idInclude
	* 
	* @return Basico_Model_ComponenteAssocclInclude
	*/
	public function setIdInclude($idInclude)
	{
		$this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idInclude
	* 
	* @return null|Integer
	*/
	public function getIdInclude()
	{
		if ($this->_idInclude)
			return $this->_idInclude;
		else
			return null;
	}

    /**
     * Get include object
     * 
     * @return null|Basico_Model_Include
     */
    public function getIncludeObject()
    {
        $model = new Basico_Model_Include();
        $object = $model->getMapper()->find($this->_idInclude);
        return $object;
    }
	
	/**
	* Set ordem
	* 
	* @param int $ordem 
	* 
	* @return Basico_Model_ComponenteAssocclInclude
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|Integer
	*/
	public function getOrdem()
	{
		if ($this->_ordem)
			return $this->_ordem;
		else
			return null;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ComponenteAssocclIncludeMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ComponenteAssocclIncludeMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_ComponenteAssocclIncludeMapper);
	}
}         