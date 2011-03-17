<?php 
/**
 * Token model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TokenMapper
 * @subpackage Model
 */
class Basico_Model_Token
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_TokenMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_token;
	/**
	 * @var Date
	 */
	protected $_datahoraExpiracao;
	/**
	 * @var Integer
	 */
	protected $_idGenerico;
    /**
     * @var Integer
     */
    protected $_categoria;
    
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
	 * @return Basico_Model_Token
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
	* Set token
	* 
	* @param String $token 
	* @return Basico_Model_Token
	*/
	public function setToken($token)
	{
		$this->_token = Basico_OPController_UtilOPController::retornaValorTipado($token, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get token
	* 
	* @return null|String
	*/
	public function getToken()
	{
		return $this->_token;
	}
     
	/**
	* Set datahoraExpiracao
	* 
	* @param String $datahora_expiracao 
	* @return Basico_Model_Token
	*/
	public function setDatahoraExpiracao($datahoraExpiracao)
	{
		$this->_datahoraExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraExpiracao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get datahoraExpiracao
	* 
	* @return null|String
	*/
	public function getDatahoraExpiracao()
	{
		return $this->_datahoraExpiracao;
	}
     
	/**
	* Set id_generico
	* 
	* @param Integer $id_generico 
	* @return Basico_Model_Token
	*/
	public function setIdGenerico($idGenerico)
	{
		$this->_idGenerico = Basico_OPController_UtilOPController::retornaValorTipado($idGenerico, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenerico
	* 
	* @return null|Integer
	*/
	public function getIdGenerico()
	{
		return $this->_idGenerico;
	}
     
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Token
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
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Token
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
	* Set entry rowinfo
	* 
	* @param  String $rowinfo 
	* @return Basico_Model_Token
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
	* @return Basico_Model_Token
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_TokenMapper instance if no mapper registered.
	* 
	* @return Basico_Model_TokenMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_TokenMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_Token
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
	
}