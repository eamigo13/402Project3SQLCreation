CREATE TABLE [Service] (
  [ServiceID] <type>,
  [ServiceType] <type>,
  [ServiceTotal] <type>,
  [CustomerID] <type>,
  [PaymentID] <type>,
  PRIMARY KEY ([ServiceID])
);

CREATE INDEX [FK] ON  [Service] ([CustomerID], [PaymentID]);

CREATE TABLE [Condition] (
  [ConditionID] <type>,
  [ConditionDesc] <type>,
  PRIMARY KEY ([ConditionID])
);

CREATE TABLE [Instrument] (
  [InstrumentID] <type>,
  [Size] <type>,
  [CaseIncluded] <type>,
  [ExtraInfo] <type>,
  [MonthlyPrice] <type>,
  [CategoryID] <type>,
  [ItemID] <type>,
  PRIMARY KEY ([InstrumentID])
);

CREATE INDEX [FK] ON  [Instrument] ([CategoryID], [ItemID]);

CREATE TABLE [Payment] (
  [PaymentID] <type>,
  [PaymentDate] <type>,
  [PaymentAmount] <type>,
  PRIMARY KEY ([PaymentID])
);

CREATE TABLE [Accessory] (
  [AccessoryID] <type>,
  [ReturnAllowed] <type>,
  [ItemID] <type>,
  PRIMARY KEY ([AccessoryID])
);

CREATE INDEX [FK] ON  [Accessory] ([ItemID]);

CREATE TABLE [Repair] (
  [RepairEstimate] <type>,
  [ServiceID] <type>
);

CREATE INDEX [FK] ON  [Repair] ([ServiceID]);

CREATE TABLE [Room] (
  [RoomNumber] <type>,
  [RoomDesc] <type>,
  [HourlyRate] <type>,
  [ReservationID] <type>,
  PRIMARY KEY ([RoomNumber])
);

CREATE INDEX [FK] ON  [Room] ([ReservationID]);

CREATE TABLE [Category] (
  [CategoryID] <type>,
  [CategoryDesc] <type>,
  PRIMARY KEY ([CategoryID])
);

CREATE TABLE [Item] (
  [ItemID] <type>,
  [Brand] <type>,
  [Color] <type>,
  [Year] <type>,
  [Price] <type>,
  [InstrumentID] <type>,
  [AccessoryID] <type>,
  [ConditionID] <type>,
  PRIMARY KEY ([ItemID])
);

CREATE INDEX [FK] ON  [Item] ([InstrumentID], [AccessoryID], [ConditionID]);

CREATE TABLE [Order Line Item] (
  [ItemID] <type>,
  [Quantity] <type>,
  [OrderID] <type>
);

CREATE INDEX [FK] ON  [Order Line Item] ([ItemID], [OrderID]);

CREATE TABLE [Reservation] (
  [ReservationID] <type>,
  [ReservationStartDateTime] <type>,
  [ReservationEndDateTime] <type>,
  [Weekly (bool)] <type>,
  [RoomNumber] <type>,
  [CustomerID] <type>,
  [PaymentID] <type>,
  PRIMARY KEY ([ReservationID])
);

CREATE INDEX [FK] ON  [Reservation] ([RoomNumber], [CustomerID], [PaymentID]);

CREATE TABLE [Contract] (
  [ContractID] <type>,
  [ContractTerms] <type>,
  [RentalDuration] <type>,
  [CreditCheck] <type>,
  [ContractStartDate] <type>,
  [ContractEndDate] <type>,
  [PurchaseType] <type>,
  [CustomerID] <type>,
  [InstrumentID] <type>,
  [PaymentID] <type>,
  PRIMARY KEY ([ContractID])
);

CREATE INDEX [FK] ON  [Contract] ([CustomerID], [InstrumentID], [PaymentID]);

CREATE TABLE [Teacher] (
  [TeacherID] <type>,
  [TeacherFirstName] <type>,
  [TeacherLastName] <type>,
  [TeacherEmail] <type>,
  [TeacherPhone] <type>,
  [TeacherCredentials] <type>,
  [TeacherAvailability] <type>,
  PRIMARY KEY ([TeacherID])
);

CREATE TABLE [Order] (
  [OrderID] <type>,
  [PurchaseType] <type>,
  [OrderTotal] <type>,
  [CustomerID] <type>,
  [PaymentID] <type>,
  PRIMARY KEY ([OrderID])
);

CREATE INDEX [FK] ON  [Order] ([CustomerID], [PaymentID]);

CREATE TABLE [Customer] (
  [CustomerID] <type>,
  [CustomerName] <type>,
  [CustomerAddress] <type>,
  PRIMARY KEY ([CustomerID])
);

