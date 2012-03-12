<?php
/**
 * FormularioAssocclTemplate model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclTemplateMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclTemplate
{
    /**
     * @var Basico_Model_TemplateFormularioMapper
     */
    protected $_mapper;
	
	/**
    * @var int
    */
    protected $_id;
    /**
     * @var idTemplate
     */
    protected $_idTemplate;
    /**
     * @var idFormulario
     */
    protected $_idFormulario;
    /**
	 * @var String
	 */
	protected $_dataHoraCriacao;
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
     * @return Basico_Model_FormularioAssocclTemplate
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
    * @return Basico_Model_FormularioAssocclTemplate
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
    * Set id template
    * 
    * @param int $idTemplate 
    * @return Basico_Model_FormularioAssocclTemplate
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
     * @return null|Basico_Model_Template
     */
    public function getTemplateObject()
    {
        $model = new Basico_Model_Template();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idTemplate);
        return $object;
    }
    
    /**
    * Set id formulario
    * 
    * @param int $idFormulario 
    * @return Basico_Model_FormularioAssocclTemplate
    */
    public function setIdFormulario($idFormulario)
    {
        $this->_idFormulario = Basico_OPController_UtilOPController::retornaValorTipado($idFormulario, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get id formulario
    * 
    * @return null|int
    */
    public function getIdFormulario()
    {
        return $this->_idFormulario;
    }
 
    /**
     * Get formulario object
     * @return null|Basico_Model_Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFormulario);
        return $object;
    }
    
    /**
    * Set datahora criacao
    * 
    * @param String $datahoraCriacao 
    * @return Basico_Model_FormularioAssocclTemplate
    */
    public function setDataHoraCriacao($datahoraCriacao)
    {
        $this->_dataHoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
        return $this;
    }

    /**
    * Get datahora criacao
    * 
    * @return null|String
    */
    public function getDataHoraCriacao()
    {
        return $this->_dataHoraCriacao;
    }
    
    /**
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_FormularioAssocclTemplate
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
    * @return Basico_Model_FormularioAssocclTemplate
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioAssocclTemplate instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclTemplate
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_TemplateFormularioMapper());
        }
        return $this->_mapper;
    }
}
