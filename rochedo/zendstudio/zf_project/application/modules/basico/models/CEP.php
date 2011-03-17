<?php
/**
 * CEP model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CEPMapper
 * @subpackage Model
 */
class Basico_Model_CEP
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_CEPMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_cep;
	/**
	 * @var Date
	 */
	protected $_dataUltimaAtualizacao;
    /**
     * @var Integer
     */
    protected $_pais;

    /**
     * @var Integer
     */
    protected $_categoria;

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
	 * @return Basico_Model_CEP
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
	* Set cep
	* 
	* @param String $cep 
	* @return Basico_Model_CEP
	*/
	public function setCep($cep)
	{
		$this->_cep = Basico_OPController_UtilOPController::retornaValorTipado($cep, TIPO_STRING, true);
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
	* Set dataUltimaAtualizacao
	* 
	* @param String $dataUltimaAtualizacao 
	* @return Basico_Model_DataUltimaAtualizacao
	*/
	public function setDataUltimaAtualizacao($dataUltimaAtualizacao)
	{
		$this->_dataUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataUltimaAtualizacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDataUltimaAtualizacao()
	{
		return $this->_dataUltimaAtualizacao;
	}
     
	/**
	* Set pais
	* 
	* @param int $pais 
	* @return Basico_Model_Pais
	*/
	public function setPais($pais)
	{
		$this->_pais = Basico_OPController_UtilOPController::retornaValorTipado($pais, TIPO_INTEIRO, true);;
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
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Categoria
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
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
	* Set estado
	* 
	* @param int $estado 
	* @return Basico_Model_Estado
	*/
	public function setEstado($estado)
	{
		$this->_estado = Basico_OPController_UtilOPController::retornaValorTipado($estado, TIPO_INTEIRO, true);
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
		$this->_municipio = Basico_OPController_UtilOPController::retornaValorTipado($municipio, TIPO_INTEIRO, true);
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
	* @return Basico_Model_CEP
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_CEP
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CEPMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CEPMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_CEPMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_CEP
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
