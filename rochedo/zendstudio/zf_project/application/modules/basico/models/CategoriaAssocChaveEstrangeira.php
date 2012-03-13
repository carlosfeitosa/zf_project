<?php
/**
 * CategoriaAssocChaveEstrangeira model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CategoriaAssocChaveEstrangeiraMapper
 * @subpackage Model
 */
class Basico_Model_CategoriaAssocChaveEstrangeira
{
	/**
	 * @var Basico_Model_CategoriaAssocChaveEstrangeiraMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
	/**
	 * @var int
	 */
	protected $_idModulo;
    /**
     * 
     * @var int
     */
	protected $_idCategoria;
	/**
	 * @var String
	 */
	protected $_tabelaEstrangeira;
	/**
	 * @var String
	 */
	protected $_campoEstrangeiro;
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
	 * @return Basico_Model_CategoriaAssocChaveEstrangeira
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
	* @return Basico_Model_CategoriaAssocChaveEstrangeira
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
	 * Set idModulo
	 * @param int $idModulo
	 * @return Basico_Model_CategoriaAssocChaveEstrangeira
	 */
	public function setIdModulo($idModulo)
	{
	   	$this->_idModulo = Basico_OPController_UtilOPController::retornaValorTipado($idModulo,TIPO_INTEIRO,true);
		return $this;
	}
	
	/**
	 * Get idModulo
	 * @return null|int
	 */
	public function getIdModulo()
	{
		return $this->_idModulo;
	}
	
	/**
     * Get modulo object
     * @return null|Basico_Model_Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idModulo);
        return $object;
    }
	
	/**
	 * Set idCategoria
	 * @param int $idCategoria
	 * @return Basico_Model_CategoriaAssocChaveEstrangeira
	 */
	public function setIdCategoria($idCategoria)
	{
	   	$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria,TIPO_INTEIRO,true);
		return $this;
	}
	
	/**
	 * Get idCategoria
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
	* Set tabelaEstrangeira
	* 
	* @param String $tabela_estrangeira 
	* @return Basico_Model_CategoriaAssocChaveEstrangeira
	*/
	public function setTabelaEstrangeira($tabelaEstrangeira)
	{
		$this->_tabelaEstrangeira = Basico_OPController_UtilOPController::retornaValorTipado($tabelaEstrangeira,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get tabelaEstrangeira
	* 
	* @return null|String
	*/
	public function getTabelaEstrangeira()
	{
		return $this->_tabelaEstrangeira;
	}
     
	/**
	* Set campoEstrangeiro
	* 
	* @param String $campoEstrangeiro 
	* @return Basico_Model_CategoriaAssocChaveEstrangeira
	*/
	public function setCampoEstrangeiro($campoEstrangeiro)
	{
		$this->_campoEstrangeiro = Basico_OPController_UtilOPController::retornaValorTipado($campoEstrangeiro,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get campoEstrangeiro
	* 
	* @return null|String
	*/
	public function getCampoEstrangeiro()
	{
		return $this->_campoEstrangeiro;
	}
	
	/**
	 * Set datahoraCriacao
	 * @param Date $datahoraCriacao
	 * @return Basico_Model_CategoriaAssocChaveEstrangeira
	 */
	public function setDatahoraCriacao($datahoraCriacao)
	{
	    $this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao,TIPO_DATE,true);
	    return $this;	
	}
	
	/**
	 * Get datahoraCriacao
	 * @return null|int
	 */
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}
	
	/**
	 * Set rowinfo
	 * @param String $rowinfo
	 * @return Basico_Model_CategoriaAssocChaveEstrangeira
	 */
	public function setRowinfo($rowinfo)
	{
	    $this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo,TIPO_STRING,true);
	    return $this;	
	}
	
	/**
	 * Get rowinfo
	 * @return null|int
	 */
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}

	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_CategoriaAssocChaveEstrangeira
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CategoriaAssocChaveEstrangeiraMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CategoriaAssocChaveEstrangeiraMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_CategoriaAssocChaveEstrangeiraMapper());
		}
		return $this->_mapper;
	}
}
