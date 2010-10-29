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
	 * @var Integer
	 */
	protected $_modulo;
	
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
		$this->_tabelaEstrangeira = Basico_UtilControllerController::retornaValorTipado($tabelaEstrangeira,TIPO_STRING,true);
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
		$this->_campoEstrangeiro = Basico_UtilControllerController::retornaValorTipado($campoEstrangeiro,TIPO_STRING,true);
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
		$this->_id = Basico_UtilControllerController::retornaValorTipado($id,TIPO_INTEIRO,true);
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
	   	$this->_categoria = Basico_UtilControllerController::retornaValorTipado($categoria,TIPO_INTEIRO,true);
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
	 * Set modulo
	 * @param int $modulo
	 * @return Basico_Model_CategoriaChaveEstrangeira
	 */
	public function setModulo($modulo)
	{
	   	$this->_modulo = Basico_UtilControllerController::retornaValorTipado($modulo,TIPO_INTEIRO,true);
		return $this;
	}
	
	/**
	 * Get modulo
	 * @return null|int
	 */
	public function getModulo()
	{
		return $this->_modulo;
	}
	
    /**
     * Get modulo object
     * @return null|Basico_Model_Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = $model->find($this->_modulo);
        return $object;
    }
	
	/**
	 * Set rowinfo
	 * @param String $rowinfo
	 * @return unknown_type
	 */
	public function setRowinfo($rowinfo)
	{
	    $this->_rowinfo = Basico_UtilControllerController::retornaValorTipado($rowinfo,TIPO_STRING,true);
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
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_CategoriaChaveEstrangeira
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
