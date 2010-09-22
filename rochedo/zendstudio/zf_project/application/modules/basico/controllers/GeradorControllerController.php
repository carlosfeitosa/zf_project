<?php
/**
 * Controlador Gerador
 */

require_once("GeradorTokenControllerController.php");
require_once("GeradorUniqueIdControllerController.php");
require_once("GeradorXmlControllerController.php");
require_once("GeradorFormularioControllerController.php");

class Basico_GeradorControllerController
{
	/**
	 * Gera e retorna um uniqueId.
	 * 
	 * @param array $blacklist
	 * @return String $uniqueId
	 */
	public static function geradorTokenGerarToken($blacklist)
	{
		return Basico_GeradorTokenControllerController::gerarToken($blacklist);
	}
	
	/**
	 * Gera e retorna um uniqueId.
	 * @param Basico_Model $modelo
	 * @param String $nomeDoCampoBancoDeDados
	 * @return String $uniqueId
	 */
	public static function geradorUniqueIdGerarId($modelo, $nomeDoCampoBancoDeDados)
	{
		return Basico_GeradorUniqueIdControllerController::gerar($modelo, $nomeDoCampoBancoDeDados);
	}

	/**
	 * Gera e retorna um XML.
	 * @param $objeto
	 * @param $domElement
	 * @param $DOMDocument
	 * @param $rootNamespace
	 * @param $rootElement
	 * @param $xsdNamespace
	 * @param $xsdLocation
	 * @return String
	 */
	public static function geradorXmlGerarXml($objeto, $domElement = null, $DOMDocument = null, $rootNamespace = null, $rootElement = null, $xsdNamespace = null, $xsdLocation = null)
	{
		return Basico_GeradorXmlControllerController::gerar($objeto, $domElement, $DOMDocument, $rootNamespace, $rootElement, $xsdNamespace, $xsdLocation);
	}

	/**
	 * Gera Formulário.
	 * @param $objFormulario
	 * @param $classToExtends
	 * @param $excludeModulesNames
	 */
	public static function geradorFormularioGerarFormulario(Basico_Model_Formulario $objFormulario, array $excludeModulesNames = null)
	{
		return Basico_GeradorFormularioControllerController::gerar($objFormulario, $excludeModulesNames);
	}
	
	/**
     * Get geradorFormulario object
     * @return null|GeradorFormulario
     */
    public function getGeradorFormularioObject()
    {
        return new Basico_Model_GeradorFormulario();
    }
}