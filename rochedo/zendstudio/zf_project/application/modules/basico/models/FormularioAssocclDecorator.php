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
	protected $_idDecoratorGrupo;
	/**
	 * @var Integer
	 */
	protected $_ordem;	
    
	/**
	* Set idFormulario
	* 
	* @param Integer $idFormulario
	*  
	* @return Basico_Model_FormularioAssocclDecorator
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
		return $this->_idFormulario;
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
	* @return Basico_Model_FormularioAssocclDecorator
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
		return $this->_idDecorator;
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
	* Set idDecoratorGrupo
	* 
	* @param Integer $idDecoratorGrupo
	*  
	* @return Basico_Model_FormularioAssocclDecorator
	*/
	public function setIdDecoratorGrupo($idDecoratorGrupo)
	{
		$this->_idDecoratorGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idDecoratorGrupo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idDecoratorGrupo
	* 
	* @return null|int
	*/
	public function getIdDecoratorGrupo()
	{
		return $this->_idDecoratorGrupo;
	}
    
    /**
     * Get DecoratorGrupo object
     * 
     * @return null|Basico_Model_FormularioDecoratorGrupo
     */
    public function getDecoratorGrupoObject()
    {
        $model = new Basico_Model_FormularioDecoratorGrupo();
        $object = $model->find($this->_idDecoratorGrupo);
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
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idOrdem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		return $this->_ordem;
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