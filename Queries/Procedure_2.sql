 /* Отобразите информацию о всех турах, которые стартуют в указанном диапазоне дат. 
 Диапазон дат передаётся в качестве параметра  */

  CREATE PROCEDURE 
    @ DATE,   
    @SurName DATE  
AS   
	SELECT 
		Tour.[Name] AS TourName
	FROM 
		Tour, ActualTour, 
	WHERE 
		ActualTour.TourID = Tour.ID
GO  
