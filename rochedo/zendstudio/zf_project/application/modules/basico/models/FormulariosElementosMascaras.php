<?php
/**
 * FormulariosElementosMascaras model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormulariosElementosMascarasMapper
 * @subpackage Model
 */
class Basico_Model_FormulariosElementosMascaras
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormulariosElementosMascarasMapper
     */
    protected $_mapper;

    /**
     * @var Integer 
     */
    protected $_mascara;
    
    /**
     * @var Integer
     */
    protected $_formularioElemento;
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
     * @return Basico_Model_FormulariosElementosMascaras
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
    * Set mascara
    * 
    * @param int $ 
    * @return Basico_Model_Mascara
    */
    public function setMascara($mascara)
    {
        $this->_mascara = Basico_OPController_UtilOPController::retornaValorTipado($mascara, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get mascara
    * 
    * @return null|int
    */
    public function getMascara()
    {
        return $this->_mascara;
    }
 
    /**
     * Get mascara object
     * @return null|Basico_Model_Mascara
     */
    public function getMascaraObject()
    {
        $model = new Basico_Model_Mascara();
        $object = $model->find($this->_mascara);
        return $object;
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
     * Get formularioelemento object
     * @return null|Basico_Model_FormularioElemento
     */
    public function getFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = $model->find($this->_formularioelemento);
        return $object;
    }
    
    /**
    * Set entry rowinfo
    * 
    * @param  string $rowinfo 
    * @return Basico_Model_FormulariosElementosMascaras
    */
    public function setRowinfo($rowinfo)
    {
        $this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
        return $this;
    }

    /**
    * Retrieve entry rowinfo
    * 
    * @return null|string
    */
    public function getRowinfo()
    {
        return $this->_rowinfo;
    }

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_FormulariosElementosMascaras
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
    * @return Basico_Model_FormulariosElementosMascaras
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormulariosElementosMascarasMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosElementosMascarasMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormulariosElementosMascarasMapper());
        }
        return $this->_mapper;
    }

    /**
    * Save the current entry
    * 
    * @return void
    */
    public function save()
    {
        $this->getMapper()->save($this);
    }
    
    /**
     * Delete the current entry
     * @return void
     */
    public function delete()
    {
        $this->getMapper()->delete($this);
    }

    /**
    * Find an entry
    *
    * Resets entry state if matching id found.
    * 
    * @param  int $id 
    * @return Basico_Model_FormulariosElementosMascaras
      
    */
    public function find($id)
    {
        $this->getMapper()->find($id, $this);
        return $this;
    }

    /**
    * Fetch all entries
    * 
    * @return array
    */
    public function fetchAll()
    {
        return $this->getMapper()->fetchAll();
    }
    
    /**
    * Fetch a list of entries that satisfy the parameters <params>
    * 
    * @return array
    */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
    {
        return $this->getMapper()->fetchList($where, $order, $count, $offset);
    }
}
