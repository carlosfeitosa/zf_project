<?php
/**
 * Include model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_IncludeMapper
 * @subpackage Model
 */
class Basico_Model_Include
{
	/**
	 * @var Basico_Model_IncludeMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
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
	protected $_uri;
    /**
     * @var Boolean
     */
    protected $_ativo;
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
	 * @return Basico_Model_Include
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
	* @return Basico_Model_Include
	*/
	public function setId($id)
	{
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id,TIPO_INTEIRO,true);
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
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_Include
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria,TIPO_INTEIRO,true);
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
	* Set nome
	* 
	* @param String $nome
	* @return Basico_Model_Include
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
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
	* @return Basico_Model_
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual,TIPO_STRING,true);
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
	* @return Basico_Model_Include
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
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
	* Set uri
	* 
	* @param String $uri 
	* @return Basico_Model_Include
	*/
	public function setUri($uri)
	{
		$this->_uri = Basico_OPController_UtilOPController::retornaValorTipado($uri,TIPO_STRING,true);
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
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Include
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
	* Set datahoraCriacao
	* 
	* @param Date $datahoraCriacao 
	* @return Basico_Model_Include
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao,TIPO_DATE,true);
		return $this;
	}

	/**
	* Get datahoraCriacao
	* 
	* @return null|Date
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}
	
	/**
	* Set datahoraUltimaAtualizacao
	* 
	* @param Date $datahoraUltimaAtualizacao 
	* @return Basico_Model_Include
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao,TIPO_DATE,true);
		return $this;
	}

	/**
	* Get datahoraUltimaAtualizacao
	* 
	* @return null|Date
	*/
	public function getDatahoraUltimaAtualizacao()
	{
		return $this->_datahoraUltimaAtualizacao;
	}
    
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Include
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get rowinfo
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
	* @return Basico_Model_Include
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_IncludeMapper instance if no mapper registered.
	* 
	* @return Basico_Model_IncludeMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_IncludeMapper());
		}
		return $this->_mapper;
	}
}
