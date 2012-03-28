<?php
/**
 * FormAssocclElementoGrupo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormAssocclElementoGrupoMapper
 * @subpackage Model
 */

class Basico_Model_FormularioAssocclElementoGrupo extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
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
	protected $_constanteTextualLabel;
	
	/**
	* Set nome
	* 
	* @param String $nome
	* 
	* @return Basico_Model_FormAssocclElementoGrupo
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get nome
	* 
	* @return null|String
	*/
	public function getNome()
	{
		if ($this->_nome)
			return $this->_nome;
		else
			return null;
	}
 	
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual
	*  
	* @return Basico_Model_FormAssocclElementoGrupo
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		if ($this->_constanteTextual)
			return $this->_constanteTextual;
		else
			return null;
	}
     
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* 
	* @return Basico_Model_FormAssocclElementoGrupo
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		if ($this->_constanteTextualDescricao)
			return $this->_constanteTextualDescricao;
		else
			return null;
	}
         
	/**
	* Set constanteTextualLabel
	* 
	* @param String $constanteTextualLabel 
	* 
	* @return Basico_Model_FormAssocclElementoGrupo
	*/
	public function setConstanteTextualLabel($constanteTextualLabel)
	{		
		$this->_constanteTextualLabel = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualLabel,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextualLabel
	* 
	* @return null|String
	*/
	public function getConstanteTextualLabel()
	{
		if (strlen($this->_constanteTextualLabel))
			return $this->_constanteTextualLabel;
		else
			return null;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormAssocclElementoGrupoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormAssocclElementoGrupoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_FormularioAssocclElementoGrupoMapper');
	}	
}