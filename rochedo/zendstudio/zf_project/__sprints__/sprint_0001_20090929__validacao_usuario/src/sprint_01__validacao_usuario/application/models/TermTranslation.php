<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * TermTranslation model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_TermTranslationMapper
 * @subpackage Model
 */
class Default_Model_TermTranslation
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Default_Model_TermTranslationMapper
	 */
	protected $_mapper;

	/**
	 * @var Term
	 */
	protected $_term;
	/**
	 * @var String
	 */
	protected $_language;
	/**
	 * @var String
	 */
	protected $_translation;
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
			throw new Exception('Invalid property specified');
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
			throw new Exception('Invalid property specified');
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options 
	 * @return Default_Model_TermTranslation
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
	* Set term
	* 
	* @param int $ 
	* @return Default_Model_Term
	*/
	public function setTerm($term)
	{
		$this->_term = (int) $term;
		return $this;
	}

	/**
	* Get term
	* 
	* @return null|int
	*/
	public function getTerm()
	{
		return $this->_term;
	}
 
    /**
     * Get term object
     * @return null|Term
     */
    public function getTermObject()
    {
        $model = new Default_Model_Term();
        $object = $model->find($this->_term);
        return $object;
    }
    
	/**
	* Set language
	* 
	* @param String $language 
	* @return Default_Model_Language
	*/
	public function setLanguage($language)
	{
		$this->_language = (String) $language;
		return $this;
	}

	/**
	* Get language
	* 
	* @return null|String
	*/
	public function getLanguage()
	{
		return $this->_language;
	}
     
	/**
	* Set translation
	* 
	* @param String $translation 
	* @return Default_Model_Translation
	*/
	public function setTranslation($translation)
	{
		$this->_translation = (String) $translation;
		return $this;
	}

	/**
	* Get translation
	* 
	* @return null|String
	*/
	public function getTranslation()
	{
		return $this->_translation;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Default_Model_TermTranslation
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
	* @return Default_Model_TermTranslation
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_TermTranslationMapper instance if no mapper registered.
	* 
	* @return Default_Model_TermTranslationMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Default_Model_TermTranslationMapper());
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
	* @return Default_Model_TermTranslation
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
	

//#BlockStart number=106 id=_16_5_1_40d01a2_1250796841411_723745_449_#_0
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=106

}
