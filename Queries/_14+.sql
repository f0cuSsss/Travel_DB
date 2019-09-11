	/* При удалении прошедших туров необходимо переносить их в архив туров */

--DROP TRIGGER tPastTourToArchive_DELETE

--=======================================================================================================================--

CREATE TRIGGER tPastTourToArchive_DELETE on ActualTour
FOR DELETE 
AS 
BEGIN
	DECLARE	@TourID INT,
			@StartDate DATE,
			@EndDate DATE,
			@ActualTourID INT,
			@ArchiveActualTourID INT 

	-- Получаем инфу удаленного прошедшего тура
	SELECT	@ActualTourID = deleted.ID, 
			@TourID = deleted.TourID, 
			@StartDate = deleted.StartDate,
			@EndDate = deleted.EndDate
	FROM deleted

	-- Добавление в архив прошедших туров
	INSERT INTO Archive_ActualTour(TourID, StartDate, EndDate)
	VALUES (@TourID, @StartDate, @EndDate); 

	-- Получаем ID архивного тура
	SELECT @ArchiveActualTourID = Archive_ActualTour.ID
	FROM Archive_ActualTour 
	WHERE	Archive_ActualTour.TourID = @TourID AND
			Archive_ActualTour.StartDate = @StartDate AND
			Archive_ActualTour.EndDate = @EndDate 

	-- Добавление в архив работника, который проводил тур
	INSERT INTO Archive_ActualTour_Employee(ActualTourID, EmployeeID) 
	VALUES 
	(
		@ArchiveActualTourID,
		(SELECT ActualTour_Employee.EmployeeID 
		FROM ActualTour_Employee, ActualTour, Tour
		WHERE	ActualTour_Employee.ActualTourID = ActualTour.ID AND
		ActualTour.TourID = Tour.ID AND
		Tour.ID = @TourID)
	)

	DECLARE @OrderDate DATE,
			@PaymentDeadline DATE,
			@PersonID INT

	-- Проходим по всем счетам тура
	WHILE EXISTS (SELECT * FROM Orders WHERE Orders.ActualTourID = @ActualTourID)
		BEGIN
			-- Удаляем одну запись с Orders с конкретным ИД тура. 
			-- Срабатывет триггер в таблице Orders.
			DELETE FROM Orders WHERE Orders.ID = 
					(SELECT TOP(1) Ord.ID FROM Orders Ord WHERE Ord.ActualTourID = @ActualTourID); 
		END
END

--=======================================================================================================================--

