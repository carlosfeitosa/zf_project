<?php
/**
 * Endereco model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_EnderecoMapper
 * @subpackage Model
 */
class Basico_Model_Endereco
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_EnderecoMapper
	 */
	protected $_mapper;

	/**
	 * @var Integer
	 */
	protected $_idGenericoProprietario;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var String
	 */
	protected $_cep;
	/**
	 * @var String
	 */
	protected $_logradouro;
	/**
	 * @var String
	 */
	protected $_numero;
	/**
	 * @var String
	 */
	protected $_complemento;
	/**
	 * @var String
	 */
	protected $_caixaPostal;
	/**
	 * @var Date
	 */
	protected $_dataValidacao;
    /**
     * @var Integer
     */
    protected $_categoria;

    /**
     * @var Integer
     */
    protected $_pais;

    /**
     * @var Integer
     */
    protected $_estado;

    /**
     * @var Integer
     */
    protected $_municipio;

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
			throw new Exception('Invalid property specified');
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
			throw new Exception('Invalid property specified');
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options 
	 * @return Basico_Model_Endereco
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
	* Set idGenericoProprietario
	* 
	* @param Integer $idGenericoProprietario 
	* @return Basico_Model_IdGenericoProprietario
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_UtilControllerController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenericoProprietario
	* 
	* @return null|Integer
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
     
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_Descricao
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_UtilControllerController::retornaValorTipado($descricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get descricao
	* 
	* @return null|String
	*/
	public function getDescricao()
	{
		return $this->_descricao;
	}
     
	/**
	* Set cep
	* 
	* @param String $cep 
	* @return Basico_Model_Cep
	*/
	public function setCep($cep)
	{
		$this->_cep = Basico_UtilControllerController::retornaValorTipado($cep, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get cep
	* 
	* @return null|String
	*/
	public function getCep()
	{
		return $this->_cep;
	}
     
	/**
	* Set logradouro
	* 
	* @param String $logradouro 
	* @return Basico_Model_Logradouro
	*/
	public function setLogradouro($logradouro)
	{
		$this->_logradouro = Basico_UtilControllerController::retornaValorTipado($logradouro, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get logradouro
	* 
	* @return null|String
	*/
	public function getLogradouro()
	{
		return $this->_logradouro;
	}
     
	/**
	* Set numero
	* 
	* @param String $numero 
	* @return Basico_Model_Numero
	*/
	public function setNumero($numero)
	{
		$this->_numero = Basico_UtilControllerController::retornaValorTipado($numero, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get numero
	* 
	* @return null|String
	*/
	public function getNumero()
	{
		return $this->_numero;
	}
     
	/**
	* Set complemento
	* 
	* @param String $complemento 
	* @return Basico_Model_Complemento
	*/
	public function setComplemento($complemento)
	{
		$this->_complemento = Basico_UtilControllerController::retornaValorTipado($complemento, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get complemento
	* 
	* @return null|String
	*/
	public function getComplemento()
	{
		return $this->_complemento;
	}
     
	/**
	* Set caixaPostal
	* 
	* @param String $caixaPostal 
	* @return Basico_Model_CaixaPostal
	*/
	public function setCaixaPostal($caixaPostal)
	{
		$this->_caixaPostal = Basico_UtilControllerController::retornaValorTipado($caixaPostal, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get caixaPostal
	* 
	* @return null|String
	*/
	public function getCaixaPostal()
	{
		return $this->_caixaPostal;
	}
     
	/**
	* Set dataValidacao
	* 
	* @param String $dataValidacao 
	* @return Basico_Model_DataValidacao
	*/
	public function setDataValidacao($dataValidacao)
	{
		$this->_dataValidacao = Basico_UtilControllerController::retornaValorTipado($dataValidacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataValidacao
	* 
	* @return null|String
	*/
	public function getDataValidacao()
	{
		return $this->_dataValidacao;
	}
     
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Categoria
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = (int) Basico_UtilControllerController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get categoria
	* 
	* @return null|int
	*/
	public function getCategoria()
	{
		return $this->_categoria;
	}
 
    /**
     * Get categoria object
     * @return null|Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = $model->find($this->_categoria);
        return $object;
    }
    
	/**
	* Set pais
	* 
	* @param int $pais 
	* @return Basico_Model_Pais
	*/
	public function setPais($pais)
	{
		$this->_pais = Basico_UtilControllerController::retornaValorTipado($pais, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get pais
	* 
	* @return null|int
	*/
	public function getPais()
	{
		return $this->_pais;
	}
 
    /**
     * Get pais object
     * @return null|Pais
     */
    public function getPaisObject()
    {
        $model = new Basico_Model_Pais();
        $object = $model->find($this->_pais);
        return $object;
    }
    
	/**
	* Set estado
	* 
	* @param int $estado 
	* @return Basico_Model_Estado
	*/
	public function setEstado($estado)
	{
		$this->_estado = Basico_UtilControllerController::retornaValorTipado($estado, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get estado
	* 
	* @return null|int
	*/
	public function getEstado()
	{
		return $this->_estado;
	}
 
    /**
     * Get estado object
     * @return null|Estado
     */
    public function getEstadoObject()
    {
        $model = new Basico_Model_Estado();
        $object = $model->find($this->_estado);
        return $object;
    }
    
	/**
	* Set municipio
	* 
	* @param int $municipio 
	* @return Basico_Model_Municipio
	*/
	public function setMunicipio($municipio)
	{
		$this->_municipio = Basico_UtilControllerController::retornaValorTipado($municipio, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get municipio
	* 
	* @return null|int
	*/
	public function getMunicipio()
	{
		return $this->_municipio;
	}
 
    /**
     * Get municipio object
     * @return null|Municipio
     */
    public function getMunicipioObject()
    {
        $model = new Basico_Model_Municipio();
        $object = $model->find($this->_municipio);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Endereco
	*/
	public function setId($id)
	{
		$this->_id = Basico_UtilControllerController::retornaValorTipado($id, TIPO_INTEIRO, true);
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_Endereco
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_EnderecoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_EnderecoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_EnderecoMapper());
		}
		return $this->_mapper;
	}

	
	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_Endereco
	*/
	public function find($id)
	{
		$this->getMapper()->find((Int) $id, $this);
		return $this;
	}

	/**
	* Fetch all entries
	* 
	* @return array
	*/
	public function fetchAll()
	{
		return $this->getMapper()->fetchAll();
	}
	
	/**
	* Fetch a list of entries that satisfy the parameters <params>
	* 
	* @return array
	*/
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		return $this->getMapper()->fetchList($where, $order, $count, $offset);
	}
	   
    /**
    * fetch list of entries satisfying the parameters but allowing a join
    *
    * @return array
    */
    public function fetchJoinList($joins=null, $where=null, $order=null, $count=null, $offset=null)
    {
        return $this->getMapper()->fetchJoinList($joins, $where, $order, $count, $offset);
    }
    
    /**
    * fetch joined list of entries that satisfy the parameters
    *
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby=null, $where=null, $order=null)
    {
        return $this->getMapper()->fetchJoin($jointable, $joinby, $where, $order);
    }

}
