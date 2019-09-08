 /* При вставке нового клиента нужно проверять, нет ли его уже в базе данных. 
	Если такой клиент есть, генерировать ошибку с описанием возникшей проблем */

--DROP TRIGGER IF EXISTS tPersonCheck_Insert

--CREATE TRIGGER tPersonCheck_Insert on Person
--FOR INSERT 
--AS 
--BEGIN
--	DECLARE @Name NVARCHAR(MAX) 
--	DECLARE @SurName NVARCHAR(MAX)  
--	DECLARE @Patronymic NVARCHAR(MAX)
--	SELECT  @Name = Person.[Name],
--			@SurName = Person.Surname,
--			@Patronymic = Person.Patronymic
--	FROM Person  
--	IF 
--	( 
--		(	
--			SELECT COUNT(*) 
--				FROM Person 
--				WHERE   Person.[Name] = @Name AND
--						Person.Surname = @SurName AND
--						Person.Patronymic = @Patronymic
--		) != 1
--	) 
--	BEGIN        
--		raiserror('Такой пользователь уже существует!',0,1)
--	rollback transaction
--	END
--END