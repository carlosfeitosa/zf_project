<?php
/**
 * Log model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_LogMapper
 * @subpackage Model
 */
class Basico_Model_Log
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_LogMapper
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
	 * @var String
	 */
	protected $_descricao;
    /**
     * @var Integer
     */
    protected $_pessoaperfil;

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
	 * @return Basico_Model_Log
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
	* @return Basico_Model_DataHoraEvento
	*/
	public function setDataHoraEvento($dataHoraEvento)
	{
		$this->_dataHoraEvento = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraEvento, TIPO_STRING, true);
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
	* Set xml
	* 
	* @param String $xml 
	* @return Basico_Model_Xml
	*/
	public function setXml($xml)
	{
		$this->_xml = Basico_OPController_UtilOPController::retornaValorTipado($xml, TIPO_STRING, true);
		return $this;
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
	* Set descricao
	* 
	* @param String $xml 
	* @return Basico_Model_Xml
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING, true);
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
	* Set pessoasperfis
	* 
	* @param int $pessoasperfis 
	* @return Basico_Model_Pessoasperfis
	*/
	public function setPessoaPerfil($pessoaperfil)
	{
		$this->_pessoaperfil = Basico_OPController_UtilOPController::retornaValorTipado($pessoaperfil, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get pessoaperfil
	* 
	* @return null|int
	*/
	public function getPessoaPerfil()
	{
		return $this->_pessoaperfil;
	}
 
    /**
     * Get pessoaperfil object
     * @return null|PessoasPerfis
     */
    public function getPessoaPerfilObject()
    {
        $model = new Basico_Model_PessoaPerfil();
        $object = $model->find($this->_pessoaperfil);
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
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Log
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
	* @return Basico_Model_Log
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_LogMapper instance if no mapper registered.
	* 
	* @return Basico_Model_LogMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_LogMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_Log
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
