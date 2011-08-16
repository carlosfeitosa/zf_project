<?php
/**
 * TemplateArtigo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       GC_Model_TemplateArtigoMapper
 * @subpackage Model
 */
class GC_Model_TemplateArtigo
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var GC_Model_TemplateArtigoMapper
     */
    protected $_mapper;

    /**
     * @var Template
     */
    protected $_template;
    
    /**
     * @var Artigo
     */
    protected $_artigo;
    
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
     * @return GC_Model_TemplateArtigo
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
    * Set template
    * 
    * @param int $ 
    * @return GC_Model_Template
    */
    public function setTemplate($template)
    {
        $this->_template = (int) $template;
        return $this;
    }

    /**
    * Get template
    * 
    * @return null|int
    */
    public function getTemplate()
    {
        return $this->_template;
    }
 
    /**
     * Get template object
     * @return null|Template
     */
    public function getTemplateObject()
    {
        $model = new GC_Model_Template();
        $object = $model->find($this->_template);
        return $object;
    }
    
    /**
    * Set artigo
    * 
    * @param int $ 
    * @return Default_Model_Artigo
    */
    public function setArtigo($artigo)
    {
        $this->_artigo = (int) $artigo;
        return $this;
    }

    /**
    * Get artigo
    * 
    * @return null|int
    */
    public function getArtigo()
    {
        return $this->_artigo;
    }
 
    /**
     * Get artigo object
     * @return null|Artigo
     */
    public function getArtigoObject()
    {
        $model = new GC_Model_Artigo();
        $object = $model->find($this->_artigo);
        return $object;
    }
    

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return GC_Model_TemplateArtigo
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
	* Set entry rowinfo
	* 
	* @param  String $rowinfo
	* @return GC_Model_TemplateArtigo
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = (String) $rowinfo;
		return $this;
	}

	/**
	* Retrieve entry rowinfo
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
    * @return GC_Model_TemplateArtigo
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads GC_Model_TemplateArtigoMapper instance if no mapper registered.
    * 
    * @return GC_Model_TemplateArtigoMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new GC_Model_TemplateArtigoMapper());
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
    * @return GC_Model_TemplateArtigo
      
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
