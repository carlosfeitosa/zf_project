<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Email model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_EmailMapper
 * @subpackage Model
 */
class Basico_Model_Email
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_EmailMapper
	 */
	protected $_mapper;
		
	/**
	 * @var String
	 */
	protected $_rowinfo;

	/**
	 * @var String
	 */
	protected $_uniqueId;
	/**
	 * @var String
	 */
	protected $_email;
	/**
	 * @var Boolean
	 */
	protected $_validado;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaValidacao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
    /**
     * @var Integer
     */
    protected $_pessoa;

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
	 * @return Basico_Model_Email
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
	* Set uniqueId
	* 
	* @param String $uniqueId 
	* @return Basico_Model_UniqueId
	*/
	public function setUniqueId($uniqueId)
	{
		$this->_uniqueId = (String) $uniqueId;
		return $this;
	}

	/**
	* Get uniqueId
	* 
	* @return null|String
	*/
	public function getUniqueId()
	{
		return $this->_uniqueId;
	}
     
	/**
	* Set email
	* 
	* @param String $email 
	* @return Basico_Model_Email
	*/
	public function setEmail($email)
	{
		$this->_email = strtolower((String) $email);
		return $this;
	}

	/**
	* Get email
	* 
	* @return null|String
	*/
	public function getEmail()
	{
		return $this->_email;
	}
     
	/**
	* Set validado
	* 
	* @param Boolean $validado 
	* @return Basico_Model_Validado
	*/
	public function setValidado($validado)
	{
		$this->_validado = (Boolean) $validado;
		return $this;
	}

	/**
	* Get validado
	* 
	* @return null|Boolean
	*/
	public function getValidado()
	{
		return $this->_validado;
	}
     
	/**
	* Set dataHoraUltimaValidacao
	* 
	* @param String $dataHoraUltimaValidacao 
	* @return Basico_Model_DataHoraUltimaValidacao
	*/
	public function setDataHoraUltimaValidacao($dataHoraUltimaValidacao)
	{
		$this->_dataHoraUltimaValidacao = (String) $dataHoraUltimaValidacao;
		return $this;
	}

	/**
	* Get dataHoraUltimaValidacao
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaValidacao()
	{
		return $this->_dataHoraUltimaValidacao;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Ativo
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
	* Set pessoa
	* 
	* @param int $pessoa 
	* @return Basico_Model_Pessoa
	*/
	public function setPessoa($pessoa)
	{
		$this->_pessoa = (int) $pessoa;
		return $this;
	}

	/**
	* Get pessoa
	* 
	* @return null|int
	*/
	public function getPessoa()
	{
		return $this->_pessoa;
	}
 
    /**
     * Get pessoa object
     * @return null|Pessoa
     */
    public function getPessoaObject()
    {
        $model = new Basico_Model_Pessoa();
        $object = $model->find($this->_pessoa);
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
		$this->_categoria = (int) $categoria;
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
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Email
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
	* @return Basico_Model_Email
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
	* @return Basico_Model_Email
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_EmailMapper instance if no mapper registered.
	* 
	* @return Basico_Model_EmailMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_EmailMapper());
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
	* @return Basico_Model_Email
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
