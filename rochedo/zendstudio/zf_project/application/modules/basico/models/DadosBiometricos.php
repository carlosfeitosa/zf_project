<?php
/**
 * DadosBiometricos model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DadosBiometricosMapper
 * @subpackage Model
 */
class Basico_Model_DadosBiometricos
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_DadosBiometricosMapper
	 */
	protected $_mapper;
	
	/**
	 * @var Int
	 */
	protected $_pessoa;

	/**
	 * @var String
	 */
	protected $_sexo;
	
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
	 * @return Basico_Model_DadosBiometricos
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
	* Set sexo
	* 
	* @param String $sexo 
	* @return Basico_Model_Sexo
	*/
	public function setSexo($sexo)
	{
		$this->_sexo = (String) $sexo;
		return $this;
	}

	/**
	* Get sexo
	* 
	* @return null|String
	*/
	public function getSexo()
	{
		return $this->_sexo;
	}
	
    /**
	* Set entry pessoa
	* 
	* @param  int $pessoa 
	* @return Basico_Model_DadosBiometricos
	*/
	public function setPessoa($pessoa)
	{
		$this->_pessoa = (int) $pessoa;
		return $this;
	}

	/**
	* Retrieve entry pessoa
	* 
	* @return null|int
	*/
	public function getPessoa()
	{
		return $this->_pessoa;
	}
	
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_DadosBiomentricos
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = (String) $rowinfo;
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
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_DadosBiometricos
	*/
	public function setId($id)
	{
		$this->_id = (int) $id;
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
	* @return Basico_Model_DadosBiometricos
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DadosBiometricosMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DadosBiometricosMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_DadosBiometricosMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_DadosBiometricos
	*/
	public function find($id)
	{
		$this->getMapper()->find($id, $this);
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
