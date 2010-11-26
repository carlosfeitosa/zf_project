<?php
/**
 * Telefone model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TelefoneMapper
 * @subpackage Model
 */
class Basico_Model_Telefone
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_TelefoneMapper
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
	protected $_codigoPais;
	/**
	 * @var String
	 */
	protected $_codigoArea;
	/**
	 * @var String
	 */
	protected $_telefone;
	/**
	 * @var String
	 */
	protected $_ramal;
    /**
     * @var Integer
     */
    protected $_categoria;

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
	 * @return Basico_Model_Telefone
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
	* Set codigoPais
	* 
	* @param String $codigoPais 
	* @return Basico_Model_CodigoPais
	*/
	public function setCodigoPais($codigoPais)
	{
		$this->_codigoPais = Basico_UtilControllerController::retornaValorTipado($codigoPais, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get codigoPais
	* 
	* @return null|String
	*/
	public function getCodigoPais()
	{
		return $this->_codigoPais;
	}
     
	/**
	* Set codigoArea
	* 
	* @param String $codigoArea 
	* @return Basico_Model_CodigoArea
	*/
	public function setCodigoArea($codigoArea)
	{
		$this->_codigoArea = Basico_UtilControllerController::retornaValorTipado($codigoArea, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get codigoArea
	* 
	* @return null|String
	*/
	public function getCodigoArea()
	{
		return $this->_codigoArea;
	}
     
	/**
	* Set telefone
	* 
	* @param String $telefone 
	* @return Basico_Model_Telefone
	*/
	public function setTelefone($telefone)
	{
		$this->_telefone = Basico_UtilControllerController::retornaValorTipado($telefone, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get telefone
	* 
	* @return null|String
	*/
	public function getTelefone()
	{
		return $this->_telefone;
	}
     
	/**
	* Set ramal
	* 
	* @param String $ramal 
	* @return Basico_Model_Ramal
	*/
	public function setRamal($ramal)
	{
		$this->_ramal = Basico_UtilControllerController::retornaValorTipado($ramal, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get ramal
	* 
	* @return null|String
	*/
	public function getRamal()
	{
		return $this->_ramal;
	}
     
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Categoria
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_UtilControllerController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
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
	* @return Basico_Model_Telefone
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
	* @return Basico_Model_Telefone
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_TelefoneMapper instance if no mapper registered.
	* 
	* @return Basico_Model_TelefoneMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_TelefoneMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_Telefone
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
