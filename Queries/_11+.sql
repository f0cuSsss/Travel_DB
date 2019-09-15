 /* Отобразить информацию о самом активном туристе (по количеству приобретённых туров) */

CREATE PROCEDURE mostActiveTourist
AS
select DISTINCT tI.Tourist, tI.SalesCount
from touristInformation as tI
where 
	tI.SalesCount=(SELECT MAX(tI.SalesCount) FROM touristInformation as tI)