<?php
/**
 * FormularioAssocclElementoAssocclDecorator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclDecorator
{
	/**
     * @var Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper
     */
    protected $_mapper;
    
    /**
    * @var int
    */
    protected $_id;
    /**
     * @var int
     */
    protected $_idAssocclElemento;
    /**
     * @var int
     */
    protected $_idDecorator;
    /**
     * @var Boolean
     */
    protected $_removeFlag;
    /**
     * @var int
     */
    protected $_ordem;
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
     * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
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
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
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
    * Set entry idAssocclElemento
    * 
    * @param  int $idAssocclElemento 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setIdAssocclElemento($idAssocclElemento)
    {
        $this->_idAssocclElemento = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idAssocclElemento
    * 
    * @return null|int
    */
    public function getIdAssocclElemento()
    {
        return $this->_idAssocclElemento;
    }
    
	/**
     * Get AssocclElemento object
     * @return null|Basico_Model_FormularioAssocclElemento
     */
    public function getAssocclElementoObject()
    {
        $model = new Basico_Model_FormularioAssocclElemento();
        $object = $model->find($this->_idAssocclElemento);
        return $object;
    }
    
    /**
    * Set entry idDecorator
    * 
    * @param  int $idDecorator 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setIdDecorator($idDecorator)
    {
        $this->_idDecorator = Basico_OPController_UtilOPController::retornaValorTipado($idDecorator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idDecorator
    * 
    * @return null|int
    */
    public function getIdDecorator()
    {
        return $this->_idDecorator;
    }
 
    /**
     * Get decorator object
     * @return null|Decorator
     */
    public function getDecoratorObject()
    {
        $model = new Basico_Model_FormularioDecorator();
        $object = $model->find($this->_idDecorator);
        return $object;
    }
    
	/**
    * Set entry removeFlag
    * 
    * @param  Boolean $removeFlag 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setRemoveFlag($removeFlag)
    {
        $this->_removeFlag = Basico_OPController_UtilOPController::retornaValorTipado($removeFlag, TIPO_BOOLEAN, true);
        return $this;
    }

    /**
    * Retrieve entry removeFlag
    * 
    * @return null|Boolean
    */
    public function getRemoveFlag()
    {
        return $this->_removeFlag;
    }
    
	/**
    * Set entry ordem
    * 
    * @param  int $ordem 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
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
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_FormularioAssocclElementoAssocclDecorator
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraCriacao
	* 
	* @return null|String
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}
	
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormularioAssocclElementoAssocclDecorator
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING,true);
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
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper());
        }
        return $this->_mapper;
    }

}