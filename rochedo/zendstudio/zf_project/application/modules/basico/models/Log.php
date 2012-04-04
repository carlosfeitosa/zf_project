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
	 * @var Basico_Model_LogMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
    /**
     * @var Integer
     */
    protected $_idCategoria;
    /**
     * @var Integer
     */
    protected $_idAssocclPerfil;
	/**
	 * @var Date
	 */
	protected $_datahoraEvento;
	/**
	 * @var String
	 */
	protected $_xml;

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
	* Set idCategoria
	* 
	* @param int $idCategoria
	* @return Basico_Model_Log
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
 
    /**
     * Get categoria object
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }

	/**
	* Set datahoraEvento
	* 
	* @param String $datahoraEvento 
	* @return Basico_Model_Log
	*/
	public function setDatahoraEvento($datahoraEvento)
	{
		$this->_datahoraEvento = Basico_OPController_UtilOPController::retornaValorTipado($datahoraEvento, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraEvento
	* 
	* @return null|String
	*/
	public function getDatahoraEvento()
	{
		return $this->_datahoraEvento;
	}

	/**
	* Set idAssocclPerfil
	* 
	* @param int $idAssocclPerfil 
	* @return Basico_Model_Log
	*/
	public function setIdAssocclPerfil($idAssocclPerfil)
	{
		$this->_idAssocclPerfil = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclPerfil, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idAssocclPerfil
	* 
	* @return null|int
	*/
	public function getIdAssocclPerfil()
	{
		return $this->_idAssocclPerfil;
	}
 
    /**
     * Get assocclPerfil object
     * @return null|PessoasPerfis
     */
    public function getAssocclPerfilObject()
    {
        $model = new Basico_Model_PessoaAssocclPerfil();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAssocclPerfil);
        return $object;
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
}