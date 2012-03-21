<?php
/**
 * AjudaAssocclLink model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AjudaAssocclLinkMapper
 * @subpackage Model
 */

class Basico_Model_AjudaAssocclLink extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idAjuda;
	/**
	 * @var Integer
	 */	
	protected $_idLink;
	/**
	 * @var Double
	 */
	protected $_ordem;
	
	/**
	* Set idAjuda
	* 
	* @param int $idAjuda
	* 
	* @return Basico_Model_AjudaAssocclLink
	*/
	public function setIdAjuda($idAjuda)
	{
		$this->_idAjuda = Basico_OPController_UtilOPController::retornaValorTipado($idAjuda,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idAjuda
	* 
	* @return null|int
	*/
	public function getIdAjuda()
	{
		if ($this->_idAjuda)
			return $this->_idAjuda;
		else
			return null;
	}
 
    /**
     * Get Ajuda object
     * 
     * @return null|Basico_Model_Ajuda
     */
    public function getAjudaObject()
    {
        $model = new Basico_Model_Ajuda();
        $object = $model->getMapper()->find($this->_idAjuda);
        return $object;
    }	
	
	/**
	* Set idLink
	* 
	* @param Integer $idLink
	* 
	* @return Basico_Model_AjudaAssocclLink
	*/
	public function setIdLink($idLink)
	{
		$this->_idLink = Basico_OPController_UtilOPController::retornaValorTipado($idLink,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idLink
	* 
	* @return null|Integer
	*/
	public function getIdLink()
	{
		if ($this->_idLink)
			return $this->_idLink;
		else
			return null;
	}
	
    /**
     * Get Link object
     * 
     * @return null|Basico_Model_CpgLink
     */
    public function getLinkObject()
    {
        $model = new Basico_Model_CpgLink();
        $object = $model->getMapper()->find($this->_idLink);
        return $object;
    }	
	
	/**
	* Set ordem
	* 
	* @param Integer $ordem 
	* 
	* @return Basico_Model_AjudaAssocclLink
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
	* Lazy loads Basico_Model_AjudaAssocclLinkMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AjudaAssocclLinkMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_AjudaAssocclLinkMapper);
	}	
}