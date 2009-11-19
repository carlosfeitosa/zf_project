<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * MensagemEmail model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_MensagemEmailMapper
 * @subpackage Model
 */
class Default_Model_MensagemEmail
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Default_Model_MensagemEmailMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_destinatariosCopiaCarbonada;
	/**
	 * @var String
	 */
	protected $_destinatariosCopiaCarbonadaCega;
	/**
	 * @var String
	 */
	protected $_responderPara;
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
	 * @return Default_Model_MensagemEmail
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
	* Set destinatariosCopiaCarbonada
	* 
	* @param String $destinatariosCopiaCarbonada 
	* @return Default_Model_DestinatariosCopiaCarbonada
	*/
	public function setDestinatariosCopiaCarbonada($destinatariosCopiaCarbonada)
	{
		$this->_destinatariosCopiaCarbonada = (String) $destinatariosCopiaCarbonada;
		return $this;
	}

	/**
	* Get destinatariosCopiaCarbonada
	* 
	* @return null|String
	*/
	public function getDestinatariosCopiaCarbonada()
	{
		return $this->_destinatariosCopiaCarbonada;
	}
     
	/**
	* Set destinatariosCopiaCarbonadaCega
	* 
	* @param String $destinatariosCopiaCarbonadaCega 
	* @return Default_Model_DestinatariosCopiaCarbonadaCega
	*/
	public function setDestinatariosCopiaCarbonadaCega($destinatariosCopiaCarbonadaCega)
	{
		$this->_destinatariosCopiaCarbonadaCega = (String) $destinatariosCopiaCarbonadaCega;
		return $this;
	}

	/**
	* Get destinatariosCopiaCarbonadaCega
	* 
	* @return null|String
	*/
	public function getDestinatariosCopiaCarbonadaCega()
	{
		return $this->_destinatariosCopiaCarbonadaCega;
	}
     
	/**
	* Set responderPara
	* 
	* @param String $responderPara 
	* @return Default_Model_ResponderPara
	*/
	public function setResponderPara($responderPara)
	{
		$this->_responderPara = (String) $responderPara;
		return $this;
	}

	/**
	* Get responderPara
	* 
	* @return null|String
	*/
	public function getResponderPara()
	{
		return $this->_responderPara;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Default_Model_MensagemEmail
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
	* @return Default_Model_MensagemEmail
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_MensagemEmailMapper instance if no mapper registered.
	* 
	* @return Default_Model_MensagemEmailMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Default_Model_MensagemEmailMapper());
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
	* @return Default_Model_MensagemEmail
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
	

//#BlockStart number=148 id=_myPMYNOmEd6HgL0enKsn3Q_#_0
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=148

}
