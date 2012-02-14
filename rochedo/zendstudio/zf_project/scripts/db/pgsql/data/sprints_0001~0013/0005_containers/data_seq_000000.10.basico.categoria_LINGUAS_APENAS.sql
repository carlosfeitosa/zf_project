/**
* SCRIPT DE POPULACAO DA TABELA basico.categoria com as categorias de linguas apenas 
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: JOÃO VASCONCELOS (joao.vasconcelos@rochedoproject.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 
*/

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'af' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sq' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-sa' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-iq' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-eg' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ly' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-dz' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ma' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-tn' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-om' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ye' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-sy' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-jo' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-lb' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-kw' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-ae' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-bh' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ar-qa' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'eu' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'bg' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'be' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ca' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-tw' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-cn' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-hk' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zh-sg' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hr' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'cs' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'da' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'nl' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'nl-be' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-us' AS nome, true AS ativo, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-gb' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-au' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-ca' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-nz' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-ie' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-za' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-jm' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-bz' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'en-tt' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'et' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fo' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fa' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fi' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-be' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-ca' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-ch' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'fr-lu' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'gd' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ga' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-ch' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-at' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-lu' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'de-li' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'el' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'he' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hi' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'hu' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'is' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'id' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'it' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'it-ch' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ja' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ko' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'lv' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'lt' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'mk' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ms' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'mt' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'no' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pl' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pt-br' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'pt' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'rm' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ro' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ro-mo' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ru' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ru-mo' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sz' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sr' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sk' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sl' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sb' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-mx' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-gt' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-cr' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pa' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-do' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ve' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-co' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pe' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ar' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ec' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-cl' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-uy' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-py' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-bo' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-sv' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-hn' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-ni' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'es-pr' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sx' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sv' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'sv-fi' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'th' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ts' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'tn' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'tr' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'uk' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ur' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 've' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'vi' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'xh' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'ji' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';

INSERT into basico.categoria (id_tipo_categoria, nome, ativo, rowinfo)
SELECT t.id AS id_tipo_categoria, 'zu' AS nome, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.tipo_categoria t
WHERE t.nome = 'LINGUAGEM';