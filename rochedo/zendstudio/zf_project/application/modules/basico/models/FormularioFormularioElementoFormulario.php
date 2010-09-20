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
        $this->_formularioFormularioElemento = (int) $formularioFormularioElemento;
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
        $object = $model->find($this->_formularioFormularioElemento);
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
        $this->_formulario = (int) $formulario;
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
        $this->_constanteTextualLabel = (String) $constanteTextualLabel;
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
        $object = $model->find($this->_formulario);
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
		$this->_rowinfo = (String) $rowinfo;
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
    * @return Basico_Model_FormularioFormularioElementoFormulario
      
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
        
    /**
    * fetch list of entries that satisfy the parameters but allowing a join
    *
    * @return array
    */
    public function fetchJoinList($joins=null, $where=null, $order=null, $count=null, $offset=null)
    {
        return $this->getMapper()->fetchJoinList($joins, $where, $order, $count, $offset);
    }
    
    /**
    * fetch joined list of entries that satisfy the parameters
    *
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby=null, $where=null, $order=null)
    {
        return $this->getMapper()->fetchJoin($jointable, $joinby, $where, $order);
    }

}