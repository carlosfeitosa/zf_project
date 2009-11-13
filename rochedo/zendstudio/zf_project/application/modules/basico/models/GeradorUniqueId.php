<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * GeradorUniqueId model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_GeradorUniqueIdMapper
 * @subpackage Model
 */
class Basico_Model_GeradorUniqueId
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
	 * @return Basico_Model_GeradorUniqueId
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
	
	public function gerar($modelo, $nomeDoCampoBancoDeDados)
	{
	    $uniqueId = md5(uniqid(rand(), true));
	    $buscaUniqueId = $modelo->fetchList("{$nomeDoCampoBancoDeDados} = '{$uniqueId}'", null, 1, 0);

	    while (isset($buscaUniqueId[0]->id))
	    {
            $uniqueId = md5(uniqid(rand(), true));
	        $buscaUniqueId = $modelo->fetchList("{$nomeDoCampoBancoDeDados} = '{$uniqueId}'", null, 1, 0);
	    }
	    
	    return $uniqueId;
	}
}
