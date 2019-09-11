CREATE TRIGGER tOrder_DELETE on Orders
FOR DELETE 
AS 
BEGIN
	DECLARE	@OrderDate DATE,
			@PaymentDeadLine DATE,
			@ArchiveActualTourID INT,
			@PersonID DATE,
			@OrderID INT,
			@ArchiveOrderID INT

	-- Получаем ID архивного тура
	SELECT TOP(1) @ArchiveActualTourID = aat.ID
	FROM Archive_ActualTour aat
	ORDER BY aat.ID DESC

	-- Получаем инфу удаленного счета
	SELECT	@OrderDate = deleted.OrderDate, 
			@PaymentDeadLine = deleted.PaymentDeadLine, 
			@PersonID = deleted.PersonID,
			@OrderID = deleted.ID
	FROM deleted

	-- Добавление в архив счета туриста тура
	INSERT INTO Archive_Orders(OrderDate, PaymentDeadline, ActualTourID, PersonID) 
	VALUES (@OrderDate, @PaymentDeadline, @ArchiveActualTourID, @PersonID)

	-- Удаляем поле оплаты туриста
	DELETE FROM Order_PaidTourist WHERE Order_PaidTourist.OrderID = @OrderID;
END


