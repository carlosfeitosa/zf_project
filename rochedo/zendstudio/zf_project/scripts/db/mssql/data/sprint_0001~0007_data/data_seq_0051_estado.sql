/**
* SCRIPT DE POPULACAO DA TABELA ESTADO
* 
* versao: 1.0 (MSSQL 2000)
* por: IGOR PINHO (igor.pinho.souza@rochedoframework.com)
* criacao: 26/04/2011
* ultimas modificacoes:
* 
*/

-- estados brasileiros
INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Acre' AS nome, 'AC' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Alagoas' AS nome, 'AL' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Amapá' AS nome, 'AP' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Amazonas' AS nome, 'AM' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Bahia' AS nome, 'BA' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Ceará' AS nome, 'CE' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Distrito Federal' AS nome, 'DF' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Espírito Santo' AS nome, 'ES' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Goiás' AS nome, 'GO' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Maranhão' AS nome, 'MA' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Mato Grosso' AS nome, 'MT' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Mato Grosso do Sul' AS nome, 'MS' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Minas Gerais' AS nome, 'MG' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Pará' AS nome, 'PA' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Paraíba' AS nome, 'PB' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Paraná' AS nome, 'PR' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Pernambuco' AS nome, 'PE' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Piauí' AS nome, 'PI' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Rio de Janeiro' AS nome, 'RJ' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Rio Grande do Norte' AS nome, 'RN' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Rio Grande do Sul' AS nome, 'RS' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Rondônia' AS nome, 'RO' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Roraima' AS nome, 'RR' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Santa Catarina' AS nome, 'SC' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'São Paulo' AS nome, 'SP' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Sergipe' AS nome, 'SE' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO estado (id_pais, nome, sigla, rowinfo)
SELECT p.id, 'Tocantins' AS nome, 'TO' AS sigla, 'SYSTEM_STARTUP' AS rowinfo
FROM pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';
-- fim estados brasileiros