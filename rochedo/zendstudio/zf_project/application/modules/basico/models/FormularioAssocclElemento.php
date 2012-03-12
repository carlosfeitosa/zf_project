<?php
/**
 * FormularioAssocclElemento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElemento
{
	/**
     * @var Basico_Model_FormularioAssocclElementoMapper
     */
    protected $_mapper;
    
    /**
    * @var int
    */
    protected $_id;
    /**
     * @var int
     */
    protected $_idFormulario;
    /**
     * @var int
     */
    protected $_idElemento;
    /**
     * @var int
     */
    protected $_idAjuda;
    /**
     * @var int
     */
    protected $_idGrupo;
	/**
	 * @var String
	 */
	protected $_constanteTextualLabel;
	/**
	 * @var String
	 */
	protected $_elementName;
	/**
	 * @var String
	 */
	protected $_elementAttribs;
	/**
	 * @var String
	 */
	protected $_elementValueDefault;
    /**
     * @var Boolean
     */
    protected $_elementReloadable;
    /**
     * @var ElementRequired
     */
    protected $_elementRequired;
    /**
     * @var int
     */
    protected $_ordem;
    /**
	 * @var Date
	 */
	protected $_datahoraCriacao;
	/**
	 * @var Date
	 */
	protected $_datahoraUltimaAtualizacao;
    /**
     * @var rowinfo
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
     * @return Basico_Model_FormularioAssocclElemento
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
    * @return Basico_Model_FormularioAssocclElemento
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
    * Set idFormulario
    * 
    * @param int $idFormulario 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setIdFormulario($idFormulario)
    {
    	$this->_idFormulario = Basico_OPController_UtilOPController::retornaValorTipado($idFormulario, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idFormulario
    * 
    * @return null|int
    */
    public function getIdFormulario()
    {
        return $this->_idFormulario;
    }
 
    /**
     * Get formulario object
     * @return null|Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFormulario);
        return $object;
    }
    
	/**
    * Set idElemento
    * 
    * @param int $idElemento 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setIdElemento($idElemento)
    {
    	$this->_idElemento = Basico_OPController_UtilOPController::retornaValorTipado($idElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idElemento
    * 
    * @return null|int
    */
    public function getIdElemento()
    {
        return $this->_idElemento;
    }
    
	/**
     * Get Basico_Model_FormularioElemento object
     * @return null|Basico_Model_FormularioElemento
     */
    public function getElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idElemento);
        return $object;
    }
    
	/**
    * Set idAjuda
    * 
    * @param int $idAjuda 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setIdAjuda($idAjuda)
    {
    	$this->_idAjuda = Basico_OPController_UtilOPController::retornaValorTipado($idAjuda, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idAjuda
    * 
    * @return null|int
    */
    public function getIdAjuda()
    {
        return $this->_idAjuda;
    }
    
	/**
     * Get Basico_Model_Ajuda object
     * @return null|Basico_Model_Ajuda
     */
    public function getAjudaObject()
    {
        $model = new Basico_Model_Ajuda();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAjuda);
        return $object;
    }
    
	/**
    * Set idGrupo
    * 
    * @param int $idGrupo 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setIdGrupo($idGrupo)
    {
    	$this->_idGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idGrupo, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idGrupo
    * 
    * @return null|int
    */
    public function getIdGrupo()
    {
        return $this->_idGrupo;
    }
    
	/**
     * Get Basico_Model_FormAssocclElementoGrupo object
     * @return null|Basico_Model_FormAssocclElementoGrupo
     */
    public function getGrupoObject()
    {
        $model = new Basico_Model_FormAssocclElementoGrupo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idGrupo);
        return $object;
    }
    
	/**
	* Set constanteTextualLabel
	* 
	* @param String $constanteTextualLabel 
	* @return Basico_Model_FormularioAssocclElemento
	*/
	public function setConstanteTextualLabel($constanteTextualLabel)
	{
		$this->_constanteTextualLabel = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualLabel, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextualLabel
	* 
	* @return null|String
	*/
	public function getConstanteTextualLabel()
	{
		return $this->_constanteTextualLabel;
	}
     
	/**
	* Set elementName
	* 
	* @param String $elementName 
	* @return Basico_Model_FormularioAssocclElemento
	*/
	public function setElementName($elementName)
	{
		$this->_elementName = Basico_OPController_UtilOPController::retornaValorTipado($elementName, TIPO_STRING,true); 
		return $this;
	}

	/**
	* Get elementName
	* 
	* @return null|String
	*/
	public function getElementName()
	{
		return $this->_elementName;
	}
	
    /**
	* Set elementAttribs
	* 
	* @param String $elementAttribs
	* @return Basico_Model_FormularioAssocclElemento
	*/
	public function setElementAttribs($elementAttribs)
	{
		$this->_elementAttribs = Basico_OPController_UtilOPController::retornaValorTipado($elementAttribs, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get elementAttribs
	* 
	* @return null|String
	*/
	public function getElementAttribs()
	{
		return $this->_elementAttribs;
	}
	
	/**
    * Set elementValueDefault
    * 
    * @param String $elementValueDefault 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setElementValueDefault($elementValueDefault)
    {
    	$this->_elementValueDefault = Basico_OPController_UtilOPController::retornaValorTipado($elementValueDefault, TIPO_STRING,true);
        return $this;
    }

    /**
    * Get elementValueDefault
    * 
    * @return null|String
    */
    public function getElementValueDefault()
    {
        return $this->_elementValueDefault;
    }
    
    /**
    * Set elementReloadable
    * 
    * @param Boolean $element 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setElementReloadable($elementReloadable)
    {
    	$this->_elementReloadable = Basico_OPController_UtilOPController::retornaValorTipado($elementReloadable, TIPO_BOOLEAN,true);
        return $this;
    }

    /**
    * Get elementReloadable
    * 
    * @return null|String
    */
    public function getElementReloadable()
    {
        return $this->_elementReloadable;
    }
        
	/**
    * Set elementRequired
    * 
    * @param Boolean $elementRequired
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setElementRequired($elementRequired)
    {
    	$this->_elementRequired = Basico_OPController_UtilOPController::retornaValorTipado($elementRequired, TIPO_BOOLEAN, true);
        return $this;
    }

    /**
    * Get elementRequired
    * 
    * @return null|Boolean
    */
    public function getElementRequired()
    {
        return $this->_elementRequired;
    }

    /**
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_FormularioAssocclElemento
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|String
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}
    
	/**
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_FormularioAssocclElemento
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraCriacao
	* 
	* @return null|Datetime
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}
	
	/**
	* Set datahoraUltimaAtualizacao
	* 
	* @param String $datahoraUltimaAtualizacao 
	* @return Basico_Model_FormularioAssocclElemento
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimaAtualizacao
	* 
	* @return null|Datetime
	*/
	public function getDatahoraUltimaAtualizacao()
	{
		return $this->_datahoraUltimaAtualizacao;
	}
    
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormularioAssocclElemento
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
    * Set data mapper
    * 
    * @param  mixed $mapper 
    * @return Basico_Model_FormularioAssocclElemento
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioAssocclElementoMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclElementoMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormularioAssocclElementoMapper());
        }
        return $this->_mapper;
    }
}
