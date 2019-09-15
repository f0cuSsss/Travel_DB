	 /* Отобразить информацию о всех турах указанного способа передвижения. 
	 Способ передвижения передаётся в качестве параметра */

--CREATE PROCEDURE toursTransportation
--@transportationName NVARCHAR(MAX)
--AS
--PRINT N'Tуры со способом передвижения '+@transportationName+':'
--SELECT t.Name
--FROM TravelWay as tr, btw_TravelWay_Tour as tTr, Tour as t
--WHERE
--	@transportationName = tr.[Name]
--	AND tr.ID = tTr.TravelWayID
--	AND tTr.ActualTourID = t.ID
--GROUP BY t.Name