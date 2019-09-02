 /* Показать для конкретного туриста по ФИО список всех его туров. ФИО туриста передаётся в качестве параметра */

 --DROP PROCEDURE listOfTouristTours

-- CREATE PROCEDURE listOfTouristTours
--    @Name NVARCHAR(50),   
--    @SurName NVARCHAR(50),   
--    @Patronymic NVARCHAR(50)   
--AS   
--	SELECT 
--		Person.[Name] + ' ' + Person.Surname + ' ' + Person.Patronymic AS FullName, Tour.[Name] AS TourName
--	FROM 
--		Tour, ActualTour, Person, Orders
--	WHERE 
--		ActualTour.TourID = Tour.ID
--	AND
--		Orders.ActualTourID = ActualTour.ID
--	AND
--		Orders.PersonID = Person.ID
--	AND 
--		Person.[Name] =	@Name		--N'Мирослав'
--	AND 
--		Person.Surname = @SurName		--N'Самойлов'
--	AND 
--		Person.Patronymic =	@Patronymic		--N'Оскарович'
--GO  

EXECUTE listOfTouristTours N'Мирослав', N'Самойлов', N'Оскарович'

