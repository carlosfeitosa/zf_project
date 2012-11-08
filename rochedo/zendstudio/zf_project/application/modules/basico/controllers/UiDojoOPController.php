<?php
/**
 * Controlador da UI DOJO
 * 
 * Controlador responsavel pela UI DOJO
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 08/11/2012
 */

class Basico_OPController_UiDojoOPController
{
	/**
	 * Definicao de constantes da classe que espelham as constantes de DOJOTYPES da UI DOJO definidas no arquivo de constantes
	 * da ui
	 * 
	 * @var String
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	const DOJOTYPE_VALIDATION_TEXT_BOX = UI_DOJO_DOJOTYPE_VALIDATION_TEXT_BOX;
	const DOJOTYPE_BUTTON 			   = UI_DOJO_DOJOTYPE_BUTTON;
	const DOJOTYPE_SIMPLE_TEXTAREA     = UI_DOJO_DOJOTYPE_SIMPLE_TEXTAREA;
	const DOJOTYPE_RADIO_BUTTON 	   = UI_DOJO_DOJOTYPE_RADIO_BUTTON;
	const DOJOTYPE_FILTERING_SELECT    = UI_DOJO_DOJOTYPE_FILTERING_SELECT;
	const DOJOTYPE_CHECK_BOX           = UI_DOJO_DOJOTYPE_CHECK_BOX;
	
	/**
	 * Retorna um array de chaves e valores que mapea os dojotypes (valor) para cada elemento Zend_Form (chave) 
	 * 
	 * @return Array - array de chaves e valores que mapea os dojotypes (valor) para cada elemento Zend_Form (chave)
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	public static function retornaArrayDojoTypeMapper()
	{
		// montando array de mapeamento dos elementos do dojo
		$arrayDojoTypeElements = array('Zend_Form_Element_Text'     => self::DOJOTYPE_VALIDATION_TEXT_BOX,
									   'Zend_Form_Element_Password' => self::DOJOTYPE_VALIDATION_TEXT_BOX,
									   'Zend_Form_Element_Submit'   => self::DOJOTYPE_BUTTON,
									   'Zend_Form_Element_Reset'    => self::DOJOTYPE_BUTTON,
									   'Zend_Form_Element_Textarea' => self::DOJOTYPE_SIMPLE_TEXTAREA,
									   'Zend_Form_Element_Radio'    => self::DOJOTYPE_RADIO_BUTTON,
									   'Zend_Form_Element_Select'   => self::DOJOTYPE_FILTERING_SELECT,
									   'Zend_Form_Element_CheckBox' => self::DOJOTYPE_BUTTON,
 									  );
		// retornando array 									  
		return $arrayDojoTypeElements; 									 
	}
}