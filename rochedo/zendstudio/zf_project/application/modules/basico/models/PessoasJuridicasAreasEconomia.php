<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * PessoaJuridicaAreaEconomia model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoasJuridicasAreasEconomiaMapper
 * @subpackage Model
 */
class Basico_Model_PessoasJuridicasAreasEconomia
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_PessoasJuridicasAreasEconomiaMapper
     */
    protected $_mapper;

    /**
     * @var PessoaJuridica
     */
    protected $_pessoajuridica;
    /**
     * @var AreaEconomia
     */
    protected $_areaeconomia;
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
     * @return Basico_Model_PessoasJuridicasAreasEconomia
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
    * Set pessoajuridica
    * 
    * @param int $ 
    * @return Basico_Model_PessoasJuridicasAreasEconomia
    */
    public function setPessoaJuridica($pessoajuridica)
    {
        $this->_pessoajuridica = Basico_OPController_UtilOPController::retornaValorTipado($pessoajuridica, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get pessoajuridica
    * 
    * @return null|int
    */
    public function getPessoaJuridica()
    {
        return $this->_pessoajuridica;
    }
 
    /**
     * Get pessoajuridica object
     * @return null|Basico_Model_PessoaJuridica
     */
    public function getPessoaJuridicaObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_PessoaJuridica();
        // recuperando objeto
        $object = $model->find($this->_pessoajuridica);
        // retornando objeto
        return $object;
    }
    
    /**
    * Set areaeconomia
    * 
    * @param int $ 
    * @return Basico_Model_PessoasJuridicasAreasEconomia
    */
    public function setAreaEconomia($areaeconomia)
    {
        $this->_areaeconomia = Basico_OPController_UtilOPController::retornaValorTipado($areaeconomia, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get areaeconomia
    * 
    * @return null|int
    */
    public function getAreaEconomia()
    {
        return $this->_areaeconomia;
    }
 
    /**
     * Get areaeconomia object
     * @return null|Basico_Model_AreaEconomia
     */
    public function getAreaEconomiaObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_AreaEconomia();
        // recuperando objeto
        $object = $model->find($this->_areaeconomia);
        // retornando objeto
        return $object;
    }

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_PessoasJuridicasAreasEconomia
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
    * @return Basico_Model_PessoasJuridicasAreasEconomia
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
    * @return Basico_Model_PessoasJuridicasAreasEconomia
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_PessoaJuridicaAreaEconomiaMapper instance if no mapper registered.
    * 
    * @return Basico_Model_PessoasJuridicasAreasEconomiaMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_PessoaJuridicaAreaEconomiaMapper());
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
    * @return Basico_Model_PessoasJuridicasAreasEconomia
      
    */
    public function find($id)
    {
        $this->getMapper()->find((int) $id, $this);
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