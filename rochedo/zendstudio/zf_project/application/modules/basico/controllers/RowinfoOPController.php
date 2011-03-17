<?php
/**
 * Controlador Rowinfo
 *
 */
class Basico_OPController_RowinfoOPController
{
	/**
	 * Instância do controlador Rowinfo
	 * @var Basico_OPController_RowinfoOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo RowInfo
	 * @var Basico_Model_RowInfo
	 */
	private $_rowinfo;

	/**
	 * Construtor do controlador Basico_OPController_RowinfoOPController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_rowinfo = $this->retornaNovoObjetoRowinfo();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_RowinfoOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do controlador RowInfo
	 * 
	 * @return Basico_OPController_RowinfoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_RowinfoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo rowinfo vazio
	 * 
	 * @return Basico_Model_RowInfo
	 */
	public function retornaNovoObjetoRowinfo()
	{
		// retornando um modelo vazio
		return new Basico_Model_RowInfo();
	}

	/**
	* Retorna o XML do Rowinfo
	* 
	* @return null|String
	*/
	public function getXml()
	{
		// retornando o resultado do metodo "geradorXmlGerarXml" na classe "Basico_OPController_GeradorOPController"
		return Basico_OPController_GeradorOPController::geradorXmlGerarXml($this->_rowinfo, NULL, NULL, 'rowinfo', 'xml_data', 'rowinfo', 'agilfap2_desenv/public/xsd/rowinfo.xsd');
	}
	
	/**
	* Prepara o XML do Rowinfo
	* 
	* @param objeto $modelo
	* @param boolean $utilizarUsuarioSistema
	* 
	* @return null|Boolean
	*/
	public function prepareXml($modelo, $utilizarUsuarioSistema = false)
	{
		try {
			// instanciando controladores
			$pessoaPerfilControllerController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a solicitacao foi feita pelo sistema
		    if ($utilizarUsuarioSistema)
		    	// recuperando o id do usuario do sistema
		        $idPessoaPerfil = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();
	
		    // verificando se existe id no objeto
	        if (!isset($modelo->id))
	        {
	        	// setando informacoes sobre criacao
	            $this->_rowinfo->setGenericDateTimeCreation(Basico_OPController_UtilOPController::retornaDateTimeAtual());
	            $this->_rowinfo->setGenericIdLoginCreation($idPessoaPerfil);
	        }
	        // setando informacoes sobre modificacao
	        $this->_rowinfo->setGenericDateTimeLastModified(Basico_OPController_UtilOPController::retornaDateTimeAtual());
	        $this->_rowinfo->setGenericIdLoginLastModified($idPessoaPerfil);
	        
	        return true;	
		} catch (Exception $e) {
			
			throw new Exception($e);
		}
	}
}
