<?php
/**
 * Modulo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ModuloMapper
 * @subpackage Model
 */
class Basico_Model_Modulo
{
	/**
	 * @var Basico_Model_ModuloMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
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
	 * @var Date
	 */
	protected $_datahoraCriacao;
	/**
	 * @var Date
	 */
	protected $_datahoraUltimaAtualizacao;
    /**
     * @var String
     */
    protected $_rowinfo;

	/**
	 * Constructor
	 * 
	 * @param  array|null $options 
	 * @return void
	 */
	public function __construct(array $options = null)
	{
		if (is_array($options)) 
		{
			$this->setOptions($options);
		}
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * @param  mixed $value 
	 * @return void
	 */
	public function __set($name, $value)
	{
		$method = 'set' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
		}
		$this->$method($value);
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * @return mixed
	 */
	public function __get($name)
	{
		$method = 'get' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options 
	 * @return Basico_Model_Modulo
	 */
	public function setOptions(array $options)
	{
		$methods = get_class_methods($this);
		foreach ($options as $key => $value) 
		{
			$method = 'set' . ucfirst($key);
			if (in_array($method, $methods)) 
			{
			    $this->$method($value);
			}
		}
		return $this;
	}

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Modulo
	*/
	public function setId($id)
	{
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry id
	* 
	* @return null|int
	*/
	public function getId()
	{
		return $this->_id;
	}

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
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_Modulo
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacaoDepreciacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraCriacao
	* 
	* @return null|String
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}

	/**
	* Set datahoraUltimaAtualizacao
	* 
	* @param String $datahoraUltimaAtualizacao 
	* @return Basico_Model_Modulo
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimaAtulizacao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaAtualizacao()
	{
		return $this->_datahoraUltimaAtualizacao;
	}

    /**
	* Set entry rowinfo
	* 
	* @param  String $rowinfo 
	* @return Basico_Model_Modulo
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Retrieve entry rowinfo
	* 
	* @return null|String
	*/
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}

	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_Modulo
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
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
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_ModuloMapper());
		}
		return $this->_mapper;
	}
}