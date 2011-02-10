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
	protected $_raca;
	
	/**
	 * @var Numeric
	 */
	protected $_altura;
	
	/**
	 * @var Numeric
	 */
	protected $_peso;
	
	/**
	 * @var String
	 */
	protected $_tipoSanguinio;
	
	/**
	 * @var String
	 */
	protected $_historicoMedico;
	
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
	* Set raca
	* 
	* @param String $raca 
	* @return Basico_Model_DadosBiometricos
	*/
	public function setRaca($raca)
	{
		$this->_raca = (String) $raca;
		return $this;
	}

	/**
	* Get raca
	* 
	* @return null|String
	*/
	public function getRaca()
	{
		return $this->_raca;
	}
	
    /**
	* Set altura
	* 
	* @param String $altura 
	* @return Basico_Model_DadosBiometricos
	*/
	public function setAltura($altura)
	{
		$this->_altura = (String) $altura;
		return $this;
	}

	/**
	* Get altura
	* 
	* @return null|String
	*/
	public function getAltura()
	{
		return $this->_altura;
	}
	
    /**
	* Set peso
	* 
	* @param String $peso 
	* @return Basico_Model_DadosBiometricos
	*/
	public function setPeso($peso)
	{
		$this->_peso = (String) $peso;
		return $this;
	}

	/**
	* Get peso
	* 
	* @return null|String
	*/
	public function getPeso()
	{
		return $this->_peso;
	}
	
    /**
	* Set tipoSanguinio
	* 
	* @param String $tipoSanguinio 
	* @return Basico_Model_DadosBiometricos
	*/
	public function setTipoSanguinio($tipoSanguinio)
	{
		$this->_tipoSanguinio = (String) $tipoSanguinio;
		return $this;
	}

	/**
	* Get tipoSanguinio
	* 
	* @return null|String
	*/
	public function getTipoSanguinio()
	{
		return $this->_tipoSanguinio;
	}
	
    /**
	* Set historicoMedico
	* 
	* @param String $historicoMedico 
	* @return Basico_Model_DadosBiometricos
	*/
	public function setHistoricoMedico($historicoMedico)
	{
		$this->_historicoMedico = (String) $historicoMedico;
		return $this;
	}

	/**
	* Get historicoMedico
	* 
	* @return null|String
	*/
	public function getHistoricoMedico()
	{
		return $this->_historicoMedico;
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
