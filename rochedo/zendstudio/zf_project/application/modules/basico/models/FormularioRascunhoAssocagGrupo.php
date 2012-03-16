<?php
/**
 * FormularioRascunhoAssocagGrupo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioRascunhoAssocagGrupoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioRascunhoAssocagGrupo extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
     * @var Integer
     */
    protected $_idAssocclPerfil;
	/**
	 * @var String
	 */
	protected $_forms;

	/**
	* Set entry idAssocclPerfil
	* 
	* @param  int $idAssocclPerfil 
	* @return Basico_Model_FormularioRascunhoAssocagGrupo
	*/
	public function setIdAssocclPerfil($idAssocclPerfil)
	{
		$this->_idAssocclPerfil = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclPerfil,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry idAssocclPerfil
	* 
	* @return null|int
	*/
	public function getIdAssocclPerfil()
	{
		return $this->_idAssocclPerfil;
	}
     
	/**
	* Set forms
	* 
	* @param String $forms 
	* @return Basico_Model_forms
	*/
	public function setForms($forms)
	{
		$this->_forms = Basico_OPController_UtilOPController::retornaValorTipado($forms,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get forms
	* 
	* @return null|String
	*/
	public function getForms()
	{
		return $this->_forms;
	}
    
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioRascunhoAssocagGrupoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioRascunhoAssocagGrupoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_FormularioRascunhoAssocagGrupoMapper);
	}

}
