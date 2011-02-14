<?php
/**
 * TipoSanguinio model
 * 
 * @subpackage Model
 */
class Basico_Model_TipoSanguinio
{
	const O_POSITIVO  = "0+";
	const A_POSITIVO  = "A+";
    const B_POSITIVO  = "B+";
    const AB_POSITIVO = "AB+";
    const O_NEGATIVO  = "O-";
    const A_NEGATIVO  = "A-";
    const B_NEGATIVO  = "B-";
    const AB_NEGATIVO = "AB-";
    const ZERO        = "0";
    
    /**
     * Retorna um array contendo todos os tipos sanguinios relacionados pela classe
     * @return Array
     */
    public function retornaTiposSanguinios()
    {
    	// carregando array com tipos sanguinios
    	$arrayTiposSanguinios = array(
    	                              O_POSITIVO => O_POSITIVO,
    	                              A_POSITIVO => A_POSITIVO,
    	                              B_POSITIVO => B_POSITIVO,
    	                              AB_POSITIVO => AB_POSITIVO,
    	                              O_NEGATIVO => O_NEGATIVO,
    	                              A_NEGATIVO => A_NEGATIVO,
    	                              B_NEGATIVO => B_NEGATIVO,
    	                              AB_NEGATIVO => AB_NEGATIVO,
    	                              ZERO => ZERO
    	
    	                             );

    	// retornando o array                             
    	return $arrayTiposSanguinios;
    	
    }
    
}


