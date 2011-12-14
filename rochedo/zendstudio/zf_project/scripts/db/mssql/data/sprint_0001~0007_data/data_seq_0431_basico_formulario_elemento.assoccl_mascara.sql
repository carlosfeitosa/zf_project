/**
* SCRIPT DE POPULACAO DA TABELA CIDADE
* 
* versao: 1.0 (MSSQL 2000)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoframework.com)
* criacao: 20/06/2011
* ultimas modificacoes:
* 
*/

INSERT INTO formularios_elementos_mascaras (id_mascara, id_formulario_elemento, rowinfo)
SELECT m.id as id_mascara, 
	(SELECT fe.id 
	 FROM basico_formulario.elemento fe
	 LEFT join basico.categoria fec ON (fe.id_categoria = fec.id)
	 LEFT JOIN basico.tipo_categoria fetc ON (fec.id_tipo_categoria = fetc.id)
	 WHERE fe.nome   = 'FORM_FIELD_NUMBER_TEXT_BOX_ALTURA'
	 AND   fetc.nome = 'FORMULARIO'
	 AND   fec.nome  = 'FORMULARIO_ELEMENTO') as id_formulario_elemento, 'SYSTEM_STARTUP' as rowinfo 
FROM basico.mascara m
LEFT join basico.categoria c ON (m.id_categoria = c.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE m.nome  = 'MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_2_DECIMAIS'
AND   tc.nome = 'MASCARA'
AND   c.nome  = 'MASCARA_NUMERICA';

INSERT INTO formularios_elementos_mascaras (id_mascara, id_formulario_elemento, rowinfo)
SELECT m.id as id_mascara, 
	(SELECT fe.id 
	 FROM basico_formulario.elemento fe
	 LEFT join basico.categoria fec ON (fe.id_categoria = fec.id)
	 LEFT JOIN basico.tipo_categoria fetc ON (fec.id_tipo_categoria = fetc.id)
	 WHERE fe.nome   = 'FORM_FIELD_NUMBER_TEXT_BOX_PESO'
	 AND   fetc.nome = 'FORMULARIO'
	 AND   fec.nome  = 'FORMULARIO_ELEMENTO') as id_formulario_elemento, 'SYSTEM_STARTUP' as rowinfo 
FROM basico.mascara m
LEFT join basico.categoria c ON (m.id_categoria = c.id)
LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
WHERE m.nome  = 'MASCARA_MOEDA_BRL_SEM_SEPARADOR_MILHAR_3_DECIMAIS'
AND   tc.nome = 'MASCARA'
AND   c.nome  = 'MASCARA_NUMERICA';