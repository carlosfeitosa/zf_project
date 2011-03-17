<?php
/**
 * LogXml model
 *
 * @subpackage Model
 */
class Basico_Model_LogXml
{
	/**
	 * @var 
	 */
	protected $_applicationInfo;
	/**
	 * @var 
	 */
	protected $_userInfo;
	/**
	 * @var 
	 */
	protected $_eventInfo;
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
		
		$eventDateTime    = $options["eventDateTime"];
		$eventDescription = $options["eventDescription"];
		
		$paramsRequest  = Basico_OPController_UtilOPController::retornaUserRequest()->getParams();		
		$userAgent      = Basico_OPController_UtilOPController::retornaUserAgent();
		$clientIp       = Basico_OPController_UtilOPController::retornaUserIp();
		$connectionType = Basico_OPController_UtilOPController::retornaUserConnectionType();
		
		$this->_applicationInfo = array("module"  => $paramsRequest["module"],
										"request" => $paramsRequest,);
		
		$this->_userInfo        = array("agent" => $userAgent,
										"ip"    => "{$clientIp} ({$connectionType})",);
		
		$this->_eventInfo       = array("dateTime"    => $eventDateTime,
										"description" => $eventDescription,);
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
	 * @return Basico_Model_LogXml
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
	* Set applicationInfo
	* 
	* @param String $applicationInfo 
	* @return Basico_Model_ApplicationInfo
	*/
	public function setApplicationInfo($applicationInfo)
	{
		$this->_applicationInfo = Basico_OPController_UtilOPController::retornaValorTipado($applicationInfo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get applicationInfo
	* 
	* @return null|String
	*/
	public function getApplicationInfo()
	{
		return $this->_applicationInfo;
	}
     
	/**
	* Set userInfo
	* 
	* @param String $userInfo 
	* @return Basico_Model_UserInfo
	*/
	public function setUserInfo($userInfo)
	{
		$this->_userInfo = Basico_OPController_UtilOPController::retornaValorTipado($userInfo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get userInfo
	* 
	* @return null|String
	*/
	public function getUserInfo()
	{
		return $this->_userInfo;
	}
     
	/**
	* Set eventInfo
	* 
	* @param String $eventInfo 
	* @return Basico_Model_EventInfo
	*/
	public function setEventInfo($eventInfo)
	{
		$this->_eventInfo = Basico_OPController_UtilOPController::retornaValorTipado($eventInfo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get eventInfo
	* 
	* @return null|String
	*/
	public function getEventInfo()
	{
		return $this->_eventInfo;
	}
}
