<?php
/**
 * FormularioElementoAssocclEvento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoAssocclEventoMapper
 * @subpackage Model
 */

class Basico_Model_FormularioElementoAssocclEvento extends Abstract_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idElemento;
	/**
	 * @var Integer
	 */	
	protected $_idEvento;
	/**
	 * @var Integer
	 */
	protected $_idAcaoEvento;
	/**
	 * @var Integer
	 */
	protected $_ordem;
	
	/**
	* Set idElemento
	* 
	* @param int $idElemento
	* 
	* @return Basico_Model_FormularioElementoAssocclEvento
	*/
	public function setIdElemento($idElemento)
	{
		$this->_idElemento = Basico_OPController_UtilOPController::retornaValorTipado($idElemento,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idElemento
	* 
	* @return null|int
	*/
	public function getIdElemento()
	{
		if ($this->_idElemento)
			return $this->_idElemento;
		else
			return null;
	}
	
	/**
	* Set idEvento
	* 
	* @param Integer $idEvento 
	* 
	* @return Basico_Model_FormularioElementoAssocclEvento
	*/
	public function setIdEvento($idEvento)
	{
		$this->_idEvento = Basico_OPController_UtilOPController::retornaValorTipado($idEvento,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idEvento
	* 
	* @return null|Integer
	*/
	public function getIdEvento()
	{
		if ($this->_idEvento)
			return $this->_idEvento;
		else
			return null;
	}
     
	/**
	* Set idAcaoEvento
	* 
	* @param Integer $idAcaoEvento 
	* 
	* @return Basico_Model_FormularioElementoAssocclEvento
	*/
	public function setIdAcaoEvento($idAcaoEvento)
	{
		$this->_idAcaoEvento = Basico_OPController_UtilOPController::retornaValorTipado($idAcaoEvento,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idAcaoEvento
	* 
	* @return null|int
	*/
	public function getidAcaoEvento()
	{
		if ($this->_idAcaoEvento)
			return $this->_idAcaoEvento;
		else
			return null;
	}
         
	/**
	* Set ordem
	* 
	* @param Integer $ordem 
	* 
	* @return Basico_Model_FormularioElementoAssocclEvento
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		if (strlen($this->_ordem))
			return $this->_ordem;
		else
			return null;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioElementoAssocclEventoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioElementoAssocclEventoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_FormularioElementoAssocclEventoMapper);
	}	
}