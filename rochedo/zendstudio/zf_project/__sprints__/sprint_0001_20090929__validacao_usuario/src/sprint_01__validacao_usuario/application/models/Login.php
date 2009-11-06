<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Login model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_LoginMapper
 * @subpackage Model
 */
class Default_Model_Login
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Default_Model_LoginMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_login;
	/**
	 * @var String
	 */
	protected $_senha;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var Integer
	 */
	protected $_tentativasFalhas;
	/**
	 * @var Boolean
	 */
	protected $_travado;
	/**
	 * @var Boolean
	 */
	protected $_resetado;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimoLogon;
	/**
	 * @var String
	 */
	protected $_observacoes;
	/**
	 * @var Boolean
	 */
	protected $_podeExpirar;
	/**
	 * @var Date
	 */
	protected $_dataHoraProximaExpiracao;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaExpiracao;
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
	 * @return Default_Model_Login
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
	* Set login
	* 
	* @param String $login 
	* @return Default_Model_Login
	*/
	public function setLogin($login)
	{
		$this->_login = (String) $login;
		return $this;
	}

	/**
	* Get login
	* 
	* @return null|String
	*/
	public function getLogin()
	{
		return $this->_login;
	}
     
	/**
	* Set senha
	* 
	* @param String $senha 
	* @return Default_Model_Senha
	*/
	public function setSenha($senha)
	{
		$this->_senha = (String) $senha;
		return $this;
	}

	/**
	* Get senha
	* 
	* @return null|String
	*/
	public function getSenha()
	{
		return $this->_senha;
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
	* Set tentativasFalhas
	* 
	* @param Integer $tentativasFalhas 
	* @return Default_Model_TentativasFalhas
	*/
	public function setTentativasFalhas($tentativasFalhas)
	{
		$this->_tentativasFalhas = (Integer) $tentativasFalhas;
		return $this;
	}

	/**
	* Get tentativasFalhas
	* 
	* @return null|Integer
	*/
	public function getTentativasFalhas()
	{
		return $this->_tentativasFalhas;
	}
     
	/**
	* Set travado
	* 
	* @param Boolean $travado 
	* @return Default_Model_Travado
	*/
	public function setTravado($travado)
	{
		$this->_travado = (Boolean) $travado;
		return $this;
	}

	/**
	* Get travado
	* 
	* @return null|Boolean
	*/
	public function getTravado()
	{
		return $this->_travado;
	}
     
	/**
	* Set resetado
	* 
	* @param Boolean $resetado 
	* @return Default_Model_Resetado
	*/
	public function setResetado($resetado)
	{
		$this->_resetado = (Boolean) $resetado;
		return $this;
	}

	/**
	* Get resetado
	* 
	* @return null|Boolean
	*/
	public function getResetado()
	{
		return $this->_resetado;
	}
     
	/**
	* Set dataHoraUltimoLogon
	* 
	* @param String $dataHoraUltimoLogon 
	* @return Default_Model_DataHoraUltimoLogon
	*/
	public function setDataHoraUltimoLogon($dataHoraUltimoLogon)
	{
		$this->_dataHoraUltimoLogon = (String) $dataHoraUltimoLogon;
		return $this;
	}

	/**
	* Get dataHoraUltimoLogon
	* 
	* @return null|String
	*/
	public function getDataHoraUltimoLogon()
	{
		return $this->_dataHoraUltimoLogon;
	}
     
	/**
	* Set observacoes
	* 
	* @param String $observacoes 
	* @return Default_Model_Observacoes
	*/
	public function setObservacoes($observacoes)
	{
		$this->_observacoes = (String) $observacoes;
		return $this;
	}

	/**
	* Get observacoes
	* 
	* @return null|String
	*/
	public function getObservacoes()
	{
		return $this->_observacoes;
	}
     
	/**
	* Set podeExpirar
	* 
	* @param Boolean $podeExpirar 
	* @return Default_Model_PodeExpirar
	*/
	public function setPodeExpirar($podeExpirar)
	{
		$this->_podeExpirar = (Boolean) $podeExpirar;
		return $this;
	}

	/**
	* Get podeExpirar
	* 
	* @return null|Boolean
	*/
	public function getPodeExpirar()
	{
		return $this->_podeExpirar;
	}
     
	/**
	* Set dataHoraProximaExpiracao
	* 
	* @param String $dataHoraProximaExpiracao 
	* @return Default_Model_DataHoraProximaExpiracao
	*/
	public function setDataHoraProximaExpiracao($dataHoraProximaExpiracao)
	{
		$this->_dataHoraProximaExpiracao = (String) $dataHoraProximaExpiracao;
		return $this;
	}

	/**
	* Get dataHoraProximaExpiracao
	* 
	* @return null|String
	*/
	public function getDataHoraProximaExpiracao()
	{
		return $this->_dataHoraProximaExpiracao;
	}
     
	/**
	* Set dataHoraUltimaExpiracao
	* 
	* @param String $dataHoraUltimaExpiracao 
	* @return Default_Model_DataHoraUltimaExpiracao
	*/
	public function setDataHoraUltimaExpiracao($dataHoraUltimaExpiracao)
	{
		$this->_dataHoraUltimaExpiracao = (String) $dataHoraUltimaExpiracao;
		return $this;
	}

	/**
	* Get dataHoraUltimaExpiracao
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaExpiracao()
	{
		return $this->_dataHoraUltimaExpiracao;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Default_Model_Login
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
	* @return Default_Model_Login
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_LoginMapper instance if no mapper registered.
	* 
	* @return Default_Model_LoginMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Default_Model_LoginMapper());
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
	* @return Default_Model_Login
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
	

//#BlockStart number=13 id=_nhohcKoDEd687LtTWUTtuQ_#_0
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=13

}
