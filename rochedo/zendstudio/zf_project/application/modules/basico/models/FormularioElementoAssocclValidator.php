<?php
/**
 * FormularioElementoAssocclValidator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoAssocclValidatorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElementoAssocclValidator
{
	/**
     * @var Basico_Model_FormularioElementoAssocclValidatorMapper
     */
    protected $_mapper;
    
    /**
    * @var int
    */
    protected $_id;
    /**
     * @var int
     */
    protected $_idElemento;
    /**
     * @var Int
     */
    protected $_idValidator;
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
     * @return Basico_Model_FormularioElementoAssocclValidator
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
    * @return Basico_Model_FormularioElementoAssocclValidator
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
    * Set entry idElemento
    * 
    * @param  int $idElemento 
    * @return Basico_Model_FormularioElementoAssocclValidElementoator
    */
    public function setIdElemento($idElemento)
    {
        $this->_idElemento = Basico_OPController_UtilOPController::retornaValorTipado($idElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idElemento
    * 
    * @return null|int
    */
    public function getIdElemento()
    {
        return $this->_idElemento;
    }
    
	/**
    * Set entry idValidator
    * 
    * @param  int $idValidator 
    * @return Basico_Model_FormularioElementoAssocclValidator
    */
    public function setIdValidator($idValidator)
    {
        $this->_idValidator = Basico_OPController_UtilOPController::retornaValorTipado($idValidator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idValidator
    * 
    * @return null|int
    */
    public function getIdValidator()
    {
        return $this->_idValidator;
    }
    
	/**
    * Set entry datahoraCriacao
    * 
    * @param  Date $datahoraCriacao 
    * @return Basico_Model_FormularioElementoAssocclValidator
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
	* @return Basico_Model_FormularioTemplate
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
    * @return Basico_Model_FormularioElementoAssocclValidator
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioElementoAssocclValidatorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioElementoAssocclValidatorMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormularioElementoAssocclValidatorMapper());
        }
        return $this->_mapper;
    }
}
