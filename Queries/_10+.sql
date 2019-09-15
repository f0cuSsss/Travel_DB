	 /* Отобразить информацию о том, где находится конкретный турист по ФИО. 
	 Если турист не в туре сгенерировать ошибку с описанием возникшей проблемы. 
	 ФИО туриста передаётся в качестве параметр */


CREATE PROCEDURE whereIsTourist
@name NVARCHAR(50),
@patronymic NVARCHAR(50),
@surname NVARCHAR(100)
AS
	BEGIN	
		DECLARE 
			@inTour NVARCHAR(MAX),
			@loc NVARCHAR(MAX);
		SET @inTour=(SELECT TOP 1 tI.TourName
					FROM touristInformation as tI, ActualTour as tS, Tour as t
					WHERE 
						tI.Tourist=@name+' '+@patronymic+' '+@surname
						AND tI.TourName=t.Name
						AND t.ID=tS.TourID
						AND tS.StartDate<=GETDATE()
						AND tS.EndDate>=GETDATE()
					GROUP BY tI.TourName
					ORDER BY tI.TourName)
		SET @loc=(SELECT TOP 1 l.Name
				  FROM Region as l, Tour_Region as tC, Tour as t
				  WHERE 
					@inTour=t.Name
					AND t.ID=tC.TourID
					AND tC.RegionID=l.ID
					GROUP BY l.Name
					ORDER BY l.Name)
		PRINT @name+' '+@patronymic+' '+@surname+': '
		IF @inTour=NULL
			BEGIN
				PRINT 'Cейчас не в туре!'
			END
		PRINT N'Cейчас в туре:' + @inTour
		PRINT N'Tекущая локация: '+ @loc
	END
RETURN 0