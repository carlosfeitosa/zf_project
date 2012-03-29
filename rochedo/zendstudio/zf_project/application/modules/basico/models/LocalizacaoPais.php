<?php
/**
 * LocalizacaoPais model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_LocalizacaoPaisMapper
 * @subpackage Model
 */
class Basico_Model_LocalizacaoPais  extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_sigla;
	/**
	 * @var String
	 */
	protected $_codigoDdi;
	/**
	 * @var String
	 */
	protected $_codigoIso3166;
	/**
     * @var Boolean
     */
    protected $_ativo;
    
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_LocalizacaoPais
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
     
	/**
	* Set sigla
	* 
	* @param String $sigla 
	* @return Basico_Model_LocalizacaoPais
	*/
	public function setSigla($sigla)
	{
		$this->_sigla = Basico_OPController_UtilOPController::retornaValorTipado($sigla, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get sigla
	* 
	* @return null|String
	*/
	public function getSigla()
	{
		return $this->_sigla;
	}
     
	/**
	* Set codigoDdi
	* 
	* @param String $codigoDdi 
	* @return Basico_Model_LocalizacaoPais
	*/
	public function setCodigoDdi($codigoDdi)
	{
		$this->_codigoDdi = Basico_OPController_UtilOPController::retornaValorTipado($codigoDdi, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get codigoDdi
	* 
	* @return null|String
	*/
	public function getCodigoDdi()
	{
		return $this->_codigoDdi;
	}

	/**
	* Set codigoIso3166
	* 
	* @param String $codigoIso3166
	* @return Basico_Model_LocalizacaoPais
	*/
	public function setCodigoIso3166($codigoIso3166)
	{
		$this->_codigoIso3166 = Basico_OPController_UtilOPController::retornaValorTipado($codigoIso3166, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get codigoIso3166
	* 
	* @return null|String
	*/
	public function getCodigoIso3166()
	{
		return $this->_codigoIso3166;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_LocalizacaoPais
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo,TIPO_BOOLEAN,true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Boolean
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_LocalizacaoPaisMapper instance if no mapper registered.
	* 
	* @return Basico_Model_LocalizacaoPaisMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_LocalizacaoPaisMapper');
	}
}