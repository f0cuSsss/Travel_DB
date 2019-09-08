	/* При удалении прошедших туров необходимо переносить их в архив туров */

	--DROP TRIGGER tPastTourToArchive_DELETE

CREATE TRIGGER tPastTourToArchive_DELETE on ActualTour
FOR DELETE 
AS 
BEGIN
	DECLARE	@TourID INT,
			@StartDate DATE,
			@EndDate DATE,
			@ActualTourID INT,
			@ArchiveActualTourID INT

	SELECT	@ActualTourID = deleted.ID,
			@TourID = deleted.TourID, 
			@StartDate = deleted.StartDate,
			@EndDate = deleted.EndDate
	FROM deleted

	INSERT INTO Archive_ActualTour(TourID, StartDate, EndDate)
	VALUES (@TourID, @StartDate, @EndDate);

	SELECT @ArchiveActualTourID = Archive_ActualTour.ID 
	FROM Archive_ActualTour 
	WHERE	Archive_ActualTour.TourID = @TourID AND
			Archive_ActualTour.StartDate = @StartDate AND
			Archive_ActualTour.EndDate = @EndDate

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

	WHILE -- sTART WHILE
	SELECT	@OrderDate = Orders.OrderDate,
			@PaymentDeadline = Orders.PaymentDeadline,
			@PersonID = Orders.PersonID
	FROM Orders
	WHERE Orders.ActualTourID = @ActualTourID

	INSERT INTO Archive_Orders(OrderDate, PaymentDeadline, ActualTourID, PersonID) 
	VALUES (@OrderDate, @PaymentDeadline, @ArchiveActualTourID, @PersonID)
	-- END WHILE

END