 /* Отобразите информацию о всех турах, которые стартуют в указанном диапазоне дат. 
 Диапазон дат передаётся в качестве параметра  */

--CREATE PROCEDURE procedureRangeDateTours
--    @firstDATE DATE,   
--    @secondDATE DATE  
--AS   
--	SELECT 
--		Tour.[Name] AS TourName,
--		ActualTour.StartDate AS StartDate,
--		ActualTour.EndDate AS EndDate
--	FROM 
--		Tour, ActualTour
--	WHERE 
--		ActualTour.TourID = Tour.ID
--	AND
--		ActualTour.StartDate >= @firstDATE
--	AND
--		ActualTour.StartDate <= @secondDATE
--GO  

EXECUTE procedureRangeDateTours '2019-09-01', '2019-09-7'

