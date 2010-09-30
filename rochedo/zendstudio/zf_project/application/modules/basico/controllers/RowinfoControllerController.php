<?php
/**
 * Controlador Rowinfo
 *
 */
class Basico_RowInfoControllerController
{
	/**
	 * Instância do controlador Rowinfo
	 * @var Basico_RowInfoController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo RowInfo
	 * @var Basico_Model_RowInfo
	 */
	private $rowinfo;
	
	/**
	 * Construtor.
	 * @return void
	 */
	private function __construct()
	{
		$this->rowinfo = new Basico_Model_RowInfo();
	}
	
	/**
	 * Retorna instância do controlador RowInfo
	 * 
	 * @return Basico_RowInfoController
	 */
	static public function init()
	{
		// verificando singleton
		if(self::$singleton == NULL){
			self::$singleton = new Basico_RowInfoControllerController();
		}
		
		return self::$singleton;
	}
	
	/**
	* Retorna o XML do Rowinfo
	* 
	* @return null|String
	*/
	public function getXml()
	{
		// retornando o resultado do metodo "geradorXmlGerarXml" na classe "Basico_GeradorControllerController"
		return Basico_GeradorControllerController::geradorXmlGerarXml($this->rowinfo, NULL, NULL, 'rowinfo', 'xml_data', 'rowinfo', 'agilfap2_desenv/public/xsd/rowinfo.xsd');
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
			// verificando se a solicitacao foi feita pelo sistema
		    if ($utilizarUsuarioSistema)
		    	// recuperando o id do usuario do sistema
		        $idPessoaPerfil = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
	
		    // verificando se existe id no objeto
	        if (!isset($modelo->id))
	        {
	        	// setando informacoes sobre criacao
	            $this->rowinfo->setGenericDateTimeCreation(Basico_UtilControllerController::retornaDateTimeAtual());
	            $this->rowinfo->setGenericIdLoginCreation($idPessoaPerfil);
	        }
	        // setando informacoes sobre modificacao
	        $this->rowinfo->setGenericDateTimeLastModified(Basico_UtilControllerController::retornaDateTimeAtual());
	        $this->rowinfo->setGenericIdLoginLastModified($idPessoaPerfil);
	        
	        return true;	
		} catch (Exception $e) {
			
			throw new Exception($e);
		}
	}
}
