 /* Отобразите информацию о всех турах, которые посетят указанную страну. Страна передаётся в качестве параметра */

   CREATE PROCEDURE listOfTouristTours
    @County NVARCHAR(64)
AS   
	SELECT 
		Tour.[Name] AS TourName,
		ActualTour.StartDate AS StartDate,
		ActualTour.EndDate AS EndDate
	FROM 
		Tour, ActualTour, Tour_Region, Region
	WHERE 
		ActualTour.TourID = Tour.ID
	AND
		Tour_Region.TourID = Tour.ID
	AND
		Tour_Region_RegionID = Region.ID
GO  