<?php
/**
 * FormularioAssocclElementoGrupoAssocclDecorator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoGrupoAssocclDecoratorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoGrupoAssocclDecorator extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
{
	/**
     * Referência a classe Basico_Model_FormularioAssocclElemento
     * @var Int
     */
    protected $_idGrupo;
    /**
     * Referência a classe Basico_Model_Evento
     * @var int
     */
    protected $_idDecorator;
	/**
     * @var int
     */
    protected $_ordem;
   
    /**
    * Set idAssocclElemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioAssocclElementoGrupoAssocclDecorator
    */
    public function setIdGrupo($idAssocclElemento)
    {
        $this->_idGrupo = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idGrupo
    * 
    * @return null|int
    */
    public function getIdGrupo()
    {
        return $this->_idGrupo;
    }
 
    /**
     * Get Grupo object
     * @return null|Basico_Model_FormularioAssocclElementoGrupo
     */
    public function getGrupoObject()
    {
        $model = new Basico_Model_FormularioAssocclElementoGrupo();
        $object = $model->find($this->_idGrupo);
        return $object;
    }
    
    /**
    * Set idDecorator
    * 
    * @param int $ 
    * @return Basico_Model_FormularioAssocclElementoGrupoAssocclDecorator
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
     * Get decorator object
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
	* @param int $ordem 
	* @return Basico_Model_FormularioAssocclElementoGrupoAssocclDecorator
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
    * Lazy loads Basico_Model_FormularioAssocclElementoGrupoAssocclDecoratorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclElementoGrupoAssocclDecoratorMapper
    */
    public function getMapper()
    {
        return parent::getMapper(Basico_Model_FormularioAssocclElementoGrupoAssocclDecoratorMapper);
    }
 }