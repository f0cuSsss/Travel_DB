 /* Показать самый популярный архивный тур (по максимальному количеству купленных туристических путевок */

--CREATE VIEW CountSalesArchiveTours (TourName, SalesCount, PaymentSum)
--AS
--SELECT t.[Name], COUNT(aTSl.PaymentAmount), SUM(aTSl.PaymentAmount)
--FROM 
--Archive_Order_PaidTourist aTSl, 
--Archive_Orders aO, 
--Archive_ActualTour aTSh, 
--Tour t
--WHERE 
--	aTSl.OrderID = aO.ID
--	AND aO.ActualTourID = aTSh.ID
--	AND aTSh.TourID = t.ID
--GROUP BY
--	t.[Name]

--CREATE PROCEDURE ArchiveMostPopularInTermsOfSalesTour
--AS
--select c.TourName, c.SalesCount
--from CountSalesArchiveTours as c
--WHERE 
--	c.SalesCount=(SELECT MAX(c.SalesCount) FROM CountSalesArchiveTours as c)
--GROUP BY 
--c.TourName,
--c.SalesCount