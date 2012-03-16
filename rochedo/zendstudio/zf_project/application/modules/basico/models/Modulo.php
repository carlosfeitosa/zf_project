<?php
/**
 * Modulo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ModuloMapper
 * @subpackage Model
 */
class Basico_Model_Modulo extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
     * @var Integer
     */
    protected $_idModuloPai;
	/**
	* @var int
	*/
	protected $_idCategoria;
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
	protected $_versao;
	/**
	 * @var String
	 */
	protected $_path;
	/**
	 * @var Boolean
	 */
	protected $_instalado;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var Date
	 */
	protected $_dataDepreciacao;
	/**
	 * @var String
	 */
	protected $_xmlAutoria;

	/**
	* Set moduloPai
	* 
	* @param int $idModuloPai 
	* @return Basico_Model_Modulo
	*/
	public function setIdModuloPai($idModuloPai)
	{
		$this->_idModuloPai = Basico_OPController_UtilOPController::retornaValorTipado($idModuloPai, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id modulo Pai
	* 
	* @return null|int
	*/
	public function getIdModuloPai()
	{
		return $this->_idModuloPai;
	}
 
    /**
     * Get modulo pai object
     * @return null|Basico_Model_Modulo
     */
    public function getModuloPaiObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idModuloPai);
        return $object;
    }

	/**
	* Set id categoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_Modulo
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id categoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
 
    /**
     * Get categoria object
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }

	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Modulo
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
	* Set constante textual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_Modulo
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constante textual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
	
	/**
	* Set constante textual descricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_Modulo
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constante textual descricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}
     
	/**
	* Set versao
	* 
	* @param String $versao 
	* @return Basico_Model_Modulo
	*/
	public function setVersao($versao)
	{
		$this->_versao = Basico_OPController_UtilOPController::retornaValorTipado($versao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get versao
	* 
	* @return null|String
	*/
	public function getVersao()
	{
		return $this->_versao;
	}
     
	/**
	* Set path
	* 
	* @param String $path 
	* @return Basico_Model_Modulo
	*/
	public function setPath($path)
	{
		$this->_path = Basico_OPController_UtilOPController::retornaValorTipado($path, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get path
	* 
	* @return null|String
	*/
	public function getPath()
	{
		return $this->_path;
	}
     
	/**
	* Set instalado
	* 
	* @param Boolean $instalado 
	* @return Basico_Model_Modulo
	*/
	public function setInstalado($instalado)
	{
		$this->_instalado = Basico_OPController_UtilOPController::retornaValorTipado($instalado, TIPO_BOOLEAN, false);
		return $this;
	}

	/**
	* Get instalado
	* 
	* @return null|Boolean
	*/
	public function getInstalado()
	{
		return $this->_instalado;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Modulo
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, false);
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
	* Set dataDepreciacao
	* 
	* @param String $dataDepreciacao 
	* @return Basico_Model_Modulo
	*/
	public function setDataDepreciacao($dataDepreciacao)
	{
		$this->_dataDepreciacao = Basico_OPController_UtilOPController::retornaValorTipado($dataDepreciacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataDepreciacao
	* 
	* @return null|String
	*/
	public function getDataDepreciacao()
	{
		return $this->_dataDepreciacao;
	}
     
	/**
	* Set xmlAutoria
	* 
	* @param String $xmlAutoria 
	* @return Basico_Model_Modulo
	*/
	public function setXmlAutoria($xmlAutoria)
	{
		$this->_xmlAutoria = Basico_OPController_UtilOPController::retornaValorTipado($xmlAutoria, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get xmlAutoria
	* 
	* @return null|String
	*/
	public function getXmlAutoria()
	{
		return $this->_xmlAutoria;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ModuloMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ModuloMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_ModuloMapper);
	}
}