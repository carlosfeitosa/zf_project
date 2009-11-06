<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Categoria model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_CategoriaMapper
 * @subpackage Model
 */
class Default_Model_Categoria
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Default_Model_CategoriaMapper
	 */
	protected $_mapper;

	/**
	 * @var Integer
	 */
	protected $_nivel;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
    /**
     * @var Integer
     */
    protected $_tipoCategoria;

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
	 * @return Default_Model_Categoria
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
	* Set nivel
	* 
	* @param Integer $nivel 
	* @return Default_Model_Nivel
	*/
	public function setNivel($nivel)
	{
		$this->_nivel = (Integer) $nivel;
		return $this;
	}

	/**
	* Get nivel
	* 
	* @return null|Integer
	*/
	public function getNivel()
	{
		return $this->_nivel;
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
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Default_Model_Ativo
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = (Boolean) $ativo;
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
	* Set tipoCategoria
	* 
	* @param int $tipoCategoria 
	* @return Default_Model_TipoCategoria
	*/
	public function setTipoCategoria($tipoCategoria)
	{
		$this->_tipoCategoria = (int) $tipoCategoria;
		return $this;
	}

	/**
	* Get tipoCategoria
	* 
	* @return null|int
	*/
	public function getTipoCategoria()
	{
		return $this->_tipoCategoria;
	}
 
    /**
     * Get tipoCategoria object
     * @return null|TipoCategoria
     */
    public function getTipoCategoriaObject()
    {
        $model = new Default_Model_TipoCategoria();
        $object = $model->find($this->_tipoCategoria);
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
	* @return Default_Model_Categoria
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
	* @return Default_Model_Categoria
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_CategoriaMapper instance if no mapper registered.
	* 
	* @return Default_Model_CategoriaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Default_Model_CategoriaMapper());
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
	* @return Default_Model_Categoria
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
	

//#BlockStart number=40 id=_0N60kKoIEd687LtTWUTtuQ_#_0
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=40

}
