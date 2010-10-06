<?php
/**
 * DadosPessoasPerfis model
 *
 * Utiliza o mapper para persistir os dados.
 * 
 * @uses       Basico_Model_DadosPessoasPerfisMapper
 * @subpackage Model
 */
class Basico_Model_DadosPessoasPerfis
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_DadosPessoasPerfisMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_assinaturaMensagemEmail;
	
	/**
	 * 
	 * @var int
	 */
	protected $_idPessoaPerfil;
	
	
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
	 * @return Basico_Model_DadosPessoasPerfis
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
	 * Set idPessoaPerfil
	 * 
	 * @param int $idPessoaPerfil
	 * @return Basico_Model_DadosPessoasPerfis
	 */
	public function setIdPessoaPerfil($idPessoaPerfil) 
	{
		$this->_idPessoaPerfil = Basico_UtilControllerController::retornaValorTipado($idPessoaPerfil,TIPO_INTEIRO,true);
		return $this;
		
	}
	
	/**
	 * Get idPessoaPerfil
	 * @return null|int
	 */
	public function getIdPessoaPerfil()
	{
		return $this->_idPessoaPerfil;
	}
    
	/**
	* Set assinaturaMensagemEmail
	* 
	* @param String $assinaturaMensagemEmail 
	* @return Basico_Model_AssinaturaMensagemEmail
	*/
	public function setAssinaturaMensagemEmail($assinaturaMensagemEmail)
	{
		$this->_assinaturaMensagemEmail = Basico_UtilControllerController::retornaValorTipado($assinaturaMensagemEmail,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get assinaturaMensagemEmail
	* 
	* @return null|String
	*/
	public function getAssinaturaMensagemEmail()
	{
		return $this->_assinaturaMensagemEmail;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_DadosPessoasPerfis
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_DadosPessoasPerfis
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DadosPessoasPerfisMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DadosPessoasPerfisMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_DadosPessoasPerfisMapper());
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
	* @return Basico_Model_DadosPessoasPerfis
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
