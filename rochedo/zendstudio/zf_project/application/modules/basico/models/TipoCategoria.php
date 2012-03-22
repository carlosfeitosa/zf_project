<?php
/**
 * TipoCategoria model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TipoCategoriaMapper
 * @subpackage Model
 */
class Basico_Model_TipoCategoria extends Abstract_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idTipoCategoriaPai;
	/**
	 * @var Integer
	 */
	protected $_nivel;	
	/**
	 * @var String
	 */
	protected $_nome;	
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;	
	/**
	 * @var String
	 */
	protected $_codigo;
	/**
	 * @var Boolean
	 */
	protected $_ativo;

	/**
	* Set idTipoCategoriaPai
	* 
	* @param Integer $idTipoCategoriaPai
	*  
	* @return Basico_Model_TipoCategoria
	*/
	public function setIdTipoCategoriaPai($idTipoCategoriaPai)
	{
		$this->_idTipoCategoriaPai = Basico_OPController_UtilOPController::retornaValorTipado($idTipoCategoriaPai, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idTipoCategoriaPai
	* 
	* @return null|int
	*/
	public function getIdTipoCategoriaPai()
	{
		if ($this->_idTipoCategoriaPai)
			return $this->_idTipoCategoriaPai;
		else
			return null;
	}

	/**
	* Set nivel
	* 
	* @param Integer $nivel
	*  
	* @return Basico_Model_TipoCategoria
	*/
	public function setNivel($nivel)
	{
		$this->_nivel = Basico_OPController_UtilOPController::retornaValorTipado($nivel, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idTipoCategoriaPai
	* 
	* @return null|int
	*/
	public function getNivel()
	{
		if ($this->_nivel)
			return $this->_nivel;
		else
			return null;
	}
	
	/**
	* Set nome
	* 
	* @param String $nome 
	* 
	* @return Basico_Model_TipoCategoria
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nome
	* 
	* @return null|String
	*/
	public function getNome()
	{
		return $this->_nome;
	}
     
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual
	* 
	* @return Basico_Model_TipoCategoria
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
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao
	* 
	* @return Basico_Model_TipoCategoria
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}	

	/**
	* Set codigo
	* 
	* @param String $codigo
	* 
	* @return Basico_Model_TipoCategoria
	*/
	public function setCodigo($codigo)
	{
		$this->_codigo = Basico_OPController_UtilOPController::retornaValorTipado($codigo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get codigo
	* 
	* @return null|String
	*/
	public function getCodigo()
	{
		return $this->_codigo;
	}

	/**
	* Set ativo
	* 
	* @param Integer $ativo
	*  
	* @return Basico_Model_TipoCategoria
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|int
	*/
	public function getAtivo()
	{
		if ($this->_ativo)
			return $this->_ativo;
		else
			return null;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_TipoCategoriaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_TipoCategoriaMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_TipoCategoriaMapper);
	}
}