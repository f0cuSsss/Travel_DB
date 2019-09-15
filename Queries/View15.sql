

CREATE VIEW hotelInformation (НotelName, НotelLocation, Country, CountOfTourists)
AS
SELECT h.Name, lH.Name, lC.Name, COUNT(tS.ID)
FROM 
	Order_PaidTourist tS,
	Orders o, 
	ActualTour tSch, 
	btw_Hotel_Tour tH, 
	Hotel h, 
	Region lH,
	Region lC
WHERE 
	tS.OrderID = o.ID
	AND o.ActualTourID = tSch.ID
	AND tSch.TourID = tH.ActualTourID
	AND tH.HotelID = h.ID
	AND h.RegionID = lH.ID
	AND lH.ParentID = lC.ID
GROUP BY
	h.Name, 
	lH.Name, 
	lC.Name