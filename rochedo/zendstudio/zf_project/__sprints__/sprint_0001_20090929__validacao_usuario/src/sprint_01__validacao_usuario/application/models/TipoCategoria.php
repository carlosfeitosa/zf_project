<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * TipoCategoria model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_TipoCategoriaMapper
 * @subpackage Model
 */
class Default_Model_TipoCategoria
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Default_Model_TipoCategoriaMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_descricao;
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
	 * @return Default_Model_TipoCategoria
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
	* Set nome
	* 
	* @param String $nome 
	* @return Default_Model_Nome
	*/
	public function setNome($nome)
	{
		$this->_nome = (String) $nome;
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
	* Set descricao
	* 
	* @param String $descricao 
	* @return Default_Model_Descricao
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = (String) $descricao;
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
	* Set entry id
	* 
	* @param  int $id 
	* @return Default_Model_TipoCategoria
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
	* @return Default_Model_TipoCategoria
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_TipoCategoriaMapper instance if no mapper registered.
	* 
	* @return Default_Model_TipoCategoriaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Default_Model_TipoCategoriaMapper());
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
	* @return Default_Model_TipoCategoria
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
	

//#BlockStart number=79 id=_Cx0PkKw9Ed68D_d-n4iFew_#_0
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=79

}
