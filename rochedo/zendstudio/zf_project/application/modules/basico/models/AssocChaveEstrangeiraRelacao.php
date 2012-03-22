<?php
/**
 * AssocChaveEstrangeiraRelacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AssocChaveEstrangeiraRelacaoMapper
 * @subpackage Model
 */
class Basico_Model_AssocChaveEstrangeiraRelacao extends Abstract_RochedoPersistentModeloGenerico implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var String
	 */
	protected $_tabelaOrigem;
	/**
	 * @var String
	 */
	protected $_campoOrigem;
	
	/**
	* Set tabelaOrigem
	* 
	* @param String $tabelaOrigem 
	* @return Basico_Model_AssocChaveEstrangeiraRelacao
	*/
	public function setTabelaOrigem($tabelaOrigem)
	{
		$this->_tabelaOrigem = Basico_OPController_UtilOPController::retornaValorTipado($tabelaOrigem, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get tabelaOrigem
	* 
	* @return null|String
	*/
	public function getTabelaOrigem()
	{
		return $this->_tabelaOrigem;
	}
     
	/**
	* Set campoOrigem
	* 
	* @param String $campoOrigem 
	* @return Basico_Model_AssocChaveEstrangeiraRelacao
	*/
	public function setCampoOrigem($campoOrigem)
	{
		$this->_campoOrigem = Basico_OPController_UtilOPController::retornaValorTipado($campoOrigem, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get campoOrigem
	* 
	* @return null|String
	*/
	public function getCampoOrigem()
	{
		return $this->_campoOrigem;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AssocChaveEstrangeiraRelacaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AssocChaveEstrangeiraRelacaoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_AssocChaveEstrangeiraRelacaoMapper);
	}
}
