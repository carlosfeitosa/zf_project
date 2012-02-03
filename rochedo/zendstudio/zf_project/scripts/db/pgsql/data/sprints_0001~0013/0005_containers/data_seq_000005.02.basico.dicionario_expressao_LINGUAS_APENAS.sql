/**
* SCRIPT DE POPULACAO DA TABELA basico.dicionario_expressao
* 
* versao: 1.0 (POSTGRESQL 9.1.1)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoframework.com)
* criacao: 31/01/2012
* ultimas modificacoes:
* 								
*/

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AF' AS constante_textual, 'Afrikaans.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-AE' AS constante_textual, 'Arabic (U.A.E.).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-BH' AS constante_textual, 'Arabic (Bahrain).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-DZ' AS constante_textual, 'Arabic (Algeria).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-EG' AS constante_textual, 'Arabic (Egypt).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-IQ' AS constante_textual, 'Arabic (Iraq).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-JO' AS constante_textual, 'Arabic (Jordan).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-KW' AS constante_textual, 'Arabic (Kuwait).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-LB' AS constante_textual, 'Arabic (Lebanon).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-LY' AS constante_textual, 'Arabic (Libya).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-MA' AS constante_textual, 'Arabic (Morocco).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-OM' AS constante_textual, 'Arabic (Oman).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-QA' AS constante_textual, 'Arabic (Qatar).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-SA' AS constante_textual, 'Arabic (Saudi Arabia).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-SY' AS constante_textual, 'Arabic (Syria).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-TN' AS constante_textual, 'Arabic (Tunisia).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_AR-YE' AS constante_textual, 'Arabic (Yemen).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_BE' AS constante_textual, 'Belarusian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_BG' AS constante_textual, 'Bulgarian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_CA' AS constante_textual, 'Catalan.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_CS' AS constante_textual, 'Czech.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_DA' AS constante_textual, 'Danish.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_DE' AS constante_textual, 'German (Standard).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_DE-AT' AS constante_textual, 'German (Austria).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_DE-CH' AS constante_textual, 'German (Switzerland).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_DE-LI' AS constante_textual, 'German (Liechtenstein).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_DE-LU' AS constante_textual, 'German (Luxembourg).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EL' AS constante_textual, 'Greek.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN' AS constante_textual, 'English / English (Caribbean).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-AU' AS constante_textual, 'English (Australia).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-BZ' AS constante_textual, 'English (Belize).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-CA' AS constante_textual, 'English (Canada).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-GB' AS constante_textual, 'English (United Kingdom).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-IE' AS constante_textual, 'English (Ireland).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-JM' AS constante_textual, 'English (Jamaica).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-NZ' AS constante_textual, 'English (New Zealand).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-TT' AS constante_textual, 'English (Trinidad).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-US' AS constante_textual, 'English (United States).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EN-ZA' AS constante_textual, 'English (South Africa).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES' AS constante_textual, 'Spanish (Spain).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-AR' AS constante_textual, 'Spanish (Argentina).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-BO' AS constante_textual, 'Spanish (Bolivia).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-CL' AS constante_textual, 'Spanish (Chile).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-CO' AS constante_textual, 'Spanish (Colombia).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-CR' AS constante_textual, 'Spanish (Costa Rica).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-DO' AS constante_textual, 'Spanish (Dominican Republic).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-EC' AS constante_textual, 'Spanish (Ecuador).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-GT' AS constante_textual, 'Spanish (Guatemala).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-HN' AS constante_textual, 'Spanish (Honduras).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-MX' AS constante_textual, 'Spanish (Mexico).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-NI' AS constante_textual, 'Spanish (Nicaragua).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-PA' AS constante_textual, 'Spanish (Panama).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-PE' AS constante_textual, 'Spanish (Peru).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-PR' AS constante_textual, 'Spanish (Puerto Rico).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-PY' AS constante_textual, 'Spanish (Paraguay).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-SV' AS constante_textual, 'Spanish (El Salvador).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-UY' AS constante_textual, 'Spanish (Uruguay).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ES-VE' AS constante_textual, 'Spanish (Venezuela).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ET' AS constante_textual, 'Estonian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_EU' AS constante_textual, 'Basque.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_FA' AS constante_textual, 'Farsi.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_FI' AS constante_textual, 'Finnish.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_FO' AS constante_textual, 'Faeroese.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_FR' AS constante_textual, 'French (Standard).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_FR-BE' AS constante_textual, 'French (Belgium).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_FR-CA' AS constante_textual, 'French (Canada).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_FR-CH' AS constante_textual, 'French (Switzerland).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_FR-LU' AS constante_textual, 'French (Luxembourg).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_GA' AS constante_textual, 'Irish.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_GD' AS constante_textual, 'Gaelic (Scotland).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_HE' AS constante_textual, 'Hebrew.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_HI' AS constante_textual, 'Hindi.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_HR' AS constante_textual, 'Croatian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_HU' AS constante_textual, 'Hungarian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ID' AS constante_textual, 'Indonesian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_IS' AS constante_textual, 'Icelandic.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_IT' AS constante_textual, 'Italian (Standard).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_IT-CH' AS constante_textual, 'Italian (Switzerland).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_JA' AS constante_textual, 'Japanese.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_JI' AS constante_textual, 'Yiddish.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_KO' AS constante_textual, 'Korean / Korean (Johab).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_LT' AS constante_textual, 'Lithuanian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_LV' AS constante_textual, 'Latvian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_MK' AS constante_textual, 'Macedonian (FYROM).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_MS' AS constante_textual, 'Malaysian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_MT' AS constante_textual, 'Maltese.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_NL' AS constante_textual, 'Dutch (Standard).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_NL-BE' AS constante_textual, 'Dutch (Belgium).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_NO' AS constante_textual, 'Norwegian (Bokmal) / Norwegian (Nynorsk).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_PL' AS constante_textual, 'Polish.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_PT' AS constante_textual, 'Portuguese (Portugal).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_PT-BR' AS constante_textual, 'Portuguese (Brazil).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_RM' AS constante_textual, 'Rhaeto-Romanic.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_RO' AS constante_textual, 'Romanian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_RO-MO' AS constante_textual, 'Romanian (Republic of Moldova).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_RU' AS constante_textual, 'Russian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_RU-MO' AS constante_textual, 'Russian (Republic of Moldova).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SB' AS constante_textual, 'Sorbian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SK' AS constante_textual, 'Slovak.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SL' AS constante_textual, 'Slovenian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SQ' AS constante_textual, 'Albanian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SR' AS constante_textual, 'Serbian (Cyrillic) / Serbian (Latin).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SV' AS constante_textual, 'Swedish.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SV-FI' AS constante_textual, 'Swedish (Finland).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SX' AS constante_textual, 'Sutu.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_SZ' AS constante_textual, 'Sami (Lappish).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_TH' AS constante_textual, 'Thai.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_TN' AS constante_textual, 'Tswana.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_TR' AS constante_textual, 'Turkish.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_TS' AS constante_textual, 'Tsonga.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_UK' AS constante_textual, 'Ukrainian.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_UR' AS constante_textual, 'Urdu.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_VE' AS constante_textual, 'Venda.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_VI' AS constante_textual, 'Vietnamese.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_XH' AS constante_textual, 'Xhosa.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ZH-CN' AS constante_textual, 'Chinese (PRC).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ZH-HK' AS constante_textual, 'Chinese (Hong Kong SAR).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ZH-SG' AS constante_textual, 'Chinese (Singapore).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ZH-TW' AS constante_textual, 'Chinese (Taiwan).' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';

INSERT INTO basico.dicionario_expressao(id_categoria, constante_textual, traducao, ativo, rowinfo)
SELECT c.id AS id_categoria, 'LANGUAGE_ZU' AS constante_textual, 'Zulu.' AS traducao, true AS ativo, 'SYSTEM_STARTUP' AS rowinfo
FROM basico.categoria c
WHERE c.nome = 'en-us';