<?php
/**
 * CpgArquivo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CpgArquivoMapper
 * @subpackage Model
 */
class Basico_Model_CpgArquivo extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idCategoria;
	/**
	 * @var Integer
	 */
	protected $_idGenericoProprietario;
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
	protected $_nomeOriginal;
	/**
	 * @var String
	 */
	protected $_nomeSugestao;
	/**
	 * @var Integer
	 */
	protected $_tamanho_kylobytes;
	/**
	 * @var String
	 */
	protected $_mimeType;
	/**
	 * @var String
	 */
	protected $_uri;
	/**
	 * @var Boolean
	 */
	protected $_remoto;
	/**
	 * @var Integer
	 */
	protected $_hits;
	/**
	 * @var Boolean
	 */
	protected $_ativo;

	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_CpgArquivo
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
     * Get Categoria object
     * 
     * @return null|Basico_Model_Categoria
     */
	public function getCategoriaObject()
	{
		// instanciando o modelo categoria
		$model = new Basico_Model_Categoria();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        // retornando o objeto
        return $object;
	}

	/**
	* Set entry idGenericoProprietario
	* 
	* @param  int $idGenericoProprietario
	* @return Basico_Model_CpgArquivo
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idCategoria
	* 
	* @return null|int
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}

	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_CpgArquivo
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
	* @return Basico_Model_CpgArquivo
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
	* @return Basico_Model_CpgArquivo
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
	* Set nomeOriginal
	* 
	* @param String $nomeOriginal 
	* @return Basico_Model_CpgArquivo
	*/
	public function setNomeOriginal($nomeOriginal)
	{
		$this->_nomeOriginal = Basico_OPController_UtilOPController::retornaValorTipado($nomeOriginal, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nomeOriginal
	* 
	* @return null|String
	*/
	public function getNomeOriginal()
	{
		return $this->_nomeOriginal;
	}

	/**
	* Set nomeSugestao
	* 
	* @param String $nomeSugestao
	* @return Basico_Model_CpgArquivo
	*/
	public function setNomeSugestao($nomeSugestao)
	{
		$this->_nomeSugestao = Basico_OPController_UtilOPController::retornaValorTipado($nomeSugestao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nomeSugestao
	* 
	* @return null|String
	*/
	public function getNomeSugestao()
	{
		return $this->_nomeSugestao;
	}

	/**
	* Set entry tamanhoKylobytes
	* 
	* @param  int $tamanhoKylobytes
	* @return Basico_Model_CpgArquivo
	*/
	public function setTamanhoKylobytes($tamanhoKylobytes)
	{
		$this->_tamanho_kylobytes = Basico_OPController_UtilOPController::retornaValorTipado($tamanhoKylobytes, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry tamanhoKylobytes
	* 
	* @return null|int
	*/
	public function getTamanhoKylobytes()
	{
		return $this->_tamanho_kylobytes;
	}

	/**
	* Set mimeType
	* 
	* @param String $mimeType
	* @return Basico_Model_CpgArquivo
	*/
	public function setMimeType($mimeType)
	{
		$this->_mimeType = Basico_OPController_UtilOPController::retornaValorTipado($mimeType, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get mimeType
	* 
	* @return null|String
	*/
	public function getMimeType()
	{
		return $this->_mimeType;
	}

	/**
	* Set uri
	* 
	* @param String $uri
	* @return Basico_Model_CpgArquivo
	*/
	public function setMimeType($uri)
	{
		$this->_uri = Basico_OPController_UtilOPController::retornaValorTipado($uri, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get mimeType
	* 
	* @return null|String
	*/
	public function getMimeType()
	{
		return $this->_mimeType;
	}

	/**
	* Set uri
	* 
	* @param String $uri
	* @return Basico_Model_CpgArquivo
	*/
	public function setUri($uri)
	{
		$this->_uri = Basico_OPController_UtilOPController::retornaValorTipado($uri, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get uri
	* 
	* @return null|String
	*/
	public function getUri()
	{
		return $this->_uri;
	}

	/**
	* Set remoto
	* 
	* @param Boolean $remoto
	* @return Basico_Model_CpgArquivo
	*/
	public function setRemoto($remoto)
	{
		$this->_remoto = Basico_OPController_UtilOPController::retornaValorTipado($remoto, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get remoto
	* 
	* @return null|Boolean
	*/
	public function getRemoto()
	{
		return $this->_remoto;
	}

	/**
	* Set hits
	* 
	* @param Integer $hits
	* @return Basico_Model_CpgArquivo
	*/
	public function setHits($hits)
	{
		$this->_hits = Basico_OPController_UtilOPController::retornaValorTipado($hits, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get hits
	* 
	* @return null|Integer
	*/
	public function getHits()
	{
		return $this->_hits;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo
	* @return Basico_Model_CpgArquivo
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
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
	* Lazy loads Basico_Model_CpgArquivoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CpgArquivoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_PessoaMapper);
	}
}