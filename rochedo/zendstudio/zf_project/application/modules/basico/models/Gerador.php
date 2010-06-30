<?php
/**
 * Gerador model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_GeradorMapper
 * @subpackage Model
 */
class Basico_Model_Gerador
{
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
	 * @return Basico_Model_Gerador
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
	 * Gera e retorna um uniqueId.
	 * @param Array $blacklist
	 * @return String $uniqueId
	 */
	public function gerarToken($blacklist)
	{
	    $token = md5(uniqid(rand(), true));

	    while (array_search($token, $blacklist) !== false)
            $token = md5(uniqid(rand(), true));
	    
	    return $token;
	}
	
    /**
     * Get geradorUniqueId object
     * @return null|GeradorUniqueId
     */
    public function getGeradorUniqueIdObject()
    {
        return new Basico_Model_GeradorUniqueId();
    }
    
    /**
     * Get geradorXml object
     * @return null|GeradorXml
     */
    public function getGeradorXmlObject()
    {
        return new Basico_Model_GeradorXml();
    }
}
