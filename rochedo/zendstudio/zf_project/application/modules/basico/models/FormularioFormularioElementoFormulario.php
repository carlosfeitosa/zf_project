<?php
/**
 * FormularioFormularioElementoFormulario model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioFormularioElementoFormularioMapper
 * @subpackage Model
 */
class Basico_Model_FormularioFormularioElementoFormulario
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormularioFormularioElementoFormularioMapper
     */
    protected $_mapper;

    /**
     * @var FormularioFormularioElemento
     */
    protected $_formularioFormularioElemento;
    
    /**
     * @var Formulario
     */
    protected $_formulario;
    
    /**
     * @var constanteTextualLabel
     */
    protected $_constanteTextualLabel;
    
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
     * @return Basico_Model_FormularioFormularioElementoFormulario
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
    * Set formularioFormularioElemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioFormularioElemento
    */
    public function setFormularioFormularioElemento($formularioFormularioElemento)
    {
        $this->_formularioFormularioElemento = Basico_OPController_UtilOPController::retornaValorTipado($formularioFormularioElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioFormularioElemento
    * 
    * @return null|int
    */
    public function getFormularioFormularioElemento()
    {
        return $this->_formularioFormularioElemento;
    }
 
    /**
     * Get formularioFormularioElemento object
     * @return null|FormularioFormularioElemento
     */
    public function getFormularioFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioFormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_formularioFormularioElemento);
        return $object;
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
    * Set constanteTextualLabel
    * 
    * @param String $constanteTextualLabel 
    * @return Basico_Model_Formulario
    */
    public function setConstanteTextualLabel($constanteTextualLabel)
    {
        $this->_constanteTextualLabel = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualLabel, TIPO_STRING, true);
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
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormularioFormularioElementoFormulario
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
    * @return Basico_Model_FormularioFormularioElementoFormulario
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
    * @return Basico_Model_FormularioFormularioElementoFormulario
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioFormularioElementoFormularioMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioFormularioElementoFormularioMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormularioFormularioElementoFormularioMapper());
        }
        return $this->_mapper;
    }
}
