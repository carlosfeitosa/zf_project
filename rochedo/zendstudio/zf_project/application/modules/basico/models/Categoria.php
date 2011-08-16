<?php
/**
 * Categoria model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CategoriaMapper
 * @subpackage Model
 */
class Basico_Model_Categoria
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_CategoriaMapper
	 */
	protected $_mapper;

	/**
	 * @var Integer
	 */
	protected $_nivel;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var String
	 */
	protected $_rowinfo;
    /**
     * @var Integer
     */
    protected $_tipoCategoria;   
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
	 * @return Basico_Model_Categoria
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
	* Set nivel
	* 
	* @param Integer $nivel 
	* @return Basico_Model_Nivel
	*/
	public function setNivel($nivel)
	{
		$this->_nivel = (Integer) $nivel;
		return $this;
	}

	/**
	* Get nivel
	* 
	* @return null|Integer
	*/
	public function getNivel()
	{
		return $this->_nivel;
	}
     
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Nome
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
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_Descricao
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao,TIPO_STRING,true);
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
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Ativo
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo,TIPO_BOOLEAN,true);
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
	* Set tipoCategoria
	* 
	* @param int $tipoCategoria 
	* @return Basico_Model_TipoCategoria
	*/
	public function setTipoCategoria($tipoCategoria)
	{
		$this->_tipoCategoria = Basico_OPController_UtilOPController::retornaValorTipado($tipoCategoria,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get tipoCategoria
	* 
	* @return null|int
	*/
	public function getTipoCategoria()
	{
		return $this->_tipoCategoria;
	}
 
    /**
     * Get tipoCategoria object
     * @return null|Basico_Model_TipoCategoria
     */
    public function getTipoCategoriaObject()
    {
        $model = new Basico_Model_TipoCategoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_tipoCategoria);
        return $object;
    }
    
    /**
     * Get tipoCategoriaRootCategoriaPai object
     * @return null|Basico_Model_TipoCategoria
     */
    public function getTipoCategoriaRootCategoriaPaiObject()
    {	
    	$rootCategoriaPaiObject = $this->getRootCategoriaPaiObject();
    	
    	if ($rootCategoriaPaiObject)
    		return $rootCategoriaPaiObject->getTipoCategoriaObject();
    	else
    		return $this->getTipoCategoriaObject();
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
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Categoria
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
	 * Get RootCategoriaPai Object
	 * 
	 * @return null|Basico_Model_Categoria
	 */
	public function getRootCategoriaPaiObject()
	{
		/* instancia modelo */
		$rootCategoriaPaiObject = new Basico_Model_Categoria();
		
		/* localiza o id da categoria pai ou utiliza o id da propria categoria */
		if ($this->_categoria)
			$idCategoriaParaLocalizar = $this->_categoria;
		else
			$idCategoriaParaLocalizar = $this->_id;
		
		/* localiza a categoria */
		$rootCategoriaPaiObject = Basico_OPController_PersistenceOPController::bdObjectFind($rootCategoriaPaiObject, $idCategoriaParaLocalizar);
		
		/* loop para chegar na categoria raiz */
		while ($rootCategoriaPaiObject->categoria) {
			$rootCategoriaPaiObject = Basico_OPController_PersistenceOPController::bdObjectFind($rootCategoriaPaiObject, $rootCategoriaPaiObject->categoria);
		}
		
		return $rootCategoriaPaiObject;
	}
	
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Categoria
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria,TIPO_INTEIRO,true);
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
	* @return Basico_Model_Categoria
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CategoriaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CategoriaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_CategoriaMapper());
		}
		return $this->_mapper;
	}
}
