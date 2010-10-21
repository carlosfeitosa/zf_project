/**
* SCRIPT DE POPULACAO DA TABELA LOGIN
* 
* versao: 1.0 (MSSQL 2000)
* por: CARLOS FEITOSA (carlos.feitosa@rochedoproject.com)
* criacao: 20/10/2010
* ultimas modificacoes:
* 
*/

declare @login varchar(100), @password varchar(100)

DECLARE @Length int
DECLARE @RandomID varchar(100)
DECLARE @counter smallint
DECLARE @RandomNumber float
DECLARE @RandomNumberInt tinyint
DECLARE @CurrentCharacter varchar(1)
DECLARE @ValidCharacters varchar(255)
DECLARE @ValidCharactersLength int
SET @ValidCharacters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-=+&$'
SET @ValidCharactersLength = len(@ValidCharacters)
SET @CurrentCharacter = ''
SET @RandomNumber = 0
SET @RandomNumberInt = 0
SET @RandomID = ''
SET @Length = 100

SET NOCOUNT ON

SET @counter = 1

WHILE @counter < (@Length + 1)
BEGIN
        SET @RandomNumber = Rand()
        SET @RandomNumberInt = Convert(tinyint, ((@ValidCharactersLength - 1) * @RandomNumber + 1))

        SELECT @CurrentCharacter = SUBSTRING(@ValidCharacters, @RandomNumberInt, 1)

        SET @counter = @counter + 1
        SET @RandomID = @RandomID + @CurrentCharacter

END

SET @login = @RandomID

SET @counter = 1
SET @RandomID = ''

WHILE @counter < (@Length + 1)
BEGIN
        SET @RandomNumber = Rand()
        SET @RandomNumberInt = Convert(tinyint, ((@ValidCharactersLength - 1) * @RandomNumber + 1))

        SELECT @CurrentCharacter = SUBSTRING(@ValidCharacters, @RandomNumberInt, 1)

        SET @counter = @counter + 1
        SET @RandomID = @RandomID + @CurrentCharacter

END

SET @password = @RandomID

INSERT INTO login (id_pessoa, login, senha, pode_expirar, datahora_proxima_expiracao, rowinfo)
SELECT p.id, @login AS login, 
       @password AS senha, 0, NULL, 'SYSTEM_STARTUP'
FROM pessoa p
WHERE p.rowinfo = 'SYSTEM_STARTUP_MASTER';