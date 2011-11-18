<?php
/**
 * FormulariosElementosFormulariosElementosValidators model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper
 * @subpackage Model
 */
class Basico_Model_FormulariosElementosFormulariosElementosValidators
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper
     */
    protected $_mapper;

    /**
     * @var FormularioElementoValidador
     */
    protected $_formularioElementoValidator;
    
    /**
     * @var FormularioElemento
     */
    protected $_formularioElemento;
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
     * @return Basico_Model_FormulariosElementosFormulariosElementosValidators
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
    * Set formularioelementovalidador
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElementoValidador
    */
    public function setFormularioElementoValidador($formularioElementoValidator)
    {
        $this->_formularioElementoValidator = Basico_OPController_UtilOPController::retornaValorTipado($formularioElementoValidator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioElementoValidator
    * 
    * @return null|int
    */
    public function getFormularioElementoValidator()
    {
        return $this->_formularioElementoValidator;
    }
 
    /**
     * Get formularioelementovalidador object
     * @return null|FormularioElementoValidador
     */
    public function getFormularioElementoValidatorObject()
    {
        $model = new Basico_Model_FormularioElementoValidator();
        $object = $model->find($this->_formularioElementoValidator);
        return $object;
    }
    
    /**
    * Set formularioelemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setFormularioElemento($formularioelemento)
    {
        $this->_formularioelemento = Basico_OPController_UtilOPController::retornaValorTipado($formularioElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioelemento
    * 
    * @return null|int
    */
    public function getFormularioElemento()
    {
        return $this->_formularioElemento;
    }
 
    /**
     * Get formularioelemento object
     * @return null|FormularioElemento
     */
    public function getFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = $model->find($this->_formularioElemento);
        return $object;
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
	* @return Basico_Model_FormulariosElementosFormulariosElementosValidators
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
    * @return Basico_Model_FormulariosElementosFormulariosElementosValidators
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
    * @return Basico_Model_FormulariosElementosFormulariosElementosValidators
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper());
        }
        return $this->_mapper;
    }

}
