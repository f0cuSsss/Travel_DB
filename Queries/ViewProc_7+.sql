 /* Показать самый непопулярный актуальный тур (по минимальному количеству купленных туристических путевок) */

-- CREATE VIEW CountSalesCurrentTours (TourName, SalesCount, PaymentSum)
--AS
--SELECT t.[Name], COUNT(tSl.PaymentAmount), SUM(tSl.PaymentAmount)
--FROM 
--	Order_PaidTourist tSl, 
--	Orders o, 
--	ActualTour tSh, 
--	Tour t
--WHERE 
--	tSl.OrderID = o.ID
--	AND o.ActualTourID = tSh.ID
--	AND tSh.StartDate >= GETDATE()
--	AND tSh.TourID = t.ID
--GROUP BY
--	t.[Name]
	

-- CREATE PROCEDURE minPopularInTermsOfSalesCurrentTour
--AS
--select c.TourName, c.SalesCount
--from CountSalesCurrentTours as c
--WHERE 
--	c.SalesCount=(SELECT MIN(c.SalesCount) FROM CountSalesCurrentTours as c)
--GROUP BY 
--c.TourName,
--c.SalesCount