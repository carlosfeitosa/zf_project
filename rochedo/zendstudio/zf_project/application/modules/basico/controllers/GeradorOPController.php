<?php
/**
 * Controlador Gerador
 */

class Basico_OPController_GeradorOPController
{
	/**
	 * Gera e retorna um uniqueId.
	 * 
	 * @param array $blacklist
	 * 
	 * @return String
	 */
	public static function geradorTokenGerarToken($blacklist)
	{
		// retorna o resultado do metodo "gerarToken" na classe "Basico_OPController_GeradorTokenOPController"
		return Basico_OPController_GeradorTokenOPController::gerarToken($blacklist);
	}
	
	/**
	 * Gera e retorna um uniqueId.
	 * 
	 * @param Basico_Model $modelo
	 * @param String $nomeDoCampoBancoDeDados
	 * 
	 * @return String
	 */
	public static function geradorUniqueIdGerarId($modelo, $nomeDoCampoBancoDeDados)
	{
		// retorna o resultado do metodo "gerar" na classe "Basico_OPController_GeradorUniqueIdOPController"
		return Basico_OPController_GeradorUniqueIdOPController::gerar($modelo, $nomeDoCampoBancoDeDados);
	}

	/**
	 * Gera e retorna um XML.
	 * 
	 * @param Object $objeto
	 * @param DOMElement $domElement
	 * @param DOMDocument $DOMDocument
	 * @param String $rootNamespace
	 * @param String $rootElement
	 * @param String $xsdNamespace
	 * @param String $xsdLocation
	 * 
	 * @return String
	 */
	public static function geradorXmlGerarXml($objeto, $domElement = null, $DOMDocument = null, $rootNamespace = null, $rootElement = null, $xsdNamespace = null, $xsdLocation = null)
	{
		// retorna o resultado do metodo "gerar" da classe "Basico_OPController_GeradorXmlOPController"
		return Basico_OPController_GeradorXmlOPController::gerar($objeto, $domElement, $DOMDocument, $rootNamespace, $rootElement, $xsdNamespace, $xsdLocation);
	}

	/**
	 * Gera Formulário.
	 * 
	 * @param Object $objFormulario
	 * @param String $classToExtends
	 * @param String $excludeModulesNames
	 * 
	 * @return Boolean
	 */
	public static function geradorFormularioGerarFormulario(Basico_Model_Formulario $objFormulario, array $excludeModulesNames = null)
	{
		// retorna o resultado do metodo "gerar" da classe "Basico_OPController_GeradorFormularioOPController"
		return Basico_OPController_GeradorFormularioOPController::gerar($objFormulario, $excludeModulesNames);
	}
	
	/**
	 * Gera todos os formulario do sistema.
	 * 
	 * @return Boolean
	 */
	public static function geradorFormularioGerarTodosFormularios()
	{
		// retorna o resultado do metodo "gerarTodos" da classe "Basico_OPController_GeradorFormularioOPController"
		return Basico_OPController_GeradorFormularioOPController::gerarTodos();
	}
}