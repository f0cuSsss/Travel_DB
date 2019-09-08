 /* Проверить для конкретного туриста по ФИО находится ли он сейчас в туре. 
 ФИО туриста передаётся в качестве параметра */

--CREATE PROCEDURE procedureIsLocatedInTour
--    @Name NVARCHAR(50),   
--    @SurName NVARCHAR(50),
--    @Patronymic NVARCHAR(50)    
--AS   
--	SELECT 
--		Tour.[Name] AS TourName
--	FROM 
--		Tour, ActualTour, Orders, Order_PaidTourist, Person
--	WHERE 
--		ActualTour.TourID = Tour.ID
--	AND
--		Orders.ActualTourID = ActualTour.ID
--	AND
--		Orders.PersonID = Person.ID
--	AND
--		Order_PaidTourist.OrderID = Orders.ID
--	AND
--		Person.[Name] =	@Name		--N'Мирослав'
--	AND 
--		Person.Surname = @SurName		--N'Самойлов'
--	AND 
--		Person.Patronymic =	@Patronymic		--N'Оскарович'
--	AND 
--		ActualTour.StartDate > GETDATE()
--	AND
--		ActualTour.EndDate < GETDATE()
--GO  


EXECUTE procedureIsLocatedInTour N'Мирослав', N'Самойлов', N'Оскарович'