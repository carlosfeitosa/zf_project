<?php
/**
 * CategoriaAssocEventoAcao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CategoriaAssocEventoAcao
 * @subpackage Model
 */
class Basico_Model_CategoriaAssocEventoAcao extends Abstract_RochedoModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
	* @var int
	*/
	protected $_idCategoria;
	/**
	 * @var String
	 */
	protected $_tagAbertura;
	/**
	 * @var String
	 */
	protected $_tagFechamento;
	/**
	 * @var String
	 */
	protected $_delimitador;
    
	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
	
	/**
	* Set tag abertura
	* 
	* @param String $tagAbertura 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setTagAbertura($tagAbertura)
	{
		$this->_tagAbertura = Basico_OPController_UtilOPController::retornaValorTipado($tagAbertura, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get tag abertura
	* 
	* @return null|String
	*/
	public function getTagAbertura()
	{
		return $this->_tagAbertura;
	}
     
	/**
	* Set tag fechamento
	* 
	* @param String $tagFechamento 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setTagFechamento($tagFechamento)
	{
		$this->_tagFechamento = Basico_OPController_UtilOPController::retornaValorTipado($tagFechamento, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get tag fechamento
	* 
	* @return null|String
	*/
	public function getTagFechamento()
	{
		return $this->_tagFechamento;
	}
	
	/**
	* Set delimitador
	* 
	* @param String $delimitador 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setDelimitador($delimitador)
	{
		$this->_delimitador = Basico_OPController_UtilOPController::retornaValorTipado($delimitador, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get delimitador
	* 
	* @return null|String
	*/
	public function getDelimitador()
	{
		return $this->_delimitador;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CategoriaAssocEventoAcao instance if no mapper registered.
	* 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_CategoriaAssocEventoAcao);
	}
}