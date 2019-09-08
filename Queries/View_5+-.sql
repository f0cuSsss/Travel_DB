 /* Показать самый популярный актуальный тур (по максимальному количеству купленных туристических путевок)  */

 --CREATE VIEW viewPopular AS 
SELECT
	Tour.[Name] AS TourName, Count(*) AS PaidCount
FROM 
	Tour,
	ActualTour, 
	Order_PaidTourist,
	Orders
WHERE
		ActualTour.TourID = Tour.ID
	AND 
		Orders.ActualTourID = ActualTour.ID
	AND
		Order_PaidTourist.OrderID = Orders.ID
	AND
		Order_PaidTourist.PaymentAmount = Tour.Price
GROUP BY Tour.[Name]


