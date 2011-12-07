<?php
/**
 * DadosPessoais model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DadosPessoaisMapper
 * @subpackage Model
 */
class Basico_Model_DadosPessoais
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_DadosPessoaisMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_nome;
	
	/**
	 * @var String
	 */
	protected $_nomePai;
	
	/**
	 * @var String
	 */
	protected $_nomeMae;
	
	/**
	* @var int
	*/
	protected $_pessoa;
	
	/**
	* @var int
	*/
	protected $_municipioNascimento;
	
	/**
	 * @var String
	 */
	protected $_dataNascimento;
	
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
	 * @return Basico_Model_DadosPessoais
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
	* @return Basico_Model_DadosPessoais
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
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
	* Get nomePai
	* 
	* @return null|String
	*/
	public function getNomePai()
	{
		return $this->_nomePai;
	}
	
    /**
	* Get nomeMae
	* 
	* @return null|String
	*/
	public function getNomeMae()
	{
		return $this->_nomeMae;
	}

	/**
	* Get dataNascimento
	* 
	* @return null|String
	*/
	public function getDataNascimento()
	{
		return $this->_dataNascimento;
	}
	
    /**
	* Set dataNascimento
	* 
	* @param String $dataNascimento 
	* @return Basico_Model_DadosPessoais
	*/
	public function setDataNascimento($dataNascimento)
	{
		$this->_dataNascimento = Basico_OPController_UtilOPController::retornaValorTipado($dataNascimento,TIPO_DATE,true);
		return $this;
	}
	
	/**
	* Set entry idPessoa
	* 
	* @param  int $idPessoa
	* @return Basico_Model_DadosPessoais
	*/
	public function setPessoa($idPessoa)
	{
		$this->_pessoa = Basico_OPController_UtilOPController::retornaValorTipado($idPessoa,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry idPessoa
	* 
	* @return null|int
	*/
	public function getPessoa()
	{
		return $this->_pessoa;
	}
	
	/**
	* Set entry idMunicipioNascimento
	* 
	* @param  int $idMunicipioNascimento
	* @return Basico_Model_DadosPessoais
	*/
	public function setMunicipioNascimento($idMunicipioNascimento)
	{
		$this->_municipioNascimento = Basico_OPController_UtilOPController::retornaValorTipado($idMunicipioNascimento,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry idMunicipioNascimento
	* 
	* @return null|int
	*/
	public function getMunicipioNascimento()
	{
		return $this->_municipioNascimento;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_DadosPessoais
	*/
	public function setId($id)
	{
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id,TIPO_INTEIRO,true);
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
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_Xml
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo,TIPO_STRING,true);
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_DadosPessoais
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DadosPessoaisMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DadosPessoaisMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_DadosPessoaisMapper());
		}
		return $this->_mapper;
	}
}
