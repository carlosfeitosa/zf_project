<?php
/**
 * Validador model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ValidatorMapper
 * @subpackage Model
 */
class Basico_Model_Validator extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idCategoria;
	/**
	 * Referencia a classe Basico_Model_Componente
     * @var Integer
     */
    protected $_idComponente;
	/**
	 * @var String
	 */
	protected $_nome;
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
	protected $_pararValidacaoAposFalha;
	/**
	 * @var String
	 */
	protected $_attribs;
	/**
	 * @var Boolean
	 */
	protected $_ativo;

    /**
	* Set idCategoria
	* 
	* @param Integer $idCategoria 
	* @return Basico_Model_Validator
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idCategoria
	* 
	* @return null|String
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}

	/**
    * Get Categoria object
    * 
    * @return null|Basico_Model_Categoria
    */
	public function getCategoriaObject()
	{
		// instanciando o modelo
		$model = new Basico_Model_Categoria();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        // retornando o objeto
        return $object;
	}
	
	/**
	* Set id componente
	* 
	* @param int $idComponente 
	* @return Basico_Model_Validator
	*/
	public function setIdComponente($idComponente)
	{
		$this->_idComponente = Basico_OPController_UtilOPController::retornaValorTipado($idComponente, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get id componente
	* 
	* @return null|int
	*/
	public function getIdComponente()
	{
		return $this->_idComponente;
	}
 
	/**
     * Get Componente object
     * @return null|Basico_Model_Componente
     */
    public function getComponenteObject()
    {
        $model = new Basico_Model_Componente();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idComponente);
        return $object;
    }

	/**
	* Set nome
	* 
	* @param String $nome 
	* 
	* @return String
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nome
	* 
	* @return null|String
	*/
	public function getNome()
	{
		return $this->_nome;
	}

	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_Validator
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
	* @return Basico_Model_Validator
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
	* Set pararValidacaoAposFalha
	* 
	* @param Boolean $pararValidacaoAposFalha 
	* @return Basico_Model_Validator
	*/
	public function setPararValidacaoAposFalha($pararValidacaoAposFalha)
	{
		$this->_pararValidacaoAposFalha = Basico_OPController_UtilOPController::retornaValorTipado($pararValidacaoAposFalha, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get pararValidacaoAposFalha
	* 
	* @return null|Boolean
	*/
	public function getPararValidacaoAposFalha()
	{
		return $this->_pararValidacaoAposFalha;
	}

	/**
	* Set attribs
	* 
	* @param String $attribs 
	* @return Basico_Model_Validator
	*/
	public function setAttribs($attribs)
	{
		$this->_attribs = Basico_OPController_UtilOPController::retornaValorTipado($attribs,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get attribs
	* 
	* @return null|String
	*/
	public function getAttribs()
	{
		return $this->_attribs;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Validator
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
	* Get data mapper
	*
	* Lazy loads Basico_Model_ValidatorMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ValidatorMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_ValidatorMapper');
	}
}