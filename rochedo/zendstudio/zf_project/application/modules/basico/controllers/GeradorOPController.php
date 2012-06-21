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
	public static function geradorTokenGerarToken(array $blacklist = array())
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
	 * Gera um formulário
	 * 
	 * @param Integer $idFormulario - id do formulário que deseja gerar
	 * @param Array $arrayExcludeIdModules - array contendo os ids dos módulos que não deseja gerar o formulário
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframewoek.com)
	 * @since 18/06/2012
	 */
	public static function geradorFormularioGerarFormulario($idFormulario, array $arrayExcludeIdModules = array())
	{
		// retorna o resultado do metodo "gerar" da classe "Basico_OPController_GeradorFormularioOPController"
		return Basico_OPController_GeradorFormularioOPController::getInstance()->gerarFormulario($idFormulario, $arrayExcludeIdModules);
	}
	
	/**
	 * Gera todos os formulario do sistema.
	 * 
	 * @param Array $arrayExcludeIdModules - array contendo os ids dos módulos que não deseja gerar o formulário
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframewoek.com)
	 * @since 18/06/2012
	 */
	public static function geradorFormularioGerarTodosFormularios(array $arrayExcludeIdModules = null)
	{
		// retorna o resultado do metodo "gerarTodos" da classe "Basico_OPController_GeradorFormularioOPController"
		return Basico_OPController_GeradorFormularioOPController::getInstance()->gerarTodosFormulario($arrayExcludeIdModules);
	}
}