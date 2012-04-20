<?php
/**
 * FormularioAssocclElementoAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclElementoAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclElementoAssocclInclude extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idAssocclElemento;
	/**
	 * @var Integer
	 */
	protected $_idInclude;
	/**
	 * @var Integer
	 */
	protected $_ordem;
	
	/**
	* Set entry idAssocclElemento
	* 
	* @param  int $idAssocclElemento 
	* @return Basico_Model_FormularioAssocclElementoAssocclInclude
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
     * Get pessoaPerfil object
     * 
     * @return null|Basico_Model_FormularioAssocclElementoAssocclInclude
     */
	public function getAssocclElementoObject()
	{
		// instanciando o modelo perfil
		$model = new Basico_Model_FormularioAssocclElemento();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAssocclElemento);
        // retornando o objeto
        return $object;
	}

	/**
	* Set entry idInclude
	* 
	* @param  int $idInclude 
	* @return Basico_Model_FormularioAssocclElementoAssocclInclude
	*/
	public function setIdInclude($idInclude)
	{
		$this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idInclude
	* 
	* @return null|int
	*/
	public function getIdInclude()
	{
		return $this->_idInclude;
	}

	 /**
     * Get Include object
     * 
     * @return null|Basico_Model_FormularioAssocclElementoAssocclInclude
     */
	public function getIncludeObject()
	{
		// instanciando o modelo
		$model = new Basico_Model_Include();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idInclude);
        // retornando o objeto
        return $object;
	}

	/**
	* Set entry ordem
	* 
	* @param  int $ordem 
	* @return Basico_Model_FormularioAssocclElementoAssocclInclude
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
	* Lazy loads Basico_Model_FormularioAssocclElementoAssocclIncludeMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioAssocclElementoAssocclIncludeMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_FormularioAssocclElementoAssocclIncludeMapper');
	}
}