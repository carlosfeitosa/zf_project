<?php
/**
 * DadosProfissionaisAreasConhecimento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DadosProfissionaisAreasConhecimentoMapper
 * @subpackage Model
 */
class Basico_Model_DadosProfissionaisAreasConhecimento
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_DadosProfissionaisAreasConhecimentoMapper
     */
    protected $_mapper;

    /**
     * @var DadosProfissionais
     */
    protected $_dadosprofissionais;
    
    /**
     * @var AreaConhecimento
     */
    protected $_areaconhecimento;
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
     * @return Basico_Model_DadosProfissionaisAreasConhecimento
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
    * Set dadosprofissionais
    * 
    * @param int $ 
    * @return Basico_Model_DadosProfissionaisAreasConhecimento
    */
    public function setDadosProfissionais($dadosprofissionais)
    {
        $this->_dadosprofissionais = Basico_OPController_UtilOPController::retornaValorTipado($dadosprofissionais, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get dadosprofissionais
    * 
    * @return null|int
    */
    public function getDadosProfissionais()
    {
        return $this->_dadosprofissionais;
    }
 
    /**
     * Get dadosprofissionais object
     * @return null|Basico_Model_DadosProfissionais
     */
    public function getDadosProfissionaisObject()
    {
        $model = new Basico_Model_DadosProfissionais();
        $object = $model->find($this->_dadosprofissionais);
        return $object;
    }
    
    /**
    * Set areaconhecimento
    * 
    * @param int $ 
    * @return Basico_Model_DadosProfissionaisAreasConhecimento
    */
    public function setAreaConhecimento($areaconhecimento)
    {
        $this->_areaconhecimento = Basico_OPController_UtilOPController::retornaValorTipado($areaconhecimento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get areaconhecimento
    * 
    * @return null|int
    */
    public function getAreaConhecimento()
    {
        return $this->_areaconhecimento;
    }
 
    /**
     * Get areaconhecimento object
     * @return null|Basico_Model_AreaConhecimento
     */
    public function getAreaConhecimentoObject()
    {
        $model = new Basico_Model_AreaConhecimento();
        $object = $model->find($this->_areaconhecimento);
        return $object;
    }
    
    /**
      * Set rowinfo
      * 
      * @param String $rowinfo 
      * @return Basico_Model_DadosProfissionaisAreasConhecimento
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
    * @return Basico_Model_DadosProfissionaisAreasConhecimento
    */
    public function setId($id)
    {
        $this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id, TIPO_STRING, true);
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
    * @return Basico_Model_DadosProfissionaisAreasConhecimento
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_DadosProfissionaisAreasConhecimentoMapper instance if no mapper registered.
    * 
    * @return Basico_Model_DadosProfissionaisAreasConhecimentoMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_DadosProfissionaisAreasConhecimentoMapper());
        }
        return $this->_mapper;
    }

    /**
    * Find an entry
    *
    * Resets entry state if matching id found.
    * 
    * @param  int $id 
    * @return Basico_Model_DadosProfissionaisAreasConhecimento
      
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
