
-------вьюшка для задач 5 и 7
CREATE VIEW viewCountTourSales (TourName, SalesCount, PaymentSum)
AS
SELECT t.Name, COUNT(tSl.PaymentAmount), SUM(tSl.PaymentAmount)

FROM travelsSales tSl, orders o, travelsSchedule tSh, travels t
WHERE 

	tSl.OrderId=o.Id
	AND o.TravelsScheduleId=tSh.Id
	AND tSh.TravelStartDate>=GETDATE()
	AND tSh.TravelId=t.Id

GROUP BY
	t.Name