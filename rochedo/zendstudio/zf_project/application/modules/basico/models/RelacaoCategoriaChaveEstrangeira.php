<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * RelacaoCategoriaChaveEstrangeira model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_RelacaoCategoriaChaveEstrangeiraMapper
 * @subpackage Model
 */
class Basico_Model_RelacaoCategoriaChaveEstrangeira
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_RelacaoCategoriaChaveEstrangeiraMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_tabelaOrigem;
	/**
	 * @var String
	 */
	protected $_campoOrigem;
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
	 * @return Basico_Model_RelacaoCategoriaChaveEstrangeira
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
	* Set tabelaOrigem
	* 
	* @param String $tabelaOrigem 
	* @return Basico_Model_TabelaOrigem
	*/
	public function setTabelaOrigem($tabelaOrigem)
	{
		$this->_tabelaOrigem = (String) $tabelaOrigem;
		return $this;
	}

	/**
	* Get tabelaOrigem
	* 
	* @return null|String
	*/
	public function getTabelaOrigem()
	{
		return $this->_tabelaOrigem;
	}
     
	/**
	* Set campoOrigem
	* 
	* @param String $campoOrigem 
	* @return Basico_Model_CampoOrigem
	*/
	public function setCampoOrigem($campoOrigem)
	{
		$this->_campoOrigem = (String) $campoOrigem;
		return $this;
	}

	/**
	* Get campoOrigem
	* 
	* @return null|String
	*/
	public function getCampoOrigem()
	{
		return $this->_campoOrigem;
	}

	/**
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_Template
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
	* @return Basico_Model_RelacaoCategoriaChaveEstrangeira
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
	* @return Basico_Model_RelacaoCategoriaChaveEstrangeira
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_RelacaoCategoriaChaveEstrangeiraMapper instance if no mapper registered.
	* 
	* @return Basico_Model_RelacaoCategoriaChaveEstrangeiraMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_RelacaoCategoriaChaveEstrangeiraMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_RelacaoCategoriaChaveEstrangeira
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
