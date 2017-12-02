CREATE TABLE [Service] (
  [ServiceID] [int],
  [ServiceType] [nvarchar] (5),
  [ServiceTotal] [money],
  [CustomerID] [int],
  [PaymentID] [int],
  PRIMARY KEY ([ServiceID])
);

CREATE INDEX [FK] ON  [Service] ([CustomerID], [PaymentID]);

CREATE TABLE [Condition] (
  [ConditionID] [int],
  [ConditionDesc] [nvarchar] (50),
  PRIMARY KEY ([ConditionID])
);

CREATE TABLE [Instrument] (
  [InstrumentID] [int],
  [Size] [nvarchar] (10),
  [CaseIncluded] [bool],
  [ExtraInfo] [nvarchar] (50),
  [MonthlyPrice] [money],
  [CategoryID] [int],
  [ItemID] [int],
  PRIMARY KEY ([InstrumentID])
);

CREATE INDEX [FK] ON  [Instrument] ([CategoryID], [ItemID]);

CREATE TABLE [Payment] (
  [PaymentID] [int],
  [PaymentDate] [datetime],
  [PaymentAmount] [money],
  PRIMARY KEY ([PaymentID])
);

CREATE TABLE [Accessory] (
  [AccessoryID] [int],
  [ReturnAllowed] [bool],
  [ItemID] [int],
  PRIMARY KEY ([AccessoryID])
);

CREATE INDEX [FK] ON  [Accessory] ([ItemID]);

CREATE TABLE [Repair] (
  [RepairEstimate] [money],
  [ServiceID] [int]
);

CREATE INDEX [FK] ON  [Repair] ([ServiceID]);

CREATE TABLE [Room] (
  [RoomNumber] [int],
  [RoomDesc] [nvarchar] (100),
  [HourlyRate] [money],
  [ReservationID] [int],
  PRIMARY KEY ([RoomNumber])
);

CREATE INDEX [FK] ON  [Room] ([ReservationID]);

CREATE TABLE [Category] (
  [CategoryID] [int],
  [CategoryDesc] [nvarchar] (20),
  PRIMARY KEY ([CategoryID])
);

CREATE TABLE [Item] (
  [ItemID] [int],
  [Brand] [nvarchar] (50),
  [Color] [nvarchar] (20),
  [Year] [date],
  [Price] [money],
  [InstrumentID] [int],
  [AccessoryID] [int],
  [ConditionID] [int],
  PRIMARY KEY ([ItemID])
);

CREATE INDEX [FK] ON  [Item] ([InstrumentID], [AccessoryID], [ConditionID]);

CREATE TABLE [Order Line Item] (
  [ItemID] [int],
  [Quantity] [int],
  [OrderID] [int]
);

CREATE INDEX [FK] ON  [Order Line Item] ([ItemID], [OrderID]);

CREATE TABLE [Reservation] (
  [ReservationID] [int],
  [ReservationStartDateTime] [datetime],
  [ReservationEndDateTime] [datetime],
  [Weekly (bool)] [bool],
  [RoomNumber] [int],
  [CustomerID] [int],
  [PaymentID] [int],
  PRIMARY KEY ([ReservationID])
);

CREATE INDEX [FK] ON  [Reservation] ([RoomNumber], [CustomerID], [PaymentID]);

CREATE TABLE [Contract] (
  [ContractID] [int],
  [ContractTerms] [nvarchar] (1000),
  [RentalDuration] [int],
  [CreditCheck] [bool],
  [ContractStartDate] [date],
  [ContractEndDate] [date],
  [PurchaseType] [nvarchar] (20),
  [CustomerID] [int],
  [InstrumentID] [int],
  [PaymentID] [int],
  PRIMARY KEY ([ContractID])
);

CREATE INDEX [FK] ON  [Contract] ([CustomerID], [InstrumentID], [PaymentID]);

CREATE TABLE [Teacher] (
  [TeacherID] [int],
  [TeacherFirstName] [nvarchar] (50),
  [TeacherLastName] [nvarchar] (50),
  [TeacherEmail] [nvarchar] (50),
  [TeacherPhone] [phone],
  [TeacherCredentials] [nvarchar] (50),
  [TeacherAvailability] [nvarchar] (200),
  PRIMARY KEY ([TeacherID])
);

CREATE TABLE [Order] (
  [OrderID] [int],
  [PurchaseType] [nvarchar] (20),
  [OrderTotal] [money],
  [CustomerID] [int],
  [PaymentID] [int],
  PRIMARY KEY ([OrderID])
);

CREATE INDEX [FK] ON  [Order] ([CustomerID], [PaymentID]);

CREATE TABLE [Customer] (
  [CustomerID] [int],
  [CustomerName] [nvarchar] (50),
  [CustomerAddress] [nvarchar] (150),
  PRIMARY KEY ([CustomerID])
);


