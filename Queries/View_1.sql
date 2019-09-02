 /* Предоставьте информацию о всех актуальных турах */

--CREATE VIEW viewActualTours AS 
--SELECT 
--	Name AS N'Название тура'
--FROM 
--	Tour,
--	ActualTour
--WHERE
--	ActualTour.TourID = Tour.ID
--	AND ActualTour.EndDate > GETDATE()
--GROUP BY
--	Name

SELECT * FROM viewActualTours;

	