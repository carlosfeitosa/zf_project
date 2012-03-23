<?php
/**
 * MetodoValidacaoAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_MetodoValidacaoAssocclIncludeMapper
 * @subpackage Model
 */

class Basico_Model_MetodoValidacaoAssocclInclude extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idMetodoValidacao;
	/**
	 * @var Integer
	 */	
	protected $_idInclude;
	/**
	 * @var Double
	 */
	protected $_ordem;
	
	/**
	* Set idMetodoValidacao
	* 
	* @param int $idMetodoValidacao
	* 
	* @return Basico_Model_MetodoValidacaoAssocclInclude
	*/
	public function setIdMetodoValidacao($idMetodoValidacao)
	{
		$this->_idMetodoValidacao = Basico_OPController_UtilOPController::retornaValorTipado($idMetodoValidacao,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idMetodoValidacao
	* 
	* @return null|int
	*/
	public function getIdMetodoValidacao()
	{
		if ($this->_idMetodoValidacao)
			return $this->_idMetodoValidacao;
		else
			return null;
	}
 
    /**
     * Get MetodoValidacao object
     * 
     * @return null|Basico_Model_MetodoValidacao
     */
    public function getMetodoValidacaoObject()
    {
        $model = new Basico_Model_MetodoValidacao();
        $object = $model->getMapper()->find($this->_idMetodoValidacao);
        return $object;
    }	
	
	/**
	* Set idInclude
	* 
	* @param Integer $idInclude
	* 
	* @return Basico_Model_MetodoValidacaoAssocclInclude
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
     * Get Include object
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
	* @param Integer $ordem 
	* 
	* @return Basico_Model_MetodoValidacaoAssocclInclude
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
	* Lazy loads Basico_Model_MetodoValidacaoAssocclIncludeMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MetodoValidacaoAssocclIncludeMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_MetodoValidacaoAssocclIncludeMapper);
	}	
}