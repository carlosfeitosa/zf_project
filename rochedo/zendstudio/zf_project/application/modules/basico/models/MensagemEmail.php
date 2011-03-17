<?php
/**
 * MensagemEmail model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_MensagemEmailMapper
 * @subpackage Model
 */
class Basico_Model_MensagemEmail
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_MensagemEmailMapper
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
     * @var Integer
     */
    protected $_mensagem;

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
	 * @return Basico_Model_MensagemEmail
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
	* @return Basico_Model_DestinatariosCopiaCarbonada
	*/
	public function setDestinatariosCopiaCarbonada($destinatariosCopiaCarbonada)
	{
		$this->_destinatariosCopiaCarbonada = Basico_OPController_UtilOPController::retornaValorTipado($destinatariosCopiaCarbonada, TIPO_STRING, true);
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
	* @return Basico_Model_DestinatariosCopiaCarbonadaCega
	*/
	public function setDestinatariosCopiaCarbonadaCega($destinatariosCopiaCarbonadaCega)
	{
		$this->_destinatariosCopiaCarbonadaCega = Basico_OPController_UtilOPController::retornaValorTipado($destinatariosCopiaCarbonadaCega, TIPO_STRING, true);
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
	* @return Basico_Model_ResponderPara
	*/
	public function setResponderPara($responderPara)
	{
		$this->_responderPara = Basico_OPController_UtilOPController::retornaValorTipado($responderPara, TIPO_STRING, true);
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
	* Set mensagem
	* 
	* @param int $mensagem 
	* @return Basico_Model_Mensagem
	*/
	public function setMensagem($mensagem)
	{
		$this->_mensagem = Basico_OPController_UtilOPController::retornaValorTipado($mensagem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get mensagem
	* 
	* @return null|int
	*/
	public function getMensagem()
	{
		return $this->_mensagem;
	}
 
    /**
     * Get mensagem object
     * @return null|Mensagem
     */
    public function getMensagemObject()
    {
        $model = new Basico_Model_Mensagem();
        $object = $model->find($this->_mensagem);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_MensagemEmail
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_MensagemEmail
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_MensagemEmailMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MensagemEmailMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_MensagemEmailMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_MensagemEmail
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
