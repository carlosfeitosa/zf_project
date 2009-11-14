<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Mensageiro model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_MensageiroMapper
 * @subpackage Model
 */
class Basico_Model_Mensageiro
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Default_Model_MensageiroMapper
	 */
	protected $_mapper;

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
	 * @return Default_Model_Mensageiro
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
	* @return Default_Model_Mensageiro
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
	* @return Default_Model_Mensageiro
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_MensageiroMapper instance if no mapper registered.
	* 
	* @return Default_Model_MensageiroMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_MensageiroMapper());
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
	* @return Default_Model_Mensageiro
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
	
	public function enviar($remetente, $nomeRemetente, $destinatario, $nomeDestinatario,
	                       $assunto, $corpoMensagem, $tipoMensagem=null) {
		
		if ($tipoMensagem === null){
			$tipoMensagem = MENSAGEM_EMAIL_SIMPLES;
		}
		if ($tipoMensagem == MENSAGEM_EMAIL_SIMPLES) {
			
			if ($remetente === null) {
				$remetente = 'sistema@rochedoproject.com';
			}
			$novaMensagem = new Basico_Model_Mensagem();
	        $novaMensagem->setRemetente($remetente);
	        $novaMensagem->setDestinatario($destinatario);
	        $novaMensagem->setAssunto($assunto);
	        $novaMensagem->setDestinatario($destinatario);
	        $novaMensagem->setMensagem($corpoMensagem);
	        $novaMensagem->setDataHora(getdate(time()));
	        $novaMensagem->setIdCategoria(2);
	        $novaMensagem->save();
	        
	        $zendMail = new Zend_Mail();
	        $zendMail->setFrom($remetente, $nomeRemetente);
	        $zendMail->addTo($destinatario, $nomeDestinatario );
	        $zendMail->setSubject($assunto);
	        $zendMail->setBodyHtml($corpoMensagem);
	        $zendMail->send($tr);
	        
	        
	                
            
		}
	}

//#BlockStart number=112 id=_b8TuAKx9Ed6l74B_OiRrsA_#_0
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=112

}
