<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Mensagem model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_MensagemMapper
 * @subpackage Model
 */
class Basico_Model_Mensagem
{
	/**
	* @var int
	*/
	protected $_id;
	
	/**
	* @var int
	*/
	protected $_categoria;

	/**
	 * @var Default_Model_MensagemMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_remetente;
	/**
	 * @var String
	 */
	protected $_destinatarios;
	/**
	 * @var String
	 */
	protected $_assunto;
	/**
	 * @var Date
	 */
	protected $_datahoraMensagem;
	/**
	 * @var String
	 */
	protected $_mensagem;
	
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
	 * @return Default_Model_Mensagem
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
	* Set remetente
	* 
	* @param String $remetente 
	* @return Default_Model_Remetente
	*/
	public function setRemetente($remetente)
	{
		$this->_remetente = (String) $remetente;
		return $this;
	}

	/**
	* Get remetente
	* 
	* @return null|String
	*/
	public function getRemetente()
	{
		return $this->_remetente;
	}
     
	/**
	* Set destinatario
	* 
	* @param String $destinatario 
	* @return Default_Model_Destinatario
	*/
	public function setDestinatarios($destinatarios)
	{
		$this->_destinatarios = (String) $destinatarios;
		return $this;
	}

	/**
	* Get destinatario
	* 
	* @return null|String
	*/
	public function getDestinatarios()
	{
		return $this->_destinatarios;
	}
     
	/**
	* Set assunto
	* 
	* @param String $assunto 
	* @return Default_Model_Assunto
	*/
	public function setAssunto($assunto)
	{
		$this->_assunto = (String) $assunto;
		return $this;
	}

	/**
	* Get assunto
	* 
	* @return null|String
	*/
	public function getAssunto()
	{
		return $this->_assunto;
	}
     
	/**
	* Set dataHora
	* 
	* @param String $dataHora 
	* @return Default_Model_DataHora
	*/
	public function setDatahoraMensagem($datahoraMensagem)
	{
		$this->_datahoraMensagem = (String) $datahoraMensagem;
		return $this;
	}

	/**
	* Get dataHora
	* 
	* @return null|String
	*/
	public function getDatahoraMensagem()
	{
		return $this->_datahoraMensagem;
	}
     
	/**
	* Set mensagem
	* 
	* @param String $mensagem 
	* @return Default_Model_Mensagem
	*/
	public function setMensagem($mensagem)
	{
		$this->_mensagem = (String) $mensagem;
		return $this;
	}

	/**
	* Get mensagem
	* 
	* @return null|String
	*/
	public function getMensagem()
	{
		return $this->_mensagem;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Default_Model_Mensagem
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
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_Mensagem
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = (int) $categoria;
		return $this;
	}
	
    /**
	* Retrieve entry idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_categoria;
	}
	
	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_Mensagem
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = (String) $rowinfo;
		return $this;
	}
	
    /**
	* Retrieve entry rowInfo
	* 
	* @return null|string
	*/
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}
	
	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Default_Model_Mensagem
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_MensagemMapper instance if no mapper registered.
	* 
	* @return Default_Model_MensagemMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_MensagemMapper());
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
	* @return Default_Model_Mensagem
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
	

//#BlockStart number=148 id=_kDO0oMIwEd6r_uu4CwoKLQ_#_0
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=148

}
