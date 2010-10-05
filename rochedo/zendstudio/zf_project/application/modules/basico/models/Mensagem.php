<?php
/**
 * Mensagem model
 *
 * Utiliza o Mapper para persistir os dados.
 * 
 * @uses Basico_Model_MensagemMapper
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
	 * @var Basico_Model_MensagemMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_remetente;
	
	/**
	 * @var String
	 */
	protected $_remetenteNome;
	
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
	
	/**
	 * 
	 * @var String
	 */
	protected $_rowinfo;
	
	/**
	 * Construtor
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
	 * @return Basico_Model_Mensagem
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
	* @return Basico_Model_Remetente
	*/
	public function setRemetente($remetente)
	{
		$this->_remetente = Basico_UtilControllerController::retornaValorTipado($remetente, TIPO_STRING, true);
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
	* Set remetenteNome
	* 
	* @param String $remetenteNome 
	* @return Basico_Model_Remetente
	*/
	public function setRemetenteNome($remetenteNome)
	{
		$this->_remetenteNome = Basico_UtilControllerController::retornaValorTipado($remetenteNome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get remetenteNome
	* 
	* @return null|String
	*/
	public function getRemetenteNome()
	{
		return $this->_remetenteNome;
	}
     
	/**
	* Set destinatario
	* 
	* @param String $destinatario 
	* @return Basico_Model_Destinatario
	*/
	public function setDestinatarios($destinatarios)
	{
		if (is_array($destinatarios))
			$this->_destinatarios = implode(';', $destinatarios);
		else
			$this->_destinatarios = Basico_UtilControllerController::retornaValorTipado($destinatarios, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get destinatario string
	* 
	* @return null|String
	*/
	public function getDestinatariosString()
	{
		return $this->_destinatarios;
	}
	
    /**
	* Get destinatario array
	* 
	* @return null|String
	*/
	public function getDestinatariosArray()
	{
		$destinatarios = explode(';', $this->_destinatarios);
		return $destinatarios;
	}
     
	/**
	* Set assunto
	* 
	* @param String $assunto 
	* @return Basico_Model_Assunto
	*/
	public function setAssunto($assunto)
	{
		$this->_assunto = Basico_UtilControllerController::retornaValorTipado($assunto, TIPO_STRING, true);
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
	* @return Basico_Model_DataHora
	*/
	public function setDatahoraMensagem($datahoraMensagem)
	{
		$this->_datahoraMensagem = Basico_UtilControllerController::retornaValorTipado($datahoraMensagem, TIPO_STRING, true);
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
	* @return Basico_Model_Mensagem
	*/
	public function setMensagem($mensagem)
	{
		$this->_mensagem = Basico_UtilControllerController::retornaValorTipado($mensagem, TIPO_STRING, true);
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
	* @return Basico_Model_Mensagem
	*/
	public function setId($id)
	{
		$this->_id = Basico_UtilControllerController::retornaValorTipado($id, TIPO_INTEIRO, true);
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
		$this->_categoria = Basico_UtilControllerController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
		return $this;
	}
	
    /**
	* Retrieve entry idCategoria
	* 
	* @return null|int
	*/
	public function getCategoria()
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
		$this->_rowinfo = Basico_UtilControllerController::retornaValorTipado($rowinfo, TIPO_STRING, true);
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
	* @return Basico_Model_Mensagem
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_MensagemMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MensagemMapper
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
	* @return Basico_Model_Mensagem
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
