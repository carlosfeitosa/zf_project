/**
* SCRIPT DE POPULACAO DA TABELA basico.categoria com as categorias de linguas apenas 
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 
*/

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'af' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sq' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-sa' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-iq' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-eg' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ly' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-dz' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ma' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-tn' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-om' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ye' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-sy' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-jo' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-lb' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-kw' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ae' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-bh' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-qa' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'eu' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'bg' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'be' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ca' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-tw' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-cn' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-hk' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-sg' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hr' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'cs' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'da' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'nl' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'nl-be' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-us' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-gb' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-au' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-ca' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-nz' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-ie' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-za' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-jm' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-bz' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-tt' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'et' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fo' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fa' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fi' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-be' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-ca' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-ch' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-lu' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'gd' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ga' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-ch' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-at' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-lu' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-li' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'el' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'he' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hi' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hu' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'is' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'id' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'it' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'it-ch' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ja' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ko' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'lv' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'lt' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'mk' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ms' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'mt' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'no' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pl' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pt-br' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pt' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'rm' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ro' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ro-mo' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ru' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ru-mo' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sz' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sr' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sk' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sl' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sb' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-mx' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-gt' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-cr' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pa' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-do' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ve' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-co' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pe' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ar' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ec' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-cl' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-uy' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-py' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-bo' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-sv' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-hn' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ni' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pr' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sx' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sv' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sv-fi' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'th' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ts' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'tn' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'tr' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'uk' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ur' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 've' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'vi' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'xh' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ji' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zu' AS nome, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';