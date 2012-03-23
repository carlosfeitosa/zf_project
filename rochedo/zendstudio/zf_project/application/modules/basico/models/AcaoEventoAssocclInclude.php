<?php
/**
 * AcaoEventoAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcaoEventoAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_AcaoEventoAssocclInclude extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	* @var int
	*/
	protected $_idAcaoEvento;
	/**
	 * @var int
	 */
	protected $_idInclude;
	/**
	 * @var int
	 */
	protected $_ordem;
	    
	/**
	* Set entry idAcaoEvento
	* 
	* @param  int $idAcaoEvento
	* 
	* @return Basico_Model_AcaoEventoAssocclInclude
	*/
	public function setIdAcaoEvento($idAcaoEvento)
	{
		$this->_idAcaoEvento = Basico_OPController_UtilOPController::retornaValorTipado($idAcaoEvento, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idAcaoEvento
	* 
	* @return null|int
	*/
	public function getIdAcaoEvento()
	{
		return $this->_idAcaoEvento;
	}
	
	/**
	* Set idInclude
	* 
	* @param int $idInclude
	* @return Basico_Model_AcaoEventoAssocclInclude
	*/
	public function setInclude($idInclude)
	{
		$this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idInclude
	* 
	* @return null|int
	*/
	public function getIdInclude()
	{
		return $this->_idInclude;
	}
     
	/**
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_AcaoEventoAssocclInclude
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
	* Lazy loads Basico_Model_AcaoEventoAssocclInclude instance if no mapper registered.
	* 
	* @return Basico_Model_AcaoEventoAssocclInclude
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_AcaoEventoAssocclInclude);
	}
}
