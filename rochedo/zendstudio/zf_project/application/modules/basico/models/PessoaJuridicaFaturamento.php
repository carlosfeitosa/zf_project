<?php
/**
 * PessoaJuridicaFaturamento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaJuridicaFaturamentoMapper
 * @subpackage Model
 */

class Basico_Model_PessoaJuridicaFaturamento
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_PessoaJuridicaFaturamentoMapper
     */
    protected $_mapper;

    /**
     * @var PessoaJuridica
     */
    protected $_pessoajuridica;
    
    /**
     * @var Faturamento
     */
    protected $_faturamento;
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
     * @return Basico_Model_PessoaJuridicaFaturamento
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
    * @return Basico_Model_PessoaJuridica
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
        $model = new Basico_Model_PessoaJuridica();
        $object = $model->find($this->_pessoajuridica);
        return $object;
    }
    
    /**
    * Set faturamento
    * 
    * @param int $ 
    * @return Basico_Model_PessoaJuridicaFaturamento
    */
    public function setFaturamento($faturamento)
    {
        $this->_faturamento = Basico_OPController_UtilOPController::retornaValorTipado($faturamento, TIPO_INTEIRO, true) ;
        return $this;
    }

    /**
    * Get faturamento
    * 
    * @return null|int
    */
    public function getFaturamento()
    {
        return $this->_faturamento;
    }
 
    /**
     * Get faturamento object
     * @return null|Basico_Model_Faturamento
     */
    public function getFaturamentoObject()
    {
        $model = new Basico_Model_Faturamento();
        $object = $model->find($this->_faturamento);
        return $object;
    }
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_PessoaJuridicaFaturamento
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
    * @return Basico_Model_PessoaJuridicaFaturamento
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
    * @return Basico_Model_PessoaJuridicaFaturamento
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_PessoaJuridicaFaturamentoMapper instance if no mapper registered.
    * 
    * @return Basico_Model_PessoaJuridicaFaturamentoMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_PessoaJuridicaFaturamentoMapper());
        }
        return $this->_mapper;
    }

    /**
    * Find an entry
    *
    * Resets entry state if matching id found.
    * 
    * @param  int $id 
    * @return Basico_Model_PessoaJuridicaFaturamento
      
    */
    public function find($id)
    {
        $this->getMapper()->find((int)$id, $this);
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