<?php
/**
 * AcaoEvento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcaoEventoMapper
 * @subpackage Model
 */
class Basico_Model_AcaoEvento extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	* @var int
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
	protected $_acao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	    
	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_AcaoEvento
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
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_AcaoEvento
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
	* @return Basico_Model_AcaoEvento
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
	* @return Basico_Model_AcaoEvento
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
	* Set acao
	* 
	* @param String $acao 
	* @return Basico_Model_AcaoEvento
	*/
	public function setAcao($acao)
	{
		$this->_acao = Basico_OPController_UtilOPController::retornaValorTipado($acao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get acao
	* 
	* @return null|String
	*/
	public function getAcao()
	{
		return $this->_acao;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_AcaoEvento
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
	* Lazy loads Basico_Model_AcaoEventoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AcaoEventoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_AcaoEventoMapper');
	}
}
