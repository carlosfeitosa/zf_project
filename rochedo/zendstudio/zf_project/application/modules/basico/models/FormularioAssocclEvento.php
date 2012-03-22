<?php
/**
 * FormularioAssocclEvento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclEventoMapper
 * @subpackage Model
 */

class Basico_Model_FormularioAssocclEvento extends Abstract_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idFormulario;
	/**
	 * @var Integer
	 */	
	protected $_idEvento;
	/**
	 * @var Integer
	 */
	protected $_idAcaoEvento;
	/**
	 * @var Integer
	 */
	protected $_ordem;
	
	/**
	* Set idFormulario
	* 
	* @param int $idFormulario
	* 
	* @return Basico_Model_FormularioAssocclEvento
	*/
	public function setIdElemento($idFormulario)
	{
		$this->_idFormulario = Basico_OPController_UtilOPController::retornaValorTipado($idFormulario,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idFormulario
	* 
	* @return null|int
	*/
	public function getIdElemento()
	{
		if ($this->_idFormulario)
			return $this->_idFormulario;
		else
			return null;
	}
	
	/**
     * Get Formulario object
     * 
     * @return null|Basico_Model_Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = $model->getMapper()->find($this->_idFormulario);
        return $object;
    }	
	
	/**
	* Set idEvento
	* 
	* @param Integer $idEvento 
	* 
	* @return Basico_Model_FormularioAssocclEvento
	*/
	public function setIdEvento($idEvento)
	{
		$this->_idEvento = Basico_OPController_UtilOPController::retornaValorTipado($idEvento,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idEvento
	* 
	* @return null|Integer
	*/
	public function getIdEvento()
	{
		if ($this->_idEvento)
			return $this->_idEvento;
		else
			return null;
	}

	/**
     * Get Evento object
     * 
     * @return null|Basico_Model_Evento
     */
    public function getEventoObject()
    {
        $model = new Basico_Model_Evento();
        $object = $model->getMapper()->find($this->_idEvento);
        return $object;
    }	
	 
	/**
	* Set idAcaoEvento
	* 
	* @param Integer $idAcaoEvento 
	* 
	* @return Basico_Model_FormularioAssocclEvento
	*/
	public function setIdAcaoEvento($idAcaoEvento)
	{
		$this->_idAcaoEvento = Basico_OPController_UtilOPController::retornaValorTipado($idAcaoEvento,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idAcaoEvento
	* 
	* @return null|int
	*/
	public function getidAcaoEvento()
	{
		if ($this->_idAcaoEvento)
			return $this->_idAcaoEvento;
		else
			return null;
	}
	
	/**
     * Get AcaoEvento object
     * 
     * @return null|Basico_Model_AcaoEvento
     */
    public function getAcaoEventoObject()
    {
        $model = new Basico_Model_AcaoEvento();
        $object = $model->getMapper()->find($this->_idAcaoEventoEvento);
        return $object;
    }	
	     
	/**
	* Set ordem
	* 
	* @param Integer $ordem 
	* 
	* @return Basico_Model_FormularioAssocclEvento
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		if (strlen($this->_ordem))
			return $this->_ordem;
		else
			return null;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioAssocclEventoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioAssocclEventoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_FormularioAssocclEventoMapper);
	}	
}