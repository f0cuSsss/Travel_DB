 /* Отобразить информацию о самой популярной гостинице среди туристов (по количеству туристов) */

 CREATE PROCEDURE mostPopularHotel
AS
PRINT N'Cамая популярная гостиница среди туристов '+':'
SELECT hI.НotelName, hI.НotelLocation, hI.Country, hI.CountOfTourists
FROM hotelInformation as hI
WHERE
	hI.CountOfTourists=(SELECT MAX(hI.CountOfTourists) FROM hotelInformation as hI)