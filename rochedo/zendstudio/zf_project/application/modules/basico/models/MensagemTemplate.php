<?php
/**
 * MensagemTemplate model
 *
 * Utiliza o Mapper para persistir os dados.
 * 
 * @uses Basico_Model_MensagemTemplateMapper
 * @subpackage Model
 */
class Basico_Model_MensagemTemplate extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	* @var int
	*/
	protected $_idCategoria;
	/**
	 * @var int
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
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var String
	 */
	protected $_constanteTextualAssunto;
	/**
	 * @var String
	 */
	protected $_constanteTextualMensagem;
		
	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_MensagemTemplate
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}
	
    /**
	* Retrieve entry idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
	
	/**
     * Get categoria object
     * @return null|Categoria
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
	* @param int $idGenericoProprietario 
	* @return Basico_Model_MensagemTemplate
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenericoProprietario
	* 
	* @return null|int
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
	
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_MensagemTemplate
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
	* @return Basico_Model_MensagemTemplate
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
	* @return Basico_Model_MensagemTemplate
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
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_MensagemTemplate
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
	* Set constanteTextualAssunto
	* 
	* @param String $constanteTextualAssunto 
	* @return Basico_Model_MensagemTemplate
	*/
	public function setConstanteTextualAssunto($constanteTextualAssunto)
	{
		$this->_constanteTextualAssunto = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualAssunto, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualAssunto
	* 
	* @return null|String
	*/
	public function getConstanteTextualAssunto()
	{
		return $this->_constanteTextualAssunto;
	}
	
	/**
	* Set constanteTextualMensagem
	* 
	* @param String $constanteTextualMensagem 
	* @return Basico_Model_MensagemTemplate
	*/
	public function setConstanteTextualMensagem($constanteTextualMensagem)
	{
		$this->_constanteTextualMensagem = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualMensagem, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualMensagem
	* 
	* @return null|String
	*/
	public function getConstanteTextualMensagem()
	{
		return $this->_constanteTextualMensagem;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_MensagemTemplateMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MensagemTemplateMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_MensagemTemplateMapper');
	}
}
