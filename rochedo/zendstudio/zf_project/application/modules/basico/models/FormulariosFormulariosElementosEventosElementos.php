<?php
/**
 * FormulariosFormulariosElementosEventosElementos model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormulariosFormulariosElementosEventosElementosMapper
 * @subpackage Model
 */
class Basico_Model_FormulariosFormulariosElementosEventosElementos
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormulariosFormulariosElementosEventosElementosMapper
     */
    protected $_mapper;

    /**
     * @var FormulariosFormulariosElementos
     */
    protected $_formulariosFormulariosElementos;
    
    /**
     * @var EventoElemento
     */
    protected $_eventoElemento;

    /**
     * @var Action
     */
    protected $_action;
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
     * @return Basico_Model_FormulariosFormulariosElementosEventosElementos
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
    * Set formulariosformularioselementos
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
    * Get formulariosformularioselementos
    * 
    * @return null|int
    */
    public function getFormulariosFormulariosElementos()
    {
        return $this->_formulariosFormulariosElementos;
    }
 
    /**
     * Get formulariosformularioselementos object
     * @return null|FormulariosFormulariosElementos
     */
    public function getFormulariosFormulariosElementosObject()
    {
        $model = new Basico_Model_a_formularioElemento_possui_formulario();
        $object = $model->find($this->_formulariosFormulariosElementos);
        return $object;
    }
    
    /**
    * Set eventoelemento
    * 
    * @param int $ 
    * @return Basico_Model_EventoElemento
    */
    public function setEventoElemento($eventoElemento)
    {
        $this->_eventoElemento = (int) $eventoElemento;
        return $this;
    }

    /**
    * Get eventoelemento
    * 
    * @return null|int
    */
    public function getEventoElemento()
    {
        return $this->_eventoElemento;
    }
 
    /**
     * Get eventoelemento object
     * @return null|EventoElemento
     */
    public function getEventoElementoObject()
    {
        $model = new Basico_Model_EventoElemento();
        $object = $model->find($this->_eventoElemento);
        return $object;
    }

   /**
	* Set action
	* 
	* @param String $action 
	* @return Basico_Model_FormulariosFormulariosElementosEventosElementos
	*/
	public function setAction($action)
	{
		$this->_action = Basico_OPController_UtilOPController::retornaValorTipado($action, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get action
	* 
	* @return null|String
	*/
	public function getAction()
	{
		return $this->_action;
	}
    
    
	/**
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao 
	* @return Basico_Model_FormulariosFormulariosElementosEventosElementos
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
	* @return Basico_Model_FormulariosFormulariosElementosEventosElementos
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
	* @return Basico_Model_FormulariosFormulariosElementosEventosElementos
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
    * @return Basico_Model_FormulariosFormulariosElementosEventosElementos
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
    * @return Basico_Model_FormulariosFormulariosElementosEventosElementos
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormulariosFormulariosElementosEventosElementosMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosFormulariosElementosEventosElementosMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormulariosFormulariosElementosEventosElementosMapper());
        }
        return $this->_mapper;
    }

       
 }
