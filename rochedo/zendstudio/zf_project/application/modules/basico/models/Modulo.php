<?php
/**
 * Modulo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ModuloMapper
 * @subpackage Model
 */
class Basico_Model_Modulo
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_ModuloMapper
	 */
	protected $_mapper;

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
	protected $_versao;
	/**
	 * @var String
	 */
	protected $_path;
	/**
	 * @var Boolean
	 */
	protected $_instalado;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var Date
	 */
	protected $_dataDepreciacao;
	/**
	 * @var String
	 */
	protected $_xmlAutoria;
    /**
     * @var Integer
     */
    protected $_moduloPai;
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
	 * @return Basico_Model_Modulo
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
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Nome
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
	* @return Basico_Model_Descricao
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
	* Set versao
	* 
	* @param String $versao 
	* @return Basico_Model_Versao
	*/
	public function setVersao($versao)
	{
		$this->_versao = Basico_OPController_UtilOPController::retornaValorTipado($versao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get versao
	* 
	* @return null|String
	*/
	public function getVersao()
	{
		return $this->_versao;
	}
     
	/**
	* Set path
	* 
	* @param String $path 
	* @return Basico_Model_Path
	*/
	public function setPath($path)
	{
		$this->_path = Basico_OPController_UtilOPController::retornaValorTipado($path, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get path
	* 
	* @return null|String
	*/
	public function getPath()
	{
		return $this->_path;
	}
     
	/**
	* Set instalado
	* 
	* @param Boolean $instalado 
	* @return Basico_Model_Instalado
	*/
	public function setInstalado($instalado)
	{
		$this->_instalado = Basico_OPController_UtilOPController::retornaValorTipado($instalado, TIPO_BOOLEAN, false);
		return $this;
	}

	/**
	* Get instalado
	* 
	* @return null|Boolean
	*/
	public function getInstalado()
	{
		return $this->_instalado;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Ativo
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, false);
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
	* Set dataDepreciacao
	* 
	* @param String $dataDepreciacao 
	* @return Basico_Model_DataDepreciacao
	*/
	public function setDataDepreciacao($dataDepreciacao)
	{
		$this->_dataDepreciacao = Basico_OPController_UtilOPController::retornaValorTipado($dataDepreciacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataDepreciacao
	* 
	* @return null|String
	*/
	public function getDataDepreciacao()
	{
		return $this->_dataDepreciacao;
	}
     
	/**
	* Set xmlAutoria
	* 
	* @param String $xmlAutoria 
	* @return Basico_Model_XmlAutoria
	*/
	public function setXmlAutoria($xmlAutoria)
	{
		$this->_xmlAutoria = Basico_OPController_UtilOPController::retornaValorTipado($xmlAutoria, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get xmlAutoria
	* 
	* @return null|String
	*/
	public function getXmlAutoria()
	{
		return $this->_xmlAutoria;
	}
     
	/**
	* Set moduloPai
	* 
	* @param int $moduloPai 
	* @return Basico_Model_ModuloPai
	*/
	public function setModuloPai($moduloPai)
	{
		$this->_moduloPai = Basico_OPController_UtilOPController::retornaValorTipado($moduloPai, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get moduloPai
	* 
	* @return null|int
	*/
	public function getModuloPai()
	{
		return $this->_moduloPai;
	}
 
    /**
     * Get moduloPai object
     * @return null|Modulo
     */
    public function getModuloPaiObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_moduloPai);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Modulo
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
	* Set entry rowinfo
	* 
	* @param  String $rowinfo 
	* @return Basico_Model_Modulo
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
	* @return Basico_Model_Modulo
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ModuloMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ModuloMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_ModuloMapper());
		}
		return $this->_mapper;
	}
}
