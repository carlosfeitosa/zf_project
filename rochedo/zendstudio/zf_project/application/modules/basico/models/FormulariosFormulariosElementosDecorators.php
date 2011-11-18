<?php
/**
 * FormulariosFormulariosElementosDecorators model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormulariosFormulariosElementosDecoratorsMapper
 * @subpackage Model
 */
class Basico_Model_FormulariosFormulariosElementosDecorators
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormulariosFormulariosElementosDecoratorsMapper
     */
    protected $_mapper;

    /**
     * @var FormulariosFormulariosElementos
     */
    protected $_formulariosFormulariosElementos;
    
    /**
     * @var Decorator
     */
    protected $_decorator;

    /**
     * @var Date
     */
    protected $_dataHoraCriacao;
    /**
     * @var Date
     */
    protected $_dataHoraUltimaAtualizacao;
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
     * @return Basico_Model_FormulariosFormulariosElementosDecorators
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
    * Set formulariosFormulariosElementos
    * 
    * @param int $ 
    * @return Basico_Model_FormulariosFormulariosElementos
    */
    public function setFormulariosFormulariosElementos($formulariosFormulariosElementos)
    {
        $this->_formulariosFormulariosElementos = (int) $formulariosFormulariosElementos;
        return $this;
    }

    /**
    * Get formulariosFormulariosElementos
    * 
    * @return null|int
    */
    public function getFormulariosFormulariosElementos()
    {
        return $this->_formulariosFormulariosElementos;
    }
 
    /**
     * Get formulariosFormulariosElementos object
     * @return null|FormulariosFormulariosElementos
     */
    public function getFormulariosFormulariosElementosObject()
    {
        $model = new Basico_Model_FormulariosFormulariosElementos();
        $object = $model->find($this->_formulariosFormulariosElementos);
        return $object;
    }
    
    /**
    * Set decorator
    * 
    * @param int $ 
    * @return Basico_Model_Decorator
    */
    public function setDecorator($decorator)
    {
        $this->_decorator = (int) $decorator;
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
     * Get decorator object
     * @return null|Decorator
     */
    public function getDecoratorObject()
    {
        $model = new Basico_Model_Decorator();
        $object = $model->find($this->_decorator);
        return $object;
    }
    
	/**
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao 
	* @return Basico_Model_FormulariosFormulariosElementosDecorators
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
	* @return Basico_Model_FormulariosFormulariosElementosDecorators
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
	* @return Basico_Model_FormulariosFormulariosElementosDecorators
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
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_FormulariosFormulariosElementosDecorators
    */
    public function setId($id)
    {
        $this->_id = (int) $id;
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
    * @return Basico_Model_FormulariosFormulariosElementosDecorators
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormulariosFormulariosElementosDecoratorsMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosFormulariosElementosDecoratorsMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormulariosFormulariosElementosDecoratorsMapper());
        }
        return $this->_mapper;
    }

}