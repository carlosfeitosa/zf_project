<?php
/**
 * This is automatically generated file using the BOZA php generator plugin for Eclipse
 * version 1.0
 */

/**
 * %>self.name<% model
 *
 * Utilizes the Data Mapper pattern to persist data.
 *
 * @uses       Default_Model_AdminMenuMapper
 * @subpackage Model
 */
class Default_Model_AdminMenu
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Default_Model_AdminMenuMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_caption;
	/**
	 * @var int
	 */
	protected $_order;
	/**
	 * @var Text
	 */
	protected $_description;
	/**
	 * @var AdminMenu
	 */
	protected $_parent;
	/**
	 * @var String
	 */
	protected $_controller;
	/**
	 * @var String
	 */
	protected $_action;


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
	 * @return Default_Model_AdminMenu
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
	* Set caption
	*
	* @param String $caption
	* @return Default_Model_
	*/
	public function setCaption($caption)
	{
		$this->_caption = (String) $caption;
		return $this;
	}

	/**
	* Get caption
	*
	* @return null|String
	*/
	public function getCaption()
	{
		return $this->_caption;
	}

	/**
	* Set order
	*
	* @param int $order
	* @return Default_Model_
	*/
	public function setOrder($order)
	{
		$this->_order = (int) $order;
		return $this;
	}

	/**
	* Get order
	*
	* @return null|int
	*/
	public function getOrder()
	{
		return $this->_order;
	}

	/**
	* Set description
	*
	* @param String $description
	* @return Default_Model_
	*/
	public function setDescription($description)
	{
		$this->_description = (String) $description;
		return $this;
	}

	/**
	* Get description
	*
	* @return null|String
	*/
	public function getDescription()
	{
		return $this->_description;
	}

	/**
	* Set parent
	*
	* @param int $parent
	* @return Default_Model_
	*/
	public function setParent($parent)
	{
		$this->_parent = (int) $parent;
		return $this;
	}

	/**
	* Get parent
	*
	* @return null|int
	*/
	public function getParent()
	{
		return $this->_parent;
	}

	/**
	* Set controller
	*
	* @param String $controller
	* @return Default_Model_
	*/
	public function setController($controller)
	{
		$this->_controller = (String) $controller;
		return $this;
	}

	/**
	* Get controller
	*
	* @return null|String
	*/
	public function getController()
	{
		return $this->_controller;
	}

	/**
	* Set action
	*
	* @param String $action
	* @return Default_Model_
	*/
	public function setAction($action)
	{
		$this->_action = (String) $action;
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
	* Set entry id
	*
	* @param  int $id
	* @return Default_Model_AdminMenu
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
	* @return Default_Model_AdminMenu
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_AdminMenuMapper instance if no mapper registered.
	*
	* @return Default_Model_AdminMenuMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Default_Model_AdminMenuMapper());
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
	* Find an entry
	*
	* Resets entry state if matching id found.
	*
	* @param  int $id
	* @return Default_Model_AdminMenu
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
