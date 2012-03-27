<?php
/**
 * FormularioAssocclDecorator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclDecoratorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclDecorator extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idFormulario;
	/**
	 * @var Integer
	 */
	protected $_idDecorator;
	/**
	 * @var Integer
	 */
	protected $_ordem;	
    
	/**
	* Set idFormulario
	* 
	* @param Integer $idFormulario
	*  
	* @return Basico_Model_Formulario
	*/
	public function setIdFormulario($idFormulario)
	{
		$this->_idFormulario = Basico_OPController_UtilOPController::retornaValorTipado($idFormulario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idFormulario
	* 
	* @return null|int
	*/
	public function getIdFormulario()
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
        $object = $model->find($this->_idFormulario);
        return $object;
    }
    
	/**
	* Set idDecorator
	* 
	* @param Integer $idDecorator
	*  
	* @return Basico_Model_FormularioDecorator
	*/
	public function setIdDecorator($idDecorator)
	{
		$this->_idDecorator = Basico_OPController_UtilOPController::retornaValorTipado($idDecorator, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idDecorator
	* 
	* @return null|int
	*/
	public function getIdDecorator()
	{
		if ($this->_idDecorator)
			return $this->_idDecorator;
		else
			return null;
	}
    
    /**
     * Get Decorator object
     * 
     * @return null|Basico_Model_FormularioDecorator
     */
    public function getDecoratorObject()
    {
        $model = new Basico_Model_FormularioDecorator();
        $object = $model->find($this->_idDecorator);
        return $object;
    }	
	
	/**
	* Set ordem
	* 
	* @param Integer $ordem
	*  
	* @return Basico_Model_FormularioAssocclDecorator
	*/
	public function setOrdem($ordem)
	{
		$this->_idOrdem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idOrdem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		if ($this->_idOrdem)
			return $this->_idOrdem;
		else
			return null;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioAssocclDecoratorMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioAssocclDecoratorMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_FormularioAssocclDecoratorMapper');
	}	
}