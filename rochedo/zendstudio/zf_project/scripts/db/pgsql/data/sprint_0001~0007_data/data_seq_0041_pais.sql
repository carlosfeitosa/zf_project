/**
* SCRIPT DE POPULACAO DA TABELA PAIS
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: IGOR PINHO (igor.pinho.souza@rochedoframework.com)
* criacao: 21/04/2011
* ultimas modificacoes:
* 
*/
INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AF' AS sigla, '93' AS codigo_ddi, '004' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_AFEGANISTAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AL' AS sigla, '355' AS codigo_ddi, '008' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ALBANIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AQ' AS sigla, '' AS codigo_ddi, '010' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ANTARTIDA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'DZ' AS sigla, '213' AS codigo_ddi, '012' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ARGELIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AS' AS sigla, '1' AS codigo_ddi, '016' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SAMOA_AMERICANA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AD' AS sigla, '376' AS codigo_ddi, '020' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ANDORRA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AO' AS sigla, '244' AS codigo_ddi, '024' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ANGOLA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AG' AS sigla, '1' AS codigo_ddi, '028' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ANTIGUA_E_BARBUDA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AZ' AS sigla, '994' AS codigo_ddi, '031' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_AZERBAIJAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AR' AS sigla, '54' AS codigo_ddi, '032' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ARGENTINA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AU' AS sigla, '61' AS codigo_ddi, '036' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_AUSTRALIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AT' AS sigla, '43' AS codigo_ddi, '040' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_AUSTRIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BS' AS sigla, '1' AS codigo_ddi, '044' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BAHAMAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BH' AS sigla, '973' AS codigo_ddi, '048' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BAHREIN';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BD' AS sigla, '880' AS codigo_ddi, '050' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BANGLADESH';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AM' AS sigla, '374' AS codigo_ddi, '051' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ARMENIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BB' AS sigla, '1' AS codigo_ddi, '052' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BARBADOS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BE' AS sigla, '32' AS codigo_ddi, '056' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BELGICA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BM' AS sigla, '1' AS codigo_ddi, '060' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BERMUDA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BT' AS sigla, '975' AS codigo_ddi, '064' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BUTAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BO' AS sigla, '591' AS codigo_ddi, '068' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BOLIVIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BA' AS sigla, '387' AS codigo_ddi, '070' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BOSNIA-HERZEGOVINA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BW' AS sigla, '267' AS codigo_ddi, '072' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BOTSUANA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BV' AS sigla, '' AS codigo_ddi, '074' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHA_BOUVET';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BR' AS sigla, '55' AS codigo_ddi, '076' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BRASIL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BZ' AS sigla, '501' AS codigo_ddi, '084' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BELIZE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IO' AS sigla, '246' AS codigo_ddi, '086' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TERRITORIO_BRITANICO_DO_OCEANO_INDICO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SB' AS sigla, '677' AS codigo_ddi, '090' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_SALOMAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'VG' AS sigla, '1' AS codigo_ddi, '092' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_VIRGENS_BRITANICAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BN' AS sigla, '673' AS codigo_ddi, '096' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BRUNEI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BG' AS sigla, '359' AS codigo_ddi, '100' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BULGARIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MM' AS sigla, '95' AS codigo_ddi, '104' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MYANMAR_ANTIGA_BIRMANIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BI' AS sigla, '257' AS codigo_ddi, '108' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BURUNDI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BY' AS sigla, '375' AS codigo_ddi, '112' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BIELO-RUSSIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KH' AS sigla, '855' AS codigo_ddi, '116' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CAMBOJA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CM' AS sigla, '237' AS codigo_ddi, '120' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CAMAROES';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CA' AS sigla, '1' AS codigo_ddi, '124' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CANADA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CV' AS sigla, '238' AS codigo_ddi, '132' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CABO_VERDE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KY' AS sigla, '1' AS codigo_ddi, '136' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_CAYMAN';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CF' AS sigla, '236' AS codigo_ddi, '140' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_REPUBLICA_CENTRO-AFRICANA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LK' AS sigla, '94' AS codigo_ddi, '144' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SRI_LANKA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TD' AS sigla, '235' AS codigo_ddi, '148' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CHADE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CL' AS sigla, '56' AS codigo_ddi, '152' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CHILE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CN' AS sigla, '86' AS codigo_ddi, '156' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CHINA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TW' AS sigla, '886' AS codigo_ddi, '158' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TAIWAN';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CX' AS sigla, '' AS codigo_ddi, '162' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHA_CHRISTMAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CC' AS sigla, '1' AS codigo_ddi, '166' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_COCOS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CO' AS sigla, '57' AS codigo_ddi, '170' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_COLOMBIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KM' AS sigla, '269' AS codigo_ddi, '174' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_COMORES';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'YT' AS sigla, '269' AS codigo_ddi, '175' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MAYOTTE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CG' AS sigla, '' AS codigo_ddi, '178' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_REPUBLICA_DO_CONGO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CD' AS sigla, '' AS codigo_ddi, '180' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_REPUBLICA_DEMOCRATICA_DO_CONGO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CK' AS sigla, '682' AS codigo_ddi, '184' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_COOK';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CR' AS sigla, '506' AS codigo_ddi, '188' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_COSTA_RICA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'HR' AS sigla, '385' AS codigo_ddi, '191' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CROACIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CU' AS sigla, '53' AS codigo_ddi, '192' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CUBA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CY' AS sigla, '357' AS codigo_ddi, '196' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CHIPRE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CZ' AS sigla, '420' AS codigo_ddi, '203' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_REPUBLICA_TCHECA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BJ' AS sigla, '229' AS codigo_ddi, '204' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BENIN';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'DK' AS sigla, '45' AS codigo_ddi, '208' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_DINAMARCA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'DM' AS sigla, '1' AS codigo_ddi, '212' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_DOMINICA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'DO' AS sigla, '1' AS codigo_ddi, '214' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_REPUBLICA_DOMINICANA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'EC' AS sigla, '593' AS codigo_ddi, '218' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_EQUADOR';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SV' AS sigla, '503' AS codigo_ddi, '222' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_EL_SALVADOR';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GQ' AS sigla, '240' AS codigo_ddi, '226' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUINE_EQUATORIAL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ET' AS sigla, '251' AS codigo_ddi, '231' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ETIOPIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ER' AS sigla, '291' AS codigo_ddi, '232' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ERITREIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'EE' AS sigla, '372' AS codigo_ddi, '233' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ESTONIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'FO' AS sigla, '' AS codigo_ddi, '234' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_FAROE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'FK' AS sigla, '500' AS codigo_ddi, '238' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_MALVINAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GS' AS sigla, '' AS codigo_ddi, '239' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_GEORGIA_DO_SUL_E_SANDWICH_DO_SUL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'FJ' AS sigla, '679' AS codigo_ddi, '242' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_FIJI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'FI' AS sigla, '358' AS codigo_ddi, '246' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_FINLANDIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AX' AS sigla, '' AS codigo_ddi, '248' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ALAND';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'FR' AS sigla, '33' AS codigo_ddi, '250' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_FRANCA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GF' AS sigla, '594' AS codigo_ddi, '254' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUIANA_FRANCESA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PF' AS sigla, '689' AS codigo_ddi, '258' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_POLINESIA_FRANCESA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TF' AS sigla, '672' AS codigo_ddi, '260' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TERRAS_AUSTRAIS_E_ANTARTICAS_FRANCESAS_TAAF';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'DJ' AS sigla, '253' AS codigo_ddi, '262' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_DJIBUTI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GA' AS sigla, '241' AS codigo_ddi, '266' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GABAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GE' AS sigla, '995' AS codigo_ddi, '268' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GEORGIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GM' AS sigla, '220' AS codigo_ddi, '270' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GAMBIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PS' AS sigla, '970' AS codigo_ddi, '275' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PALESTINA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'DE' AS sigla, '49' AS codigo_ddi, '276' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ALEMANHA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GH' AS sigla, '233' AS codigo_ddi, '288' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GANA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GI' AS sigla, '350' AS codigo_ddi, '292' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GIBRALTAR';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KI' AS sigla, '686' AS codigo_ddi, '296' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_KIRIBATI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GR' AS sigla, '30' AS codigo_ddi, '300' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GRECIA_';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GL' AS sigla, '299' AS codigo_ddi, '304' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GRONELANDIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GD' AS sigla, '473' AS codigo_ddi, '308' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GRENADA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GP' AS sigla, '590' AS codigo_ddi, '312' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUADALUPE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GU' AS sigla, '671' AS codigo_ddi, '316' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUAM';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GT' AS sigla, '502' AS codigo_ddi, '320' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUATEMALA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GN' AS sigla, '' AS codigo_ddi, '324' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUINE-CONACRI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GY' AS sigla, '592' AS codigo_ddi, '328' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUIANA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'HT' AS sigla, '509' AS codigo_ddi, '332' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_HAITI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'HM' AS sigla, '' AS codigo_ddi, '334' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHA_HEARD_E_ILHAS_MCDONALD';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'VA' AS sigla, '379' AS codigo_ddi, '336' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_VATICANO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'HN' AS sigla, '504' AS codigo_ddi, '340' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_HONDURAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'HK' AS sigla, '852' AS codigo_ddi, '344' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_HONG_KONG';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'HU' AS sigla, '36' AS codigo_ddi, '348' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_HUNGRIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IS' AS sigla, '354' AS codigo_ddi, '352' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ISLANDIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IN' AS sigla, '91' AS codigo_ddi, '356' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_INDIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ID' AS sigla, '62' AS codigo_ddi, '360' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_INDONESIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IR' AS sigla, '98' AS codigo_ddi, '364' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_IRA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IQ' AS sigla, '964' AS codigo_ddi, '368' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_IRAQUE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IE' AS sigla, '353' AS codigo_ddi, '372' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_IRLANDA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IL' AS sigla, '972' AS codigo_ddi, '376' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ISRAEL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IT' AS sigla, '39' AS codigo_ddi, '380' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ITALIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CI' AS sigla, '225' AS codigo_ddi, '384' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_COSTA_DO_MARFIM';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'JM' AS sigla, '1' AS codigo_ddi, '388' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_JAMAICA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'JP' AS sigla, '81' AS codigo_ddi, '392' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_JAPAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KZ' AS sigla, '7' AS codigo_ddi, '398' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_CAZAQUISTAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'JO' AS sigla, '962' AS codigo_ddi, '400' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_JORDANIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KE' AS sigla, '254' AS codigo_ddi, '404' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_QUENIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KP' AS sigla, '850' AS codigo_ddi, '408' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_COREIA_DO_NORTE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KR' AS sigla, '82' AS codigo_ddi, '410' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_COREIA_DO_SUL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KW' AS sigla, '965' AS codigo_ddi, '414' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_KUWAIT';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KG' AS sigla, '996' AS codigo_ddi, '417' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_QUIRGUISTAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LA' AS sigla, '856' AS codigo_ddi, '418' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LAOS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LB' AS sigla, '961' AS codigo_ddi, '422' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LIBANO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LS' AS sigla, '266' AS codigo_ddi, '426' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LESOTO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LV' AS sigla, '371' AS codigo_ddi, '428' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LETONIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LR' AS sigla, '231' AS codigo_ddi, '430' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LIBERIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LY' AS sigla, '218' AS codigo_ddi, '434' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LIBIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LI' AS sigla, '423' AS codigo_ddi, '438' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LIECHTENSTEIN';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LT' AS sigla, '370' AS codigo_ddi, '440' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LITUANIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LU' AS sigla, '352' AS codigo_ddi, '442' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_LUXEMBURGO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MO' AS sigla, '853' AS codigo_ddi, '446' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MACAU';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MG' AS sigla, '261' AS codigo_ddi, '450' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MADAGASCAR';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MW' AS sigla, '265' AS codigo_ddi, '454' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MALAWI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MY' AS sigla, '60' AS codigo_ddi, '458' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MALASIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MV' AS sigla, '' AS codigo_ddi, '462' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MALDIVAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ML' AS sigla, '223' AS codigo_ddi, '466' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MALI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MT' AS sigla, '356' AS codigo_ddi, '470' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MALTA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MQ' AS sigla, '596' AS codigo_ddi, '474' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MARTINICA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MR' AS sigla, '222' AS codigo_ddi, '478' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MAURITANIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MU' AS sigla, '230' AS codigo_ddi, '480' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MAURICIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MX' AS sigla, '52' AS codigo_ddi, '484' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MEXICO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MC' AS sigla, '377' AS codigo_ddi, '492' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MONACO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MN' AS sigla, '976' AS codigo_ddi, '496' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MONGOLIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MD' AS sigla, '373' AS codigo_ddi, '498' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MOLDAVIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ME' AS sigla, '' AS codigo_ddi, '499' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MONTENEGRO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MS' AS sigla, '1' AS codigo_ddi, '500' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MONTSERRAT';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MA' AS sigla, '212' AS codigo_ddi, '504' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MARROCOS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MZ' AS sigla, '258' AS codigo_ddi, '508' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MOCAMBIQUE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'OM' AS sigla, '968' AS codigo_ddi, '512' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_OMA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NA' AS sigla, '264' AS codigo_ddi, '516' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NAMIBIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NR' AS sigla, '674' AS codigo_ddi, '520' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NAURU';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NP' AS sigla, '977' AS codigo_ddi, '524' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NEPAL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NL' AS sigla, '' AS codigo_ddi, '528' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PAISES_BAIXOS_HOLANDA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AN' AS sigla, '' AS codigo_ddi, '530' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ANTILHAS_HOLANDESAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AW' AS sigla, '297' AS codigo_ddi, '533' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ARUBA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NC' AS sigla, '687' AS codigo_ddi, '540' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NOVA_CALEDONIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'VU' AS sigla, '678' AS codigo_ddi, '548' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_VANUATU';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NZ' AS sigla, '64' AS codigo_ddi, '554' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NOVA_ZELANDIA_AOTEAROA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NI' AS sigla, '505' AS codigo_ddi, '558' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NICARAGUA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NE' AS sigla, '227' AS codigo_ddi, '562' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NIGER';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NG' AS sigla, '234' AS codigo_ddi, '566' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NIGERIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NU' AS sigla, '' AS codigo_ddi, '570' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NIUE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NF' AS sigla, '' AS codigo_ddi, '574' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHA_NORFOLK';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'NO' AS sigla, '47' AS codigo_ddi, '578' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_NORUEGA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MP' AS sigla, '' AS codigo_ddi, '580' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_MARIANAS_SETENTRIONAIS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'UM' AS sigla, '' AS codigo_ddi, '581' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_MENORES_DISTANTES_DOS_ESTADOS_UNIDOS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'FM' AS sigla, '' AS codigo_ddi, '583' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ESTADOS_FEDERADOS_DA_MICRONESIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MH' AS sigla, '692' AS codigo_ddi, '584' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_MARSHALL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PW' AS sigla, '680' AS codigo_ddi, '585' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PALAU';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PK' AS sigla, '92' AS codigo_ddi, '586' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PAQUISTAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PA' AS sigla, '507' AS codigo_ddi, '591' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PANAMA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PG' AS sigla, '675' AS codigo_ddi, '598' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PAPUA-NOVA_GUINE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PY' AS sigla, '595' AS codigo_ddi, '600' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PARAGUAI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PE' AS sigla, '51' AS codigo_ddi, '604' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PERU';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PH' AS sigla, '63' AS codigo_ddi, '608' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_FILIPINAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PN' AS sigla, '' AS codigo_ddi, '612' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PITCAIRN';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PL' AS sigla, '48' AS codigo_ddi, '616' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_POLONIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PT' AS sigla, '351' AS codigo_ddi, '620' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PORTUGAL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GW' AS sigla, '245' AS codigo_ddi, '624' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUINE-BISSAU';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TL' AS sigla, '670' AS codigo_ddi, '626' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TIMOR-LESTE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PR' AS sigla, '1' AS codigo_ddi, '630' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_PORTO_RICO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'QA' AS sigla, '974' AS codigo_ddi, '634' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_QATAR';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'RE' AS sigla, '262' AS codigo_ddi, '638' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_REUNIAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'RO' AS sigla, '40' AS codigo_ddi, '642' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ROMENIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'RW' AS sigla, '250' AS codigo_ddi, '646' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_RUANDA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SH' AS sigla, '290' AS codigo_ddi, '654' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SANTA_HELENA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'KN' AS sigla, '1' AS codigo_ddi, '659' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SAO_CRISTOVAO_E_NEVIS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AI' AS sigla, '1' AS codigo_ddi, '660' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ANGUILA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'LC' AS sigla, '1' AS codigo_ddi, '662' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SANTA_LUCIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'PM' AS sigla, '508' AS codigo_ddi, '666' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SAO_PEDRO_E_MIQUELON';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'VC' AS sigla, '1' AS codigo_ddi, '670' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SAO_VICENTE_E_GRANADINAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SM' AS sigla, '378' AS codigo_ddi, '674' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SAO_MARINO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ST' AS sigla, '239' AS codigo_ddi, '678' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SAO_TOME_E_PRINCIPE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SA' AS sigla, '966' AS codigo_ddi, '682' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ARABIA_SAUDITA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SN' AS sigla, '221' AS codigo_ddi, '686' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SENEGAL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'RS' AS sigla, '381' AS codigo_ddi, '688' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SERVIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SC' AS sigla, '' AS codigo_ddi, '690' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SEYCHELLES';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SL' AS sigla, '232' AS codigo_ddi, '694' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SERRA_LEOA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SG' AS sigla, '' AS codigo_ddi, '702' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SINGAPURA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SK' AS sigla, '421' AS codigo_ddi, '703' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ESLOVAQUIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'VN' AS sigla, '84' AS codigo_ddi, '704' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_VIETNAME';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SI' AS sigla, '386' AS codigo_ddi, '705' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ESLOVENIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SO' AS sigla, '252' AS codigo_ddi, '706' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SOMALIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ZA' AS sigla, '27' AS codigo_ddi, '710' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_AFRICA_DO_SUL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ZW' AS sigla, '263' AS codigo_ddi, '716' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ZIMBABUE';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ES' AS sigla, '34' AS codigo_ddi, '724' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ESPANHA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'EH' AS sigla, '212' AS codigo_ddi, '732' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SAARA_OCIDENTAL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SD' AS sigla, '249' AS codigo_ddi, '736' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SUDAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SR' AS sigla, '597' AS codigo_ddi, '740' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SURINAME';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SJ' AS sigla, '' AS codigo_ddi, '744' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SVALBARD_E_JAN_MAYEN';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SZ' AS sigla, '268' AS codigo_ddi, '748' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SUAZILANDIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SE' AS sigla, '46' AS codigo_ddi, '752' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SUECIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CH' AS sigla, '41' AS codigo_ddi, '756' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SUICA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'SY' AS sigla, '963' AS codigo_ddi, '760' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SIRIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TJ' AS sigla, '992' AS codigo_ddi, '762' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TAJIQUISTAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TH' AS sigla, '66' AS codigo_ddi, '764' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TAILANDIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TG' AS sigla, '228' AS codigo_ddi, '768' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TOGO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TK' AS sigla, '690' AS codigo_ddi, '772' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TOQUELAU';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TO' AS sigla, '676' AS codigo_ddi, '776' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TONGA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TT' AS sigla, '1' AS codigo_ddi, '780' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TRINDADE_E_TOBAGO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'AE' AS sigla, '971' AS codigo_ddi, '784' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_EMIRATOS_ARABES_UNIDOS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TN' AS sigla, '216' AS codigo_ddi, '788' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TUNISIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TR' AS sigla, '90' AS codigo_ddi, '792' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TURQUIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TM' AS sigla, '993' AS codigo_ddi, '795' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TURQUEMENISTAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TC' AS sigla, '1' AS codigo_ddi, '796' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TURCAS_E_CAICOS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TV' AS sigla, '688' AS codigo_ddi, '798' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TUVALU';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'UG' AS sigla, '256' AS codigo_ddi, '800' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_UGANDA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'UA' AS sigla, '380' AS codigo_ddi, '804' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_UCRANIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'MK' AS sigla, '' AS codigo_ddi, '807' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_REPUBLICA_DA_MACEDONIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'EG' AS sigla, '20' AS codigo_ddi, '818' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_EGITO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GB' AS sigla, '44' AS codigo_ddi, '826' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_REINO_UNIDO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'GG' AS sigla, '' AS codigo_ddi, '831' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_GUERNSEY';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'JE' AS sigla, '' AS codigo_ddi, '832' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_JERSEY';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'IM' AS sigla, '' AS codigo_ddi, '833' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHA_DO_HOMEM';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'TZ' AS sigla, '255' AS codigo_ddi, '834' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_TANZANIA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'US' AS sigla, '1' AS codigo_ddi, '840' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ESTADOS_UNIDOS_DA_AMERICA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'VI' AS sigla, '1' AS codigo_ddi, '850' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ILHAS_VIRGENS_AMERICANAS';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'BF' AS sigla, '226' AS codigo_ddi, '854' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_BURKINA_FASO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'UY' AS sigla, '598' AS codigo_ddi, '858' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_URUGUAI';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'UZ' AS sigla, '998' AS codigo_ddi, '860' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_UZBEQUISTAO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'VE' AS sigla, '58' AS codigo_ddi, '862' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_VENEZUELA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'WF' AS sigla, '681' AS codigo_ddi, '876' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_WALLIS_E_FUTUNA';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'WS' AS sigla, '685' AS codigo_ddi, '882' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SAMOA_SAMOA_OCIDENTAL';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'YE' AS sigla, '967' AS codigo_ddi, '887' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_IEMEN';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'CS' AS sigla, '' AS codigo_ddi, '891' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_SERVIA_E_MONTENEGRO';

INSERT INTO pais (constante_textual_nome, sigla, codigo_ddi, codigo_iso3166, rowinfo)
SELECT distinct(d.constante_textual), 'ZM' AS sigla, '260' AS codigo_ddi, '894' AS codigo_iso3166, 'SYSTEM_STARTUP' AS rowinfo
FROM dicionario_expressao d
WHERE d.constante_textual = 'NOME_PAIS_ZAMBIA';