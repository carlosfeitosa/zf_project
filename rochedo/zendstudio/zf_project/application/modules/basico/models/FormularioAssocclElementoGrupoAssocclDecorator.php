<?php
/**
 * DecoratorAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DecoratorAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_DecoratorAssocclInclude extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
{
    /**
     * Referência a classe Basico_Model_FormularioDecorator
     * @var int
     */
    protected $_idDecorator;
	/**
     * Referência a classe Basico_Model_Include
     * @var Int
     */
    protected $_idInclude;
	/**
     * @var int
     */
    protected $_ordem;

    /**
    * Set idDecorator
    * 
    * @param int $ 
    * @return Basico_Model_DecoratorAssocclInclude
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
    * Set idAssocclElemento
    * 
    * @param int $idInclude
    * @return Basico_Model_DecoratorAssocclInclude
    */
    public function setIdInclude($idInclude)
    {
        $this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idInclude
    * 
    * @return null|int
    */
    public function getIdInclude()
    {
        return $this->_idInclude;
    }
 
    /**
     * Get Include object
     * @return null|Basico_Model_Include
     */
    public function getIncludeObject()
    {
        $model = new Basico_Model_Include();
        $object = $model->find($this->_idInclude);
        return $object;
    }

   /**
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_DecoratorAssocclInclude
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
    * Lazy loads Basico_Model_DecoratorAssocclIncludeMapper instance if no mapper registered.
    * 
    * @return Basico_Model_DecoratorAssocclIncludeMapper
    */
    public function getMapper()
    {
        return parent::getMapper(Basico_Model_DecoratorAssocclIncludeMapper);
    }
 }