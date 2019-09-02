
----===================================================--


--CREATE TABLE Position(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	[Name] NVARCHAR(40) NOT NULL
--);

--CREATE TABLE Person(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	[Name] NVARCHAR(50) NOT NULL,
--	Surname NVARCHAR(50) NOT NULL,
--	Patronymic NVARCHAR(50) DEFAULT(NULL),
--	DOB DATE DEFAULT(NULL),
--	Phone VARCHAR(15) NOT NULL,
--	Email VARCHAR(50) NOT NULL
--);

--CREATE TABLE Employee(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	PersonID INT NOT NULL,
--	PositionID INT NOT NULL,
--	EmploymentDate DATE NOT NULL
--);

----===================================================--

----■Туры 
----▷название тура +
----▷стоимость +
----▷дата старта и окончания +
----▷способ(ы) передвижения +
----▷страны и города тура (хранить информацию о датах посещения) +
---- ▷достопримечательности в каждой точке маршрута (включенные в стоимость тура и опциональные за 
----	дополнительную плату) +
---- ▷ изображения достопримечательностей +
---- ▷ информация о гостиницах, где будут ночевать туристы в туре +
---- ▷ изображения гостиниц +
---- ▷ список туристов, оплативших тур  +
---- ▷ максимальное количество туристов для тура + 
---- ▷ список потенциальных туристов, которые интересовались туром (процедурой)
---- ▷ ФИО сотрудника, отвечающего за конкретный тур +

--CREATE TABLE Tour(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	[Name] NVARCHAR(MAX) NOT NULL,
--	Price MONEY NOT NULL CHECK(Price > 0),
--	MaxPersons INT NOT NULL
--); 

--CREATE TABLE ActualTour(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	TourID INT NOT NULL,
--	StartDate DATE NOT NULL,
--	EndDate DATE NOT NULL
--);

--CREATE TABLE TravelWay(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	[Name] NVARCHAR(80) NOT NULL
--);

--CREATE TABLE btw_TravelWay_Tour(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	ActualTourID INT NOT NULL,
--	TravelWayID INT NOT NULL
--);

--CREATE TABLE [Image](
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	ImageLink VARCHAR(MAX) NOT NULL
--);

--CREATE TABLE btw_Attraction_Image(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	AttractionID INT NOT NULL,
--	ImageID INT NOT NULL
--);

--CREATE TABLE Attraction(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	[Name] NVARCHAR(60) NOT NULL,
--);

----===================================================--

--CREATE TABLE Region(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	[Name] NVARCHAR(100) NOT NULL,
--	ParentID INT DEFAULT(0)
--);

----===================================================--

--CREATE TABLE Visit(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	ActualTourID INT NOT NULL,
--	RegionID INT NOT NULL,
--	VisitDate DATE NOT NULL
--);

--CREATE TABLE btw_Attraction_Visit(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	AttractionID INT NOT NULL,
--	VisitID INT NOT NULL,
--	IncludedIN BIT DEFAULT(1)
--);

----===================================================--

--CREATE TABLE Hotel(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	[Name] NVARCHAR(80) NOT NULL,
--	[Description] NVARCHAR(MAX) NOT NULL,
--	RegionID INT NOT NULL
--);

--CREATE TABLE btw_Hotel_Tour(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	ActualTourID INT NOT NULL,
--	HotelID INT NOT NULL
--);

--CREATE TABLE btw_Hotel_Image(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	HotelID INT NOT NULL,
--	ImageID INT NOT NULL
--);

----===================================================--

--CREATE TABLE Orders(
--	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	OrderDate DATE NOT NULL DEFAULT(GETDATE()),
--	PaymentDeadline DATE NOT NULL DEFAULT(GETDATE()+2),
--	ActualTourID INT NOT NULL,
--	PersonID INT NOT NULL
--);

--	/* Список туристов, оплативших тур ( Добавить платежи ) */		
--CREATE TABLE Order_PaidTourist(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	OrderID INT NOT NULL,
--	PaymentDate DATE NOT NULL DEFAULT(GETDATE()),
--	PaymentAmount MONEY NOT NULL
--);

----===================================================--

--	/* ФИО сотрудника, отвечающего за конкретный тур */
--CREATE TABLE ActualTour_Employee(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	ActualTourID INT NOT NULL,
--	EmployeeID INT NOT NULL
--);

----===================================================--
--	/* Tour_Region */

--CREATE TABLE Tour_Region(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	TourID INT NOT NULL,
--	RegionID INT NOT NULL
--);

----===================================================--


--					/* АРХИВ */
----===================================================--

--CREATE TABLE Archive_ActualTour(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	TourID INT NOT NULL,
--	StartDate DATE NOT NULL,
--	EndDate DATE NOT NULL
--);

--CREATE TABLE Archive_ActualTour_Employee(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	ActualTourID INT NOT NULL,
--	EmployeeID INT NOT NULL
--);

--CREATE TABLE Archive_Orders(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	OrderDate DATE NOT NULL DEFAULT(GETDATE()),
--	PaymentDeadline DATE NOT NULL DEFAULT(GETDATE()+2),
--	ActualTourID INT NOT NULL,
--	PersonID INT NOT NULL
--);

--CREATE TABLE Archive_Order_PaidTourist(
--	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	OrderID INT NOT NULL,
--	PaymentDate DATE NOT NULL,
--	PaymentAmount MONEY NOT NULL
--);

----===================================================--
--				/* Связи */

--ALTER TABLE ActualTour
--ADD CONSTRAINT FK_TourID FOREIGN KEY (TourID)
--REFERENCES Tour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

----===================================================--

--ALTER TABLE ActualTour_Employee
--ADD CONSTRAINT FK_ActualTourID FOREIGN KEY (ActualTourID)
--REFERENCES ActualTour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE ActualTour_Employee
--ADD CONSTRAINT FK_EmployeeID FOREIGN KEY (EmployeeID)
--REFERENCES Employee (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

----===================================================--

--ALTER TABLE Archive_ActualTour
--ADD CONSTRAINT FK_TourID1 FOREIGN KEY (TourID)
--REFERENCES Tour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE Archive_ActualTour_Employee
--ADD CONSTRAINT FK_ActualTourID1 FOREIGN KEY (ActualTourID)
--REFERENCES ActualTour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE Archive_ActualTour_Employee
--ADD CONSTRAINT FK_EmployeeID1 FOREIGN KEY (EmployeeID)
--REFERENCES Employee (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE Archive_Order_PaidTourist
--ADD CONSTRAINT FK_OrderID FOREIGN KEY (OrderID)
--REFERENCES Orders (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE Archive_Orders
--ADD CONSTRAINT FK_ActualTourID_AO FOREIGN KEY (ActualTourID)
--REFERENCES ActualTour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE Archive_Orders
--ADD CONSTRAINT FK_PersonID FOREIGN KEY (PersonID)
--REFERENCES Person (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE btw_Attraction_Image
--ADD CONSTRAINT FK_AttractionID FOREIGN KEY (AttractionID)
--REFERENCES Attraction (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE btw_Attraction_Image
--ADD CONSTRAINT FK_ImageID FOREIGN KEY (ImageID)
--REFERENCES [Image] (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE btw_Attraction_Visit
--ADD CONSTRAINT FK_AttractionID_2 FOREIGN KEY (AttractionID)
--REFERENCES Attraction (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE btw_Attraction_Visit
--ADD CONSTRAINT FK_VisitID FOREIGN KEY (VisitID)
--REFERENCES Visit (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE btw_Hotel_Image
--ADD CONSTRAINT FK_HotelID FOREIGN KEY (HotelID)
--REFERENCES Hotel (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE btw_Hotel_Image
--ADD CONSTRAINT FK_ImageID2 FOREIGN KEY (ImageID)
--REFERENCES Image (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE btw_Hotel_Tour
--ADD CONSTRAINT FK_ActualTourID_2 FOREIGN KEY (ActualTourID)
--REFERENCES ActualTour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE btw_Hotel_Tour
--ADD CONSTRAINT FK_HotelID_2 FOREIGN KEY (HotelID)
--REFERENCES Hotel (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE btw_TravelWay_Tour
--ADD CONSTRAINT FK_ActualTourID_3 FOREIGN KEY (ActualTourID)
--REFERENCES ActualTour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE btw_TravelWay_Tour
--ADD CONSTRAINT FK_TravelWayID FOREIGN KEY (TravelWayID)
--REFERENCES TravelWay (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE Employee
--ADD CONSTRAINT FK_PersonID1 FOREIGN KEY (PersonID)
--REFERENCES Person (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE Employee
--ADD CONSTRAINT FK_PositionID FOREIGN KEY (PositionID)
--REFERENCES Position (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE Hotel
--ADD CONSTRAINT FK_RegionID FOREIGN KEY (RegionID)
--REFERENCES Region (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE Order_PaidTourist
--ADD CONSTRAINT FK_OrderID1 FOREIGN KEY (OrderID)
--REFERENCES Orders (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE Orders
--ADD CONSTRAINT FK_ActualTourID_4 FOREIGN KEY (ActualTourID)
--REFERENCES ActualTour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE Orders
--ADD CONSTRAINT FK_PersonIDn FOREIGN KEY (PersonID)
--REFERENCES Person (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

----ALTER TABLE Region
----ADD CONSTRAINT FK_ParentID FOREIGN KEY (ParentID)
----REFERENCES Region (ID)

------===================================================--

--ALTER TABLE Visit
--ADD CONSTRAINT FK_ActualTourID_5 FOREIGN KEY (ActualTourID)
--REFERENCES ActualTour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE Visit
--ADD CONSTRAINT FK_RegionIDn FOREIGN KEY (RegionID)
--REFERENCES Region (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--

--ALTER TABLE Tour_Region
--ADD CONSTRAINT FK_TourIDg FOREIGN KEY (TourID)
--REFERENCES Tour (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE
--ALTER TABLE Tour_Region
--ADD CONSTRAINT FK_RegionID2 FOREIGN KEY (RegionID)
--REFERENCES Region (ID)
--      ON DELETE CASCADE
--      ON UPDATE CASCADE

------===================================================--