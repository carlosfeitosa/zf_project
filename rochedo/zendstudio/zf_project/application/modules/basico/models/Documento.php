<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Documento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DocumentoMapper
 * @subpackage Model
 */
class Basico_Model_Documento
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_DocumentoMapper
	 */
	protected $_mapper;

	/**
	 * @var Integer
	 */
	protected $_idGenericoProprietario;
	/**
	 * @var String
	 */
	protected $_numero;
	/**
	 * @var String
	 */
	protected $_orgaoEmissor;
	/**
	 * @var Date
	 */
	protected $_dataEmissao;
	/**
	 * @var String
	 */
	protected $_descricao;
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
	 * @return Basico_Model_Documento
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
	* @return Basico_Model_Documento
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
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
	* Set numero
	* 
	* @param String $numero 
	* @return Basico_Model_Documento
	*/
	public function setNumero($numero)
	{
		$this->_numero = Basico_OPController_UtilOPController::retornaValorTipado($numero, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get numero
	* 
	* @return null|String
	*/
	public function getNumero()
	{
		return $this->_numero;
	}
     
	/**
	* Set orgaoEmissor
	* 
	* @param String $orgaoEmissor 
	* @return Basico_Model_Documento
	*/
	public function setOrgaoEmissor($orgaoEmissor)
	{
		$this->_orgaoEmissor = Basico_OPController_UtilOPController::retornaValorTipado($orgaoEmissor, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get orgaoEmissor
	* 
	* @return null|String
	*/
	public function getOrgaoEmissor()
	{
		return $this->_orgaoEmissor;
	}
     
	/**
	* Set dataEmissao
	* 
	* @param String $dataEmissao 
	* @return Basico_Model_Documento
	*/
	public function setDataEmissao($dataEmissao)
	{
		$this->_dataEmissao = Basico_OPController_UtilOPController::retornaValorTipado($dataEmissao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataEmissao
	* 
	* @return null|String
	*/
	public function getDataEmissao()
	{
		return $this->_dataEmissao;
	}
     
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_Documento
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
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Documento
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
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_Categoria();
        // recuperando objeto
        $object = $model->find($this->_categoria);
        // retornando objeto
        return $object;
    }

   /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Documento
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
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
	* @return Basico_Model_Documento
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
	* @return Basico_Model_Documento
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DocumentoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DocumentoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_DocumentoMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_Documento
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
