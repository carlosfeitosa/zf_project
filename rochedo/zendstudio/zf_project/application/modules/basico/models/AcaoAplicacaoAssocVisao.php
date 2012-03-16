<?php
/**
 * AcaoAplicacaoAssocVisao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcaoAplicacaoAssocVisaoMapper
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoAssocVisao extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
	* @var int
	*/
	protected $_idCategoria;
	/**
	* @var int
	*/
	protected $_idAcaoAplicacao;
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
	protected $_constanteTextualTitulo;
	/**
	 * @var String
	 */
	protected $_constanteTextualSubTitulo;
	/**
	 * @var String
	 */
	protected $_constanteTextualMensagem;
	
	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
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
	* Set entry idAcaoAplicacao
	* 
	* @param  int $idAcaoAplicacao 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setIdAcaoAplicacao($idAcaoAplicacao)
	{
		$this->_idAcaoAplicacao = Basico_OPController_UtilOPController::retornaValorTipado($idAcaoAplicacao, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idAcaoAplicacao
	* 
	* @return null|int
	*/
	public function getIdAcaoAplicacao()
	{
		return $this->_idAcaoAplicacao;
	}
    
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
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
	* @return Basico_Model_AcaoAplicacaoAssocVisao
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
	* Set constanteTextualTitulo
	* 
	* @param String $constanteTextualTitulo 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setConstanteTextualTitulo($constanteTextualTitulo)
	{
		$this->_constanteTextualTitulo = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualTitulo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualTitulo
	* 
	* @return null|String
	*/
	public function getConstanteTextualTitulo()
	{
		return $this->_constanteTextualTitulo;
	}
	
	/**
	* Set constanteTextualSubTitulo
	* 
	* @param String $constanteTextualSubTitulo 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setConstanteTextualSubTitulo($constanteTextualSubTitulo)
	{
		$this->_constanteTextualSubTitulo = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualSubTitulo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualSubTitulo
	* 
	* @return null|String
	*/
	public function getConstanteTextualSubTitulo()
	{
		return $this->_constanteTextualSubTitulo;
	}
	
	/**
	* Set constanteTextualMensagem
	* 
	* @param String $constanteTextualMensagem 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
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
	* Lazy loads Basico_Model_AcaoAplicacaoAssocVisaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AcaoAplicacaoAssocVisaoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_AcaoAplicacaoAssocVisaoMapper);
	}
}
