<?php
/**
 * CategoriaChaveEstrangeira model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CategoriaChaveEstrangeiraMapper
 * @subpackage Model
 */
class Basico_Model_CategoriaChaveEstrangeira
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_CategoriaChaveEstrangeiraMapper
	 */
	protected $_mapper;
    /**
     * 
     * @var Integer
     */
	protected $_categoria;
	/**
	 * @var String
	 */
	protected $_tabelaEstrangeira;
	/**
	 * @var String
	 */
	protected $_campoEstrangeiro;
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
	 * @return Basico_Model_CategoriaChaveEstrangeira
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
	* Set tabelaEstrangeira
	* 
	* @param String $tabela_estrangeira 
	* @return Basico_Model_CategoriaChaveEstrangeira
	*/
	public function setTabelaEstrangeira($tabelaEstrangeira)
	{
		$this->_tabelaEstrangeira = (String) $tabelaEstrangeira;
		return $this;
	}

	/**
	* Get tabelaEstrangeira
	* 
	* @return null|String
	*/
	public function getTabelaEstrangeira()
	{
		return $this->_tabelaEstrangeira;
	}
     
	/**
	* Set campoEstrangeiro
	* 
	* @param String $campoEstrangeiro 
	* @return Basico_Model_CategoriaChaveEstrangeira
	*/
	public function setCampoEstrangeiro($campoEstrangeiro)
	{
		$this->_campoEstrangeiro = (String) $campoEstrangeiro;
		return $this;
	}

	/**
	* Get campoEstrangeiro
	* 
	* @return null|String
	*/
	public function getCampoEstrangeiro()
	{
		return $this->_campoEstrangeiro;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_CategoriaChaveEstrangeira
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
	 * Set categoria
	 * @param int $categoria
	 * @return unknown_type
	 */
	public function setCategoria($categoria)
	{
	   	$this->_categoria = (int) $categoria;
		return $this;
	}
	
	/**
	 * Get categoria
	 * @return null|int
	 */
	public function getCategoria()
	{
		return $this->_categoria;
	}
	
    /**
     * Get categoria object
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = $model->find($this->_categoria);
        return $object;
    }
	
	/**
	 * Set rowinfo
	 * @param String $rowinfo
	 * @return unknown_type
	 */
	public function setRowinfo($rowinfo)
	{
	    $this->_rowinfo = (String) $rowinfo;
	    return $this;	
	}
	
	/**
	 * Get rowinfo
	 * @return null|int
	 */
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}

	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_CategoriaChaveEstrangeira
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CategoriaChaveEstrangeiraMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CategoriaChaveEstrangeiraMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_CategoriaChaveEstrangeiraMapper());
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
	* @return Basico_Model_CategoriaChaveEstrangeira
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
