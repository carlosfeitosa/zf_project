<?php
/**
 * FormulariosFormulariosElementos model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormulariosFormulariosElementosMapper
 * @subpackage Model
 */
class Basico_Model_FormulariosFormulariosElementos
{
    /**
    * @var int
    */
    protected $_id;
	/**
     * @var Basico_Model_FormulariosFormulariosElementosMapper
     */
    protected $_mapper;
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
     * @var Boolean
     */
    protected $_elementReloadable;
    /**
     * @var Formulario
     */
    protected $_formulario;
    /**
     * @var FormularioElemento
     */
    protected $_formularioElemento;
    /**
     * @var FormularioElemento
     */
    protected $_grupoFormularioElemento;
    /**
     * @var ElementRequired
     */
    protected $_elementRequired;
    /**
     * @var ordem
     */
    protected $_ordem;
    /**
     * @var Integer
     */
    protected $_mascara;
    /**
	 * @var Date
	 */
	protected $_dataHoraCriacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaAtualizacao;
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
     * @return Basico_Model_FormulariosFormulariosElementos
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
    * Set formulario
    * 
    * @param int $ 
    * @return Basico_Model_Formulario
    */
    public function setFormulario($formulario)
    {
    	$this->_formulario = Basico_OPController_UtilOPController::retornaValorTipado($formulario, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formulario
    * 
    * @return null|int
    */
    public function getFormulario()
    {
        return $this->_formulario;
    }
 
    /**
     * Get formulario object
     * @return null|Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_formulario);
        return $object;
    }
    
/**
	* Set constanteTextualLabel
	* 
	* @param String $constanteTextualLabel 
	* @return String
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
	* @return String
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
	* @return String
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
    * Set elementReloadable
    * 
    * @param String $element 
    * @return String
    */
    public function setElementReloadable($elementReloadable)
    {
    	$this->_elementReloadable = Basico_OPController_UtilOPController::retornaValorTipado($elementReloadable, TIPO_STRING,true);
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
    * Set formularioElemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setFormularioElemento($formularioElemento)
    {
    	$this->_formularioElemento = Basico_OPController_UtilOPController::retornaValorTipado($formularioElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioElemento
    * 
    * @return null|int
    */
    public function getFormularioElemento()
    {
        return $this->_formularioElemento;
    }

    /**
	* Set elementName
	* 
	* @param String $elementName 
	* @return String
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
    * Set decorator
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setDecorator($decorator)
    {
    	$this->_decorator = Basico_OPController_UtilOPController::retornaValorTipado($decorator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get decorator
    * 
    * @return null|int
    */
    public function getDecorator()
    {
        return $this->_decorator;
    }

    /**
	* Set entry mascara
	* 
	* @param  int $mascara 
	* @return Basico_Model_FormularioElemento
	*/
	public function setMascara($mascara)
	{
		$this->_mascara = Basico_OPController_UtilOPController::retornaValorTipado($mascara, TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry mascara
	* 
	* @return null|int
	*/
	public function getMascara()
	{
		return $this->_mascara;
	}
	    
    /**
    * Set grupoFormularioElemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setGrupoFormularioElemento($grupoFormularioElemento)
    {
    	$this->_grupoFormularioElemento = Basico_OPController_UtilOPController::retornaValorTipado($grupoFormularioElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get grupoFormularioElemento
    * 
    * @return null|int
    */
    public function getGrupoFormularioElemento()
    {
        return $this->_grupoFormularioElemento;
    }
    
	/**
    * Set elementRequired
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setElementRequired($elementRequired)
    {
    	$this->_elementRequired = Basico_OPController_UtilOPController::retornaValorTipado($elementRequired, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get elementRequired
    * 
    * @return null|int
    */
    public function getElementRequired()
    {
        return $this->_elementRequired;
    }
 
    /**
     * Get formularioelemento object
     * @return null|Basico_Model_FormularioElemento
     */
    public function getFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_formularioElemento);
        return $object;
    }
    
    /**
     * Get decorator object
     * @return null|Basico_Model_Decorator
     */
    public function getDecoratorObject()
    {
        $model = new Basico_Model_Decorator();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_decorator);
        return $object;
    }
    
    /**
     * Get grupoFormularioElemento object
     * @return null|Basico_Model_GrupoFormularioElemento
     */
    public function getGrupoFormularioElementoObject()
    {
        $model = new Basico_Model_GrupoFormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_grupoFormularioElemento);
        return $object;
    }

    /**
	* Set ordem
	* 
	* @param Integer $ordem 
	* @return Basico_Model_FormulariosFormulariosElementos
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
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao 
	* @return DateTime
	*/
	public function setDataHoraCriacao($dataHoraCriacao)
	{
		$this->_dataHoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataHoraCriacao
	* 
	* @return null|String
	*/
	public function getDataHoraCriacao()
	{
		return $this->_dataHoraCriacao;
	}
	
	/**
	* Set dataHoraUltimaAtualizacao
	* 
	* @param String $dataHoraUltimaAtualizacao 
	* @return DateTime
	*/
	public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
	{
		$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao, TIPO_DATE, true);
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
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormulariosFormulariosElementos
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
    * @return Basico_Model_FormulariosFormulariosElementos
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
    * @return Basico_Model_FormulariosFormulariosElementos
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormulariosFormulariosElementosMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosFormulariosElementosMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormulariosFormulariosElementosMapper());
        }
        return $this->_mapper;
    }
}
