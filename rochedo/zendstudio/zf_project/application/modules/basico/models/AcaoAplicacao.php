<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * AcaoAplicacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcaoAplicacaoMapper
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacao
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_AcaoAplicacaoMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_controller;
	/**
	 * @var String
	 */
	protected $_action;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var String
	 */
	protected $_motivoDesativacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraDesativacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraReativacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraCadastro;
    /**
     * @var Integer
     */
    protected $_modulo;
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
	 * @return Basico_Model_AcaoAplicacao
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
	* Set controller
	* 
	* @param String $controller 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setController($controller)
	{
		$this->_controller = Basico_OPController_UtilOPController::retornaValorTipado($controller, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get controller
	* 
	* @return null|String
	*/
	public function getController()
	{
		return $this->_controller;
	}
     
	/**
	* Set action
	* 
	* @param String $action 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setAction($action)
	{
		$this->_action = Basico_OPController_UtilOPController::retornaValorTipado($action, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get action
	* 
	* @return null|String
	*/
	public function getAction()
	{
		return $this->_action;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
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
	* Set motivoDesativacao
	* 
	* @param String $motivoDesativacao 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setMotivoDesativacao($motivoDesativacao)
	{
		$this->_motivoDesativacao = Basico_OPController_UtilOPController::retornaValorTipado($motivoDesativacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get motivoDesativacao
	* 
	* @return null|String
	*/
	public function getMotivoDesativacao()
	{
		return $this->_motivoDesativacao;
	}
     
	/**
	* Set dataHoraDesativacao
	* 
	* @param String $dataHoraDesativacao 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setDataHoraDesativacao($dataHoraDesativacao)
	{
		$this->_dataHoraDesativacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraDesativacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraDesativacao
	* 
	* @return null|String
	*/
	public function getDataHoraDesativacao()
	{
		return $this->_dataHoraDesativacao;
	}
     
	/**
	* Set dataHoraReativacao
	* 
	* @param String $dataHoraReativacao 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setDataHoraReativacao($dataHoraReativacao)
	{
		$this->_dataHoraReativacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraReativacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraReativacao
	* 
	* @return null|String
	*/
	public function getDataHoraReativacao()
	{
		return $this->_dataHoraReativacao;
	}
     
	/**
	* Set dataHoraCadastro
	* 
	* @param String $dataHoraCadastro 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setDataHoraCadastro($dataHoraCadastro)
	{
		$this->_dataHoraCadastro = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCadastro, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataHoraCadastro
	* 
	* @return null|String
	*/
	public function getDataHoraCadastro()
	{
		return $this->_dataHoraCadastro;
	}
     
	/**
	* Set modulo
	* 
	* @param int $modulo 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setModulo($modulo)
	{
		$this->_modulo = Basico_OPController_UtilOPController::retornaValorTipado($modulo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get modulo
	* 
	* @return null|int
	*/
	public function getModulo()
	{
		return $this->_modulo;
	}
 
    /**
     * Get modulo object
     * @return null|Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = $model->find($this->_modulo);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_AcaoAplicacao
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
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Categoria
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
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AcaoAplicacaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AcaoAplicacaoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_AcaoAplicacaoMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_AcaoAplicacao
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
