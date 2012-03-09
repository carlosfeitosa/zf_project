<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Componente model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ComponenteMapper
 * @subpackage Model
 */
class Basico_Model_Componente
{
	/**
	 * @var Basico_Model_ComponenteMapper
	 */
	protected $_mapper;

	/**
	* @var int
	*/
	protected $_id;
    /**
     * @var Integer
     */
    protected $_idCategoria;
    /**
     * @var Integer
     */
    protected $_idTemplate;
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
	protected $_componente;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var String
	 */
	protected $_datahoraCriacao;
	/**
	 * @var String
	 */
	protected $_datahoraUltimaAtualizacao;
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
	 * @return Basico_Model_Componente
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
	* @return Basico_Model_Componente
	*/
	public function setId($id)
	{
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id,TIPO_INTEIRO,true);
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
	* Set id categoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_Componente
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id categoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
 
    /**
     * Get categoria object
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }

	/**
	* Set id template
	* 
	* @param int $idTemplate
	* @return Basico_Model_Componente
	*/
	public function setIdTemplate($idTemplate)
	{
		$this->_idTemplate = Basico_OPController_UtilOPController::retornaValorTipado($idTemplate, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id template
	* 
	* @return null|int
	*/
	public function getIdTemplate()
	{
		return $this->_idTemplate;
	}
 
    /**
     * Get template object
     * 
     * @return null|Basico_Model_Template
     */
    public function getTemplateObject()
    {
        $model = new Basico_Model_Template();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idTemplate);
        return $object;
    }

	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Componente
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
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
	* Set constante textual
	* 
	* @param String $constanteTextual
	* @return Basico_Model_Componente
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constante textual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
     
	/**
	* Set constante textual descricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_Componente
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constante textual descricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}

	/**
	* Set componente
	* 
	* @param String $componente 
	* @return Basico_Model_Componente
	*/
	public function setComponente($componente)
	{
		$this->_componente = Basico_OPController_UtilOPController::retornaValorTipado($componente,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get componente
	* 
	* @return null|String
	*/
	public function getComponente()
	{
		return $this->_componente;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo
	* @return Basico_Model_Componente
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|String
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}

	/**
	* Set datahora criacao
	* 
	* @param String $datahoraCriacao
	* @return Basico_Model_Componente
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahora criacao
	* 
	* @return null|String
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}
     
	/**
	* Set datahora ultima atualizacao
	* 
	* @param String $datahoraUltimaAtualizacao 
	* @return Basico_Model_Componente
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahora ultima atualizacao
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
	* @return Basico_Model_Componente
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
	* @return Basico_Model_Componente
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ComponenteMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ComponenteMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_ComponenteMapper());
		}
		return $this->_mapper;
	}
}
