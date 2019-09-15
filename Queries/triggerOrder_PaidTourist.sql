
--DROP TRIGGER tOrderPT_DELETE


--CREATE TRIGGER tOrderPT_DELETE on Order_PaidTourist
--INSTEAD OF DELETE 
--AS 
--BEGIN
--	DECLARE	@ArchiveOrderID INT,
--			@PaymentDate DATE,
--			@PaymentAmount Money

--	-- Получаем инфу удаленной оплаты
--	SELECT	@PaymentDate = deleted.PaymentDate, 
--			@PaymentAmount = deleted.PaymentAmount
--	FROM deleted

--	-- Получение архивной квитанции
--	SELECT TOP(1) @ArchiveOrderID = aw.ID 
--	FROM Archive_Orders aw
--	ORDER BY aw.ID DESC
	
--	-- Добавление в архив оплаты тура
--	INSERT INTO Archive_Order_PaidTourist(OrderID, PaymentDate, PaymentAmount) 
--	VALUES (@ArchiveOrderID, @PaymentDate, @PaymentAmount)


--END
