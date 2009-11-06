<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * RowInfo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_RowInfoMapper
 * @subpackage Model
 */
class Basico_Model_RowInfo
{
	/**
	 * @var String
	 */
	protected $_xml;
	/**
	 * @var Date
	 */
	protected $_genericDateTimeLastModified;
	/**
	 * @var int
	 */
	protected $_genericIdLoginLastModified;
	/**
	 * @var Date
	 */
	protected $_genericDateTimeCreation;
	/**
	 * @var int
	 */
	protected $_genericIdLoginCreation;
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
	 * @return Basico_Model_RowInfo
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
	* Set xml
	* 
	* @param String $xml 
	* @return Basico_Model_Xml
	*/
	public function setXml($xml)
	{
		$this->_xml = (String) $xml;
		return $this;
	}

	/**
	* Get xml
	* 
	* @return null|String
	*/
	public function getXml()
	{
        return $this->getGeradorObject()->getGeradorXmlObject()->gerar($this, NULL, NULL, 'rowinfo', 'xml_data', 'rowinfo', 'agilfap2_desenv/public/xsd/rowinfo.xsd');
	}
	
	/**
	* Set genericDateTimeLastModified
	* 
	* @param String $genericDateTimeLastModified
	* @return Basico_Model_GenericDateTimeLastModified
	*/
	public function setGenericDateTimeLastModified($genericDateTimeLastModified)
	{
		$this->_genericDateTimeLastModified = (String) $genericDateTimeLastModified;
		return $this;
	}

	/**
	* Get genericDateTimeLastModified
	* 
	* @return null|String
	*/
	public function getGenericDateTimeLastModified()
	{
		return $this->_genericDateTimeLastModified;
	}
	
	/**
	* Set genericIdLoginLastModified
	* 
	* @param String genericIdLoginLastModified
	* @return Basico_Model_GenericIdLoginLastModified
	*/
	public function setGenericIdLoginLastModified($genericIdLoginLastModified)
	{
		$this->_genericIdLoginLastModified = (String) $genericIdLoginLastModified;
		return $this;
	}

	/**
	* Get genericIdLoginLastModified
	* 
	* @return null|String
	*/
	public function getGenericIdLoginLastModified()
	{
		return $this->_genericIdLoginLastModified;
	}
	
	
	/**
	* Set genericDateTimeCreation
	* 
	* @param String $genericDateTimeCreation
	* @return Basico_Model_GenericDateCreation
	*/
	public function setGenericDateTimeCreation($genericDateTimeCreation)
	{
		$this->_genericDateTimeCreation = (String) $genericDateTimeCreation;
		return $this;
	}

	/**
	* Get genericDateTimeCreation
	* 
	* @return null|String
	*/
	public function getGenericDateTimeCreation()
	{
		return $this->_genericDateTimeCreation;
	}
	
	/**
	* Set genericIdLoginCreation
	* 
	* @param String genericIdLoginLastModified
	* @return Basico_Model_GenericIdLoginLastModified
	*/
	public function setGenericIdLoginCreation($genericIdLoginCreation)
	{
		$this->_genericIdLoginCreation = (String) $genericIdLoginCreation;
		return $this;
	}

	/**
	* Get genericIdLoginLastModified
	* 
	* @return null|String
	*/
	public function getGenericIdLoginCreation()
	{
		return $this->_genericIdLoginCreation;
	}
	
    /**
     * Get gerador object
     * @return null|Gerador
     */
    public function getGeradorObject()
    {
        return new Basico_Model_Gerador();
    }
}
