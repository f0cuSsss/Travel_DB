
CREATE VIEW touristInformation (Tourist, TourName, TouristLocation, SalesCount)
AS
SELECT P.[Surname] + ' ' + P.[Name] + ' ' + P.Patronymic, T.[Name], R.[Name], COUNT(OPT.PaymentAmount)
FROM Person P, Tour T, Tour_Region TR, Region R,ActualTour Att, Orders O, Order_PaidTourist OPT
WHERE 
	P.ID = O.PersonID
	AND O.ID = OPT.OrderID
	AND O.ActualTourID = Att.ID
	AND Att.TourID = T.ID
	AND T.ID = TR.TourID
	AND TR.RegionID = R.ID
GROUP BY
	P.[Surname] + ' ' + P.[Name] + ' ' + P.Patronymic,
	T.Name,
	R.[Name]

UNION ALL

SELECT P.[Surname] + ' ' + P.[Name] + ' ' + P.Patronymic, T.[Name], R.[Name], COUNT(aOPT.PaymentAmount)
FROM Person P, Tour T, Tour_Region TR, Region R, Archive_ActualTour aAtt, Archive_Orders aO, Archive_Order_PaidTourist aOPT
WHERE 
	P.ID = aO.PersonID
	AND aO.ID = aOPT.OrderID
	AND aO.ActualTourID = aAtt.ID
	AND aAtt.TourID = T.ID
	AND T.ID = TR.TourID
	AND TR.RegionID = R.ID
GROUP BY
	P.[Surname] + ' ' + P.[Name] + ' ' + P.Patronymic,
	T.Name,
	R.[Name]
