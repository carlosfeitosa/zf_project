<?php
require_once(APPLICATION_MODULES_PATH . "/basico/models/interfaces/RochedoPersistentModeloGenerico.php");
require_once(APPLICATION_MODULES_PATH . "/basico/models/abstracts/RochedoPersistentModeloGenerico.php");  
/**
 * CpgToken model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CpgTokenMapper
 * @subpackage Model
 */
class Basico_Model_CpgToken extends Basico_AbstractModel_RochedoPersistentModeloGenerico implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Basico_Model_CpgTokenMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
	/**
     * @var int
     */
    protected $_idCategoria;
    /**
	 * @var int
	 */
	protected $_idGenericoProprietario;
	/**
	 * @var String
	 */
	protected $_token;
	/**
	 * @var Date
	 */
	protected $_datahoraExpiracao;
	/**
	 * @var Date
	 */
	protected $_datahoraCriacao;
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
	 * @return Basico_Model_CpgToken
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
	* @return Basico_Model_CpgToken
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
	* Set idCategoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_CpgToken
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
 
    /**
     * Get categoria object
     * @return null|Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }
    
	/**
	* Set idGenericoProprietario
	* 
	* @param int $idGenericoProprietario 
	* @return Basico_Model_CpgToken
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenericoProprietario
	* 
	* @return null|int
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
    
	/**
	* Set token
	* 
	* @param String $token 
	* @return Basico_Model_token
	*/
	public function setToken($token)
	{
		$this->_token = Basico_OPController_UtilOPController::retornaValorTipado($token, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get token
	* 
	* @return null|String
	*/
	public function getToken()
	{
		return $this->_token;
	}
     
	/**
	* Set datahoraExpiracao
	* 
	* @param String $datahora_expiracao 
	* @return Basico_Model_CpgToken
	*/
	public function setDatahoraExpiracao($datahoraExpiracao)
	{
		$this->_datahoraExpiracao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraExpiracao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraExpiracao
	* 
	* @return null|String
	*/
	public function getDatahoraExpiracao()
	{
		return $this->_datahoraExpiracao;
	}
	
	/**
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_CpgToken
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraCriacao
	* 
	* @return null|String
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}
	
    /**
	* Set entry rowinfo
	* 
	* @param  String $rowinfo 
	* @return Basico_Model_CpgToken
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Retrieve entry rowinfo
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
	* @return Basico_Model_CpgToken
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CpgTokenMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CpgTokenMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_CpgTokenMapper());
		}
		return $this->_mapper;
	}
}