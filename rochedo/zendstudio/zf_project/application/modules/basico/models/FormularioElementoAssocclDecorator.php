<?php
/**
 * FormularioElementoAssocclDecorator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoAssocclDecoratorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElementoAssocclDecorator extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idElemento;
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
	 * @var Boolean
	 */
	protected $_removeFlag;

    /**
    * Set idElemento
    * 
    * @param int $idElemento 
    * 
    * @return Basico_Model_FormularioElementoAssocclDecorator
    */
    public function setIdElemento($idElemento)
    {
        $this->_idElemento = Basico_OPController_UtilOPController::retornaValorTipado($idElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idElemento
    * 
    * @return null|int
    */
    public function getIdElemento()
    {
        return $this->_idElemento;
    }

	 /**
     * Get FormularioElemento object
     * 
     * @return null|Basico_Model_FormularioElemento
     */
	public function getFormularioElementoObject()
	{
		// instanciando o modelo
		$model = new Basico_Model_FormularioElemento();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idElemento);
        // retornando o objeto
        return $object;
	}

	/**
    * Set idDecorator
    * 
    * @param int $idDecorator
    * 
    * @return Basico_Model_FormularioElementoAssocclDecorator
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
	* @return Basico_Model_FormularioElementoAssocclDecorator
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
    * @param int $ordem
    * 
    * @return Basico_Model_FormularioElementoAssocclDecorator
    */
    public function setOrdem($ordem)
    {
        $this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get ordem
    * 
    * @return null|int
    */
    public function getOrdem()
    {
        return $this->_ordem;
    }
    
	/**
	* Set removeFlag
	* 
	* @param Boolean $removeFlag
	*  
	* @return Basico_Model_FormularioElementoAssocclDecorator
	*/
	public function setRemoveFlag($removeFlag)
	{
		$this->_removeFlag = Basico_OPController_UtilOPController::retornaValorTipado($removeFlag, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get removeFlag
	* 
	* @return null|Boolean
	*/
	public function getRemoveFlag()
	{
		return $this->_removeFlag;
	}
    
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioElementoAssocclDecorator instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioElementoAssocclDecorator
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_FormularioElementoAssocclDecoratorMapper');
	}
}