<?php
/**
 * ContatoCpgEmail model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ContatoCpgEmailMapper
 * @subpackage Model
 */
class Basico_Model_ContatoCpgEmail extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * Referencia a classe Basico_Model_Categoria
     * @var Int
     */
    protected $_idCategoria;
	/**
	 * @var Integer
	 */
	protected $_idGenericoProprietario;
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
	protected $_uniqueId;
	/**
	 * @var String
	 */
	protected $_email;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var Boolean
	 */
	protected $_validado;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var Date
	 */
	protected $_datahoraUltimaValidacao;
	
	/**
	* Set idCategoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
	
	/**
     * Get categoria object
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }

	/**
	* Set idGenericoProprietario
	* 
	* @param Int $idGenericoProprietario 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenericoProprietario
	* 
	* @return null|Int
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
	
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_ContatoCpgEmail
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
	* @return Basico_Model_ContatoCpgEmail
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
	* @return Basico_Model_ContatoCpgEmail
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
	* Set uniqueId
	* 
	* @param String $uniqueId 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setUniqueId($uniqueId)
	{
		$this->_uniqueId = Basico_OPController_UtilOPController::retornaValorTipado($uniqueId, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get uniqueId
	* 
	* @return null|String
	*/
	public function getUniqueId()
	{
		return $this->_uniqueId;
	}
     
	/**
	* Set email
	* 
	* @param String $email 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setEmail($email)
	{
		$this->_email = Basico_OPController_UtilOPController::retornaValorTipado(strtolower($email), TIPO_STRING, true);
		return $this;
	}

	/**
	* Get email
	* 
	* @return null|String
	*/
	public function getEmail()
	{
		return $this->_email;
	}
	
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get descricao
	* 
	* @return null|String
	*/
	public function getDescricao()
	{
		return $this->_descricao;
	}
     
	/**
	* Set validado
	* 
	* @param Boolean $validado 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setValidado($validado)
	{
		$this->_validado = Basico_OPController_UtilOPController::retornaValorTipado($validado, TIPO_BOOLEAN); 
		return $this;
	}

	/**
	* Get validado
	* 
	* @return null|Boolean
	*/
	public function getValidado()
	{
		return $this->_validado;
	}
	
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN);
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
	* Set datahoraUltimaValidacao
	* 
	* @param String $datahoraUltimaValidacao 
	* @return Basico_Model_ContatoCpgEmail
	*/
	public function setDatahoraUltimaValidacao($datahoraUltimaValidacao)
	{
		$this->_datahoraUltimaValidacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaValidacao, TIPO_DATE,true);
		return $this;
	}

	/**
	* Get DatahoraUltimaValidacao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaValidacao()
	{
		return $this->_datahoraUltimaValidacao;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ContatoCpgEmailMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ContatoCpgEmailMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_ContatoCpgEmailMapper');
	}
}
