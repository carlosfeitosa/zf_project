<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * MetodoValidacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_MetodoValidacaoMapper
 * @subpackage Model
 */
class Basico_Model_MetodoValidacao
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_MetodoValidacaoMapper
	 */
	protected $_mapper;

	/**
	* @var int
	*/
	protected $_categoria;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var String
	 */
	protected $_metodo;
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
	 * @return Basico_Model_MetodoValidacao
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
	* Set categoria
	* 
	* @param Integer $categoria
	* @return Basico_Model_MetodoValidacao
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get categoria
	* 
	* @return null|Integer
	*/
	public function getCategoria()
	{
		return $this->_categoria;
	}

    /**
     * Get categoria object
     * @return null|categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_categoria);
        return $object;
    }

	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_MetodoValidacao
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
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_MetodoValidacao
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
	* Set metodo
	* 
	* @param String $metodo 
	* @return Basico_Model_MetodoValidacao
	*/
	public function setMetodo($metodo)
	{
		$this->_metodo = Basico_OPController_UtilOPController::retornaValorTipado($metodo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get metodo
	* 
	* @return null|String
	*/
	public function getMetodo()
	{
		return $this->_metodo;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_MetodoValidacao
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
	* @return Basico_Model_MetodoValidacao
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
	* @return Basico_Model_MetodoValidacao
	*/
	public function setDataHoraDesativacao($dataHoraDesativacao)
	{
		$this->_dataHoraDesativacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraDesativacao, TIPO_DATE, true);
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
	* @return Basico_Model_MetodoValidacao
	*/
	public function setDataHoraReativacao($dataHoraReativacao)
	{
		$this->_dataHoraReativacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraReativacao, TIPO_DATE, true);
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
	* @return Basico_Model_MetodoValidacao
	*/
	public function setDataHoraCadastro($dataHoraCadastro)
	{
		$this->_dataHoraCadastro = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCadastro, TIPO_DATE, true);
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
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Rowinfo
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
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
	* @return Basico_Model_MetodoValidacao
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
	* @return Basico_Model_MetodoValidacao
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_MetodoValidacaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MetodoValidacaoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_MetodoValidacaoMapper());
		}
		return $this->_mapper;
	}
}
