/**
* SCRIPT DE POPULACAO DA TABELA ESTADO
* 
* versao: 1.0 (POSTGRESQL 8.4.1)
* por: IGOR PINHO (igor.pinho.souza@rochedoframework.com)
* criacao: 26/04/2011
* ultimas modificacoes:
* 
*							30/11/2011 - adaptação para novo modelo de banco de dados (Modularizado atraves de schemas) - João Vasconcelos;
* 
*/

-- estados brasileiros
INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Acre' AS nome, 'AC' AS sigla, '68' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Alagoas' AS nome, 'AL' AS sigla, '82' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Amapá' AS nome, 'AP' AS sigla, '96' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Amazonas' AS nome, 'AM' AS sigla, '92' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Bahia' AS nome, 'BA' AS sigla, '71' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Ceará' AS nome, 'CE' AS sigla, '85' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Distrito Federal' AS nome, 'DF' AS sigla, '61' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Espírito Santo' AS nome, 'ES' AS sigla, '27' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Goiás' AS nome, 'GO' AS sigla, '62' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Maranhão' AS nome, 'MA' AS sigla, '98' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Mato Grosso' AS nome, 'MT' AS sigla, '65' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Mato Grosso do Sul' AS nome, 'MS' AS sigla, '67' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Minas Gerais' AS nome, 'MG' AS sigla, '31' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Pará' AS nome, 'PA' AS sigla, '91' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Paraíba' AS nome, 'PB' AS sigla, '83' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Paraná' AS nome, 'PR' AS sigla, '41' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Pernambuco' AS nome, 'PE' AS sigla, '81' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Piauí' AS nome, 'PI' AS sigla, '86' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Rio de Janeiro' AS nome, 'RJ' AS sigla, '21' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Rio Grande do Norte' AS nome, 'RN' AS sigla, '84' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Rio Grande do Sul' AS nome, 'RS' AS sigla, '51' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Rondônia' AS nome, 'RO' AS sigla, '69' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Roraima' AS nome, 'RR' AS sigla, '95' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Santa Catarina' AS nome, 'SC' AS sigla, '47' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'São Paulo' AS nome, 'SP' AS sigla, '11' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Sergipe' AS nome, 'SE' AS sigla, '79' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';

INSERT INTO basico_localizacao.estado (id_pais, id_categoria, nome, sigla, codigo_ddd, rowinfo)
SELECT p.id, (SELECT c.id AS id_categoria FROM basico.tipo_categoria t
                    LEFT join basico.categoria c ON (t.id = c.id_tipo_categoria)
                WHERE t.nome = 'LOCALIDADE'
                AND c.nome = 'LOCALIDADE_ESTADO') AS id_categoria,
'Tocantins' AS nome, 'TO' AS sigla, '63' AS cogido_ddd, 'SYSTEM_STARTUP' AS rowinfo
FROM basico_localizacao.pais p WHERE p.constante_textual_nome = 'NOME_PAIS_BRASIL';
-- fim estados brasileiros