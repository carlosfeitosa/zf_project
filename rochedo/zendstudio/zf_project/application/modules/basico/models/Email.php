<?php
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
	 * @var Integer
	 */
	protected $_idGenericoProprietario;
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
	 * 
	 * @var Date
	 */
	protected $_dataHoraCadastro;
	/**
	 * 
	 * @var Date
	 */
	protected $_dataHoraUltimaAtualizacao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
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
	* Set idGenericoProprietario
	* 
	* @param Integer $idGenericoProprietario 
	* @return Basico_Model_IdGenericoProprietario
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenericoProprietario
	* 
	* @return null|Integer
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
	
	/**
	* Set uniqueId
	* 
	* @param String $uniqueId 
	* @return Basico_Model_UniqueId
	*/
	public function setUniqueId($uniqueId)
	{
		$this->_uniqueId = Basico_OPController_UtilOPController::retornaValorTipado($uniqueId, TIPO_STRING, true);
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
		$this->_email = Basico_OPController_UtilOPController::retornaValorTipado(strtolower($email), TIPO_STRING, true);
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
		$this->_validado = Basico_OPController_UtilOPController::retornaValorTipado($validado, TIPO_BOOLEAN); 
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
		$this->_dataHoraUltimaValidacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaValidacao, TIPO_DATE,true);
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
	* Set dataHoraCadastro
	* 
	* @param String $dataHoraCadastro 
	* @return Basico_Model_Email
	*/
	public function setDataHoraCadastro($dataHoraCadastro)
	{
		$this->_dataHoraCadastro = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCadastro, TIPO_DATE,true);
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
	* Set dataHoraUltimaAtualizacao
	* 
	* @param String $dataHoraUltimaAtualizacao
	* @return Basico_Model_Email
	*/
	public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
	{
		$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao, TIPO_DATE,true);
		return $this;
	}

	/**
	* Get dataHoraUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaAtualizacao()
	{
		return $this->_dataHoraUltimaAtualizacao;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Ativo
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN);
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
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Categoria
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO,true);
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
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_categoria);
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
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING,true);
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
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id, TIPO_INTEIRO,true);		
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
}
