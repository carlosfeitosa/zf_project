<?php
/**
 * AcaoAplicacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcaoAplicacaoMapper
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacao extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{	
	/**
	 * Referencia a classe Basico_Model_Modulo
     * @var int
     */
    protected $_idModulo;
	/**
	 * @var String
	 */
	protected $_controller;
	/**
	 * @var String
	 */
	protected $_action;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	
	/**
	* Set idModulo
	* 
	* @param int $idModulo 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setIdModulo($idModulo)
	{
		$this->_idModulo = Basico_OPController_UtilOPController::retornaValorTipado($idModulo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idModulo
	* 
	* @return null|int
	*/
	public function getIdModulo()
	{
		return $this->_idModulo;
	}
 
    /**
     * Get modulo object
     * @return null|Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idModulo);
        return $object;
    }
    
	/**
	* Set controller
	* 
	* @param String $controller 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setController($controller)
	{
		$this->_controller = Basico_OPController_UtilOPController::retornaValorTipado($controller, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get controller
	* 
	* @return null|String
	*/
	public function getController()
	{
		return $this->_controller;
	}
     
	/**
	* Set action
	* 
	* @param String $action 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setAction($action)
	{
		$this->_action = Basico_OPController_UtilOPController::retornaValorTipado($action, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get action
	* 
	* @return null|String
	*/
	public function getAction()
	{
		return $this->_action;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Boolean
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
     
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
	
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_AcaoAplicacao
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}
    
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AcaoAplicacaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AcaoAplicacaoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_AcaoAplicacaoMapper);
	}
}
