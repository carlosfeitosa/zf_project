<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Log model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_LogMapper
 * @subpackage Model
 */
class Basico_Model_Log
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Default_Model_LogMapper
	 */
	protected $_mapper;

	/**
	 * @var Date
	 */
	protected $_dataHoraEvento;
	/**
	 * @var String
	 */
	protected $_xml;
    /**
     * @var Integer
     */
    protected $_pessoasperfis;

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
	 * @return Default_Model_Log
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
	* Set dataHoraEvento
	* 
	* @param String $dataHoraEvento 
	* @return Default_Model_DataHoraEvento
	*/
	public function setDataHoraEvento($dataHoraEvento)
	{
		$this->_dataHoraEvento = (String) $dataHoraEvento;
		return $this;
	}

	/**
	* Get dataHoraEvento
	* 
	* @return null|String
	*/
	public function getDataHoraEvento()
	{
		return $this->_dataHoraEvento;
	}

	/**
	* Get xml
	* 
	* @return null|String
	*/
	public function getXml()
	{
		return $this->_xml;
	}
     
	/**
	* Set pessoasperfis
	* 
	* @param int $pessoasperfis 
	* @return Default_Model_Pessoasperfis
	*/
	public function setPessoasperfis($pessoasperfis)
	{
		$this->_pessoasperfis = (int) $pessoasperfis;
		return $this;
	}

	/**
	* Get pessoasperfis
	* 
	* @return null|int
	*/
	public function getPessoasperfis()
	{
		return $this->_pessoasperfis;
	}
 
    /**
     * Get pessoasperfis object
     * @return null|PessoasPerfis
     */
    public function getPessoasperfisObject()
    {
        $model = new Default_Model_Pessoasperfis();
        $object = $model->find($this->_pessoasperfis);
        return $object;
    }
    
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Default_Model_Categoria
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = (int) $categoria;
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
        $model = new Default_Model_Categoria();
        $object = $model->find($this->_categoria);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Default_Model_Log
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
	* @return Default_Model_Log
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_LogMapper instance if no mapper registered.
	* 
	* @return Default_Model_LogMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Default_Model_LogMapper());
		}
		return $this->_mapper;
	}

	/**
	* Save the current entry
	* 
	* @return void
	*/
	public function save()
	{
		$this->getMapper()->save($this);
	}
	
	/**
	 * Delete the current entry
	 * @return void
	 */
	public function delete()
	{
		$this->getMapper()->delete($this);
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Default_Model_Log
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
