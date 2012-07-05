<?php
/**
 * FormularioAssocclElementoAssocclDecorator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclDecorator extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * Referencia a classe Basico_Model_FormularioAssocclElemento
     * @var int
     */
    protected $_idAssocclElemento;
    /**
     * Referencia a classe Basico_Model_FormularioDecorator
     * @var int
     */
    protected $_idDecorator;
    /**
     * Referencia a classe Basico_Model_FormularioDecoratorGrupo
     * @var int
     */
    protected $_idDecoratorGrupo;
    /**
     * @var Boolean
     */
    protected $_removeFlag;
    /**
     * @var int
     */
    protected $_ordem;
   
	/**
    * Set entry idAssocclElemento
    * 
    * @param  int $idAssocclElemento 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setIdAssocclElemento($idAssocclElemento)
    {
        $this->_idAssocclElemento = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idAssocclElemento
    * 
    * @return null|int
    */
    public function getIdAssocclElemento()
    {
        return $this->_idAssocclElemento;
    }
    
	/**
     * Get AssocclElemento object
     * @return null|Basico_Model_FormularioAssocclElemento
     */
    public function getAssocclElementoObject()
    {
        $model = new Basico_Model_FormularioAssocclElemento();
        $object = $model->find($this->_idAssocclElemento);
        return $object;
    }
    
    /**
    * Set entry idDecorator
    * 
    * @param  int $idDecorator 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setIdDecorator($idDecorator)
    {
        $this->_idDecorator = Basico_OPController_UtilOPController::retornaValorTipado($idDecorator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idDecorator
    * 
    * @return null|int
    */
    public function getIdDecorator()
    {
        return $this->_idDecorator;
    }
 
    /**
     * Get decorator object
     * @return null|Decorator
     */
    public function getDecoratorObject()
    {
        $model = new Basico_Model_FormularioDecorator();
        $object = $model->find($this->_idDecorator);
        return $object;
    }
    
	/**
    * Set entry idDecoratorGrupo
    * 
    * @param  int $idDecoratorGrupo 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setIdDecoratorGrupo($idDecoratorGrupo)
    {
        $this->_idDecoratorGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idDecoratorGrupo, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idDecoratorGrupo
    * 
    * @return null|int
    */
    public function getIdDecoratorGrupo()
    {
        return $this->_idDecoratorGrupo;
    }
 
    /**
     * Get DecoratorGrupo object
     * @return null|DecoratorGrupo
     */
    public function getDecoratorGrupoObject()
    {
        $model = new Basico_Model_FormularioDecoratorGrupo();
        $object = $model->find($this->_idDecoratorGrupo);
        return $object;
    }
    
	/**
    * Set entry removeFlag
    * 
    * @param  Boolean $removeFlag 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setRemoveFlag($removeFlag)
    {
        $this->_removeFlag = Basico_OPController_UtilOPController::retornaValorTipado($removeFlag, TIPO_BOOLEAN, true);
        return $this;
    }

    /**
    * Retrieve entry removeFlag
    * 
    * @return null|Boolean
    */
    public function getRemoveFlag()
    {
        return $this->_removeFlag;
    }
    
	/**
    * Set entry ordem
    * 
    * @param  int $ordem 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecorator
    */
    public function setOrdem($ordem)
    {
        $this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry ordem
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
    * Lazy loads Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper
    */
    public function getMapper()
    {
        return parent::getMapper('Basico_Model_FormularioAssocclElementoAssocclDecoratorMapper');
    }

}