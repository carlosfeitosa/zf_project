<?php
/**
 * Pessoa model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaMapper
 * @subpackage Model
 */
class Basico_Model_Pessoa
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Integer
	 */
	protected $_perfilPadrao;

	/**
	 * @var Basico_Model_PessoaMapper
	 */
	protected $_mapper;
	
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
	 * @return Basico_Model_Pessoa
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
	* @return Basico_Model_Pessoa
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
	* Set entry perfilPadrao
	* 
	* @param  int $perfilPadrao 
	* @return Basico_Model_Pessoa
	*/
	public function setPerfilPadrao($perfilPadrao)
	{
		$this->_perfilPadrao = Basico_OPController_UtilOPController::retornaValorTipado($perfilPadrao, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry perfilPadrao
	* 
	* @return null|int
	*/
	public function getPerfilPadrao()
	{
		return $this->_perfilPadrao;
	}

	public function getPerfilPadraoObject()
	{
		// instanciando o modelo perfil
		$model = new Basico_Model_Perfil();

		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_perfilPadrao);

        // retornando o objeto
        return $object;
	}

	/**
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_Pessoa
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_Pessoa
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PessoaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PessoaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_PessoaMapper());
		}
		return $this->_mapper;
	}
}
