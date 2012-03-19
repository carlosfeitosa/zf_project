<?php
/**
 * FormularioAssocclElementoAssocclEvento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoAssocclEventoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclEvento extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
     * Referência a classe Basico_Model_FormularioAssocclElemento
     * @var Int
     */
    protected $_idAssocclElemento;
    /**
     * Referência a classe Basico_Model_Evento
     * @var int
     */
    protected $_idEvento;
    /**
     * Referência a classe Basico_Model_AcaoEvento
     * @var int
     */
    protected $_idAcaoEvento;
	/**
     * @var int
     */
    protected $_ordem;
   
    /**
    * Set idAssocclElemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioAssocclElementoAssocclEvento
    */
    public function setIdAssocclElemento($idAssocclElemento)
    {
        $this->_idAssocclElemento = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idAssocclElemento
    * 
    * @return null|int
    */
    public function getIdAssocclElemento()
    {
        return $this->_idAssocclElemento;
    }
 
    /**
     * Get assocclElemento object
     * @return null|Basico_Model_FormularioAssocclElemento
     */
    public function getAssocclElementoObject()
    {
        $model = new Basico_Model_FormularioAssocclElemento();
        $object = $model->find($this->_idAssocclElemento);
        return $object;
    }
    
    /**
    * Set idEvento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioAssocclElementoAssocclEvento
    */
    public function setIdEvento($idEvento)
    {
        $this->_idEvento = Basico_OPController_UtilOPController::retornaValorTipado($idEvento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idEvento
    * 
    * @return null|int
    */
    public function getIdEvento()
    {
        return $this->_idEvento;
    }
 
    /**
     * Get evento object
     * @return null|Basico_Model_Evento
     */
    public function getEventoObject()
    {
        $model = new Basico_Model_Evento();
        $object = $model->find($this->_idEvento);
        return $object;
    }
    
	/**
    * Set idAcaoEvento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioAssocclElementoAssocclEvento
    */
    public function setIdAcaoEvento($idAcaoEvento)
    {
        $this->_idAcaoEvento = Basico_OPController_UtilOPController::retornaValorTipado($idAcaoEvento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idAcaoEvento
    * 
    * @return null|int
    */
    public function getIdAcaoEvento()
    {
        return $this->_idAcaoEvento;
    }
 
    /**
     * Get AcaoEvento object
     * @return null|Basico_Model_AcaoEvento
     */
    public function getAcaoEventoObject()
    {
        $model = new Basico_Model_AcaoEvento();
        $object = $model->find($this->_idAcaoEvento);
        return $object;
    }

   /**
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_FormularioAssocclElementoAssocclEvento
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|String
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}
	
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioAssocclElementoAssocclEventoMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclElementoAssocclEventoMapper
    */
    public function getMapper()
    {
        return parent::getMapper(Basico_Model_FormularioAssocclElementoAssocclEventoMapper);
    }

       
 }
