 /* При добавлении нового туриста в тур проверять не достигнуто ли уже максимальное количество. 
 Если максимальное количество достигнуто, генерировать ошибку с информацией о возникшей проблеме */
 
 --DROP TRIGGER IF EXISTS tMaxTourist_INSERT
--CREATE TRIGGER tMaxTourist_INSERT on Orders
--FOR INSERT 
--AS 
--BEGIN
--	DECLARE @ActualTour INT
--	SELECT  @ActualTour = inserted.ActualTourID FROM inserted  
--	IF 
--	( 
--		(SELECT Tour.MaxPersons
--		FROM Tour
--		WHERE Tour.ID = @ActualTour) 
--			< 
--		(SELECT COUNT(*)
--		FROM Orders
--		WHERE Orders.ActualTourID = @ActualTour)
--	) 
--	BEGIN        
--		raiserror('Достигнуто максимальное количество туристов тура!',0,1)
--		rollback transaction
--	END
--END

