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
	 * @var String
	 */
	protected $_validator;
	/**
	 * @var Boolean
	 */
	protected $_ativo;

    /**
	* Set idCategoria
	* 
	* @param Integer $idCategoria 
	* @return Basico_Model_Categoria
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
	* @return Default_Model_Validator
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
	* @return Default_Model_Validator
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
	* Set validator
	* 
	* @param String $validator 
	* @return Default_Model_Validator
	*/
	public function setValidator($validator)
	{
		$this->_validator = Basico_OPController_UtilOPController::retornaValorTipado($validator, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get validator
	* 
	* @return null|String
	*/
	public function getValidator()
	{
		return $this->_validator;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Default_Model_Validator
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_STRING, true);
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