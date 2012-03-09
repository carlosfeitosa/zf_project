<?php
/**
 * ContatoCpgEmail model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ContatoCpgEmailMapper
 * @subpackage Model
 */
class Basico_Model_ContatoCpgEmail
{
	/**
	 * @var Basico_Model_ContatoCpgEmailMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
	/**
     * @var Int
     */
    protected $_idCategoria;
	/**
	 * @var Integer
	 */
	protected $_idGenericoProprietario;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
	/**
	 * @var String
	 */
	protected $_uniqueId;
	/**
	 * @var String
	 */
	protected $_email;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var Boolean
	 */
	protected $_validado;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var Date
	 */
	protected $_DatahoraUltimaValidacao;
	/**
	 * 
	 * @var Date
	 */
	protected $_DatahoraCriacao;
	/**
	 * 
	 * @var Date
	 */
	protected $_DatahoraUltimaAtualizacao;
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
	 * @return Basico_Model_ContatoCpgEmail
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
	* @return Basico_Model_ContatoCpgEmail
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
	* Set idCategoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO,true);
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
	* @param Int $idGenericoProprietario 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenericoProprietario
	* 
	* @return null|Int
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
	
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nome
	* 
	* @return null|String
	*/
	public function getNome()
	{
		return $this->_nome;
	}
	
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
	
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}
	
	/**
	* Set uniqueId
	* 
	* @param String $uniqueId 
	* @return Basico_Model_ContatoCpgEmail
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
	* @return Basico_Model_ContatoCpgEmail
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
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get descricao
	* 
	* @return null|String
	*/
	public function getDescricao()
	{
		return $this->_descricao;
	}
     
	/**
	* Set validado
	* 
	* @param Boolean $validado 
	* @return Basico_Model_ContatoCpgEmail
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
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_ContatoCpgEmail
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
	* Set datahoraUltimaValidacao
	* 
	* @param String $datahoraUltimaValidacao 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setDatahoraUltimaValidacao($datahoraUltimaValidacao)
	{
		$this->_datahoraUltimaValidacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaValidacao, TIPO_DATE,true);
		return $this;
	}

	/**
	* Get DatahoraUltimaValidacao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaValidacao()
	{
		return $this->_datahoraUltimaValidacao;
	}
	
    /**
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setDatahoraCriacao($DatahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE,true);
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
	* Set datahoraUltimaAtualizacao
	* 
	* @param String $datahoraUltimaAtualizacao
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao, TIPO_DATE,true);
		return $this;
	}

	/**
	* Get datahoraUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaAtualizacao()
	{
		return $this->_datahoraUltimaAtualizacao;
	}

	/**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_ContatoCpgEmail
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ContatoCpgEmailMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ContatoCpgEmailMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_ContatoCpgEmailMapper());
		}
		return $this->_mapper;
	}
}
