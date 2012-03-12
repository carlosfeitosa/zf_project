<?php
/**
 * TemplateAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TemplateAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_TemplateAssocclInclude
{
	/**
     * @var Basico_Model_TemplateAssocclIncludeMapper
     */
    protected $_mapper;
    
    /**
    * @var int
    */
    protected $_id;
    /**
     * @var int
     */
    protected $_idTemplate;
    /**
     * @var Int
     */
    protected $_idInclude;
    /**
     * @var Int
     */
    protected $_ordem;
    /**
     * @var Date
     */
    protected $_datahoraCriacao;    
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
     * @return Basico_Model_TemplateAssocclInclude
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
    * @return Basico_Model_TemplateAssocclInclude
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
    * Set entry idTemplate
    * 
    * @param  int $idTemplate 
    * @return Basico_Model_TemplateAssocclInclude
    */
    public function setIdTemplate($idTemplate)
    {
        $this->_idTemplate = Basico_OPController_UtilOPController::retornaValorTipado($idTemplate, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idTemplate
    * 
    * @return null|int
    */
    public function getIdTemplate()
    {
        return $this->_idTemplate;
    }
    
	/**
    * Set entry idInclude
    * 
    * @param  int $idInclude 
    * @return Basico_Model_TemplateAssocclInclude
    */
    public function setIdInclude($idInclude)
    {
        $this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idInclude
    * 
    * @return null|int
    */
    public function getIdInclude()
    {
        return $this->_idInclude;
    }
    
	/**
    * Set entry ordem
    * 
    * @param  int $ordem 
    * @return Basico_Model_TemplateAssocclInclude
    */
    public function setOrdem($ordem)
    {
        $this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry ordem
    * 
    * @return null|int
    */
    public function getOrdem()
    {
        return $this->_ordem;
    }
    
	/**
    * Set entry datahoraCriacao
    * 
    * @param  Date $datahoraCriacao 
    * @return Basico_Model_TemplateAssocclInclude
    */
    public function setDatahoraCriacao($dataCriacao)
    {
        $this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
        return $this;
    }

    /**
    * Retrieve entry datahoraCriacao
    * 
    * @return null|Date
    */
    public function getDatahoraCriacao()
    {
        return $this->_datahoraCriacao;
    }

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_TemplateAssocclInclude
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
    * @return Basico_Model_TemplateAssocclInclude
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_TemplateAssocclIncludeMapper instance if no mapper registered.
    * 
    * @return Basico_Model_TemplateAssocclIncludeMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_TemplateAssocclIncludeMapper());
        }
        return $this->_mapper;
    }
}
