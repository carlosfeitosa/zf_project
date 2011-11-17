<?php
/**
 * FormulariosElementosFormulariosElementosValidators model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper
 * @subpackage Model
 */
class Basico_Model_FormulariosElementosFormulariosElementosValidators
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper
     */
    protected $_mapper;

    /**
     * @var FormularioElementoValidador
     */
    protected $_formularioElementoValidador;
    
    /**
     * @var FormularioElemento
     */
    protected $_formularioElemento;
    /**
     * @var Date
     */
    protected $_dataHoraCriacao;
    /**
     * @var Date
     */
    protected $_dataHoraUltimaAtualizacao;
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
     * @return Basico_Model_FormulariosElementosFormulariosElementosValidators
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
    * Set formularioelementovalidador
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElementoValidador
    */
    public function setFormularioElementoValidador($formularioelementovalidador)
    {
        $this->_formularioelementovalidador = (int) $formularioelementovalidador;
        return $this;
    }

    /**
    * Get formularioelementovalidador
    * 
    * @return null|int
    */
    public function getFormularioElementoValidador()
    {
        return $this->_formularioelementovalidador;
    }
 
    /**
     * Get formularioelementovalidador object
     * @return null|FormularioElementoValidador
     */
    public function getFormularioElementoValidadorObject()
    {
        $model = new Basico_Model_FormularioElementoValidator();
        $object = $model->find($this->_formularioelementovalidador);
        return $object;
    }
    
    /**
    * Set formularioelemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setFormularioElemento($formularioelemento)
    {
        $this->_formularioelemento = (int) $formularioelemento;
        return $this;
    }

    /**
    * Get formularioelemento
    * 
    * @return null|int
    */
    public function getFormularioElemento()
    {
        return $this->_formularioelemento;
    }
 
    /**
     * Get formularioelemento object
     * @return null|FormularioElemento
     */
    public function getFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = $model->find($this->_formularioelemento);
        return $object;
    }
    
	/**
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao 
	* @return DateTime
	*/
	public function setDataHoraCriacao($dataHoraCriacao)
	{
		$this->_dataHoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataHoraCriacao
	* 
	* @return null|String
	*/
	public function getDataHoraCriacao()
	{
		return $this->_dataHoraCriacao;
	}
	
	/**
	* Set dataHoraUltimaAtualizacao
	* 
	* @param String $dataHoraUltimaAtualizacao 
	* @return DateTime
	*/
	public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
	{
		$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataHoraUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaAtualizacao()
	{
		return $this->_dataHoraUltimaAtualizacao;
	}

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormulariosElementosFormulariosElementosValidators
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING,true);
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
    * @return Basico_Model_FormulariosElementosFormulariosElementosValidators
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
    * @return Basico_Model_FormulariosElementosFormulariosElementosValidators
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormulariosElementosFormulariosElementosValidatorsMapper());
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
    * @return Basico_Model_FormulariosElementosFormulariosElementosValidators
      
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
      
    //start block for manually written code
        
    //end block for manually written code

}
