CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);
INSERT INTO Customer (CustomerID, LastName, FirstName, Email, PhoneNumber, Address)
VALUES
(CUST1, Greene,	Bob, bobrox22@hotmail.com, 123-333-4444, 14 Park Avenue),
(CUST2,	Knox, Julia, julia12@yahoo.com, 001-002-003, 977 South St),
(CUST3,	Jones, Danny, jonesdanny3@gmail.com, 101-212-2222, 90 W Blvd),
(CUST4,	Martins	Zeke, ezekiel141@gmail.com, 347-444-5555, 155 Brunson St),
(CUST5,	Yonkovich,	Agustin, yonko1122@yahoo.com, 877-393-4448, 646 Devolon Blvd),
(CUST6,	Masterson,	Sally, sallym@hotmail.com, 888-888-8888, 152 Docks Place);

CREATE TABLE Order (
    PRIMARY KEY (OrderID),
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    DeliveryDate DATE,
    TotalAmount DECIMAL(10,2)
);
INSERT INTO Order (OrderID, CustomerID, OrderDate, DeliveryDate, TotalAmount)
VALUES
(ORD1, CUST1, 5/10/2025, 5/10/2025, $48.00),
(ORD2, CUST2, 5/10/2025, 5/10/2025, $148.00),
(ORD3, CUST3, 5/10/2025, 5/10/2025, $80.75),
(ORD5, CUST5, 5/11/2025, 5/11/2025, $51.50),
(ORD6, CUST6, 5/11/2025, 5/11/2025, $81.25);

CREATE TABLE OrderItem (
	PRIMARY KEY (OrderItemID),
    OrderID INT, 
    ProductID INT,
    Quantity INT, 
    Subtotal DECIMAL(10,2)
);
INSERT INTO OrderItem
VALUES
(OT1, ORD1, PROD15, 2, 16.00),
(OT10, ORD2, PROD35, 2, 18.00),
(OT11, ORD2, PROD26, 3, 6.00),
(OT12, ORD2, PROD27, 3,	6.00),
(OT13, ORD2, PROD37, 2, 11.00),
(OT14, ORD2, PROD20, 4,	4.00),
(OT15, ORD2, PROD13, 8,	32.00),
(OT16, ORD2, PROD8, 5, 15.00),
(OT17, ORD3, PROD14, 5, 20.00),
(OT18, ORD3, PROD33, 3, 18.00),
(OT19, ORD3, PROD40, 7, 8.75),
(OT2, ORD1,	PROD7, 1, 6.00),
(OT20, ORD3, PROD39, 4,	4.00),
(OT21, ORD3, PROD8,	10,	30.00),
(OT22, ORD4, PROD5,	9,	9.00),
(OT23, ORD4, PROD4,	6,	12.00),
(OT24, ORD4, PROD28,2,	7.00),
(OT25, ORD4, PROD6,	10,	20.00),
(OT26, ORD4, PROD16, 3,	30.00),
(OT27, ORD4, PROD25,2,	6.00),
(OT28, ORD4, PROD33, 2,	12.00),
(OT29, ORD5, PROD14, 4, 16.00),
(OT3, ORD1,	PROD24,	10,	10.00),
(OT30, ORD5, PROD15, 3,	24.00),
(OT31, ORD5, PROD29, 2,	7.00),
(OT32, ORD5, PROD38, 3,	4.50),
(OT33, ORD6, PROD6,	5,	10.00),
(OT34, ORD6, PROD3,	9,	11.25),
(OT35, ORD6, PROD33, 2,	12.00),
(OT36, ORD6, PROD15, 4,	33.00),
(OT37, ORD6, PROD39, 5,	5.00),
(OT38, ORD6, PROD34, 4,	10.00),
(OT4, ORD1,	PROD19,	3,	4.50),
(OT5, ORD1,	PROD2,	4,	3.00),
(OT6, ORD1,	PROD37,	1,	5.50),
(OT7, ORD1,	PROD32,	1, 3.00),
(OT8, ORD2,	PROD24,	20,	20.00),
(OT9, ORD2,	PROD11,	15,	30.00);

CREATE TABLE Payment (
	PRIMARY KEY (PaymentID),
    OrderID INT,
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    PaymentType VARCHAR(50)
);
INSERT INTO Payment (
VALUES
(PAY1, ORD1, 5/10/2025, 48.00,	Cash),
(PAY2, ORD2, 5/10/2025, 148.00,	Card),
(PAY3, ORD3, 5/10/2025,	80.75,	Cash),
(PAY4, ORD4, 5/10/2025,	96.00,	Zelle),
(PAY5, ORD5, 5/11/2025,	51.50, ApplePay),
(PAY6, ORD6, 5/11/2025,	81.25,	Card);

CREATE TABLE Product (
	PRIMARY KEY (ProductID),
    ProductName CHAR,
    Category CHAR,
    Price DECIMAL(10,2),
    StockQuantity INT
);
INSERT INTO Product (
VALUES
(PROD19, Ginger Ale	Beverage, 1.50, 500),
(PROD24, Water, Beverage, 1.00	500),
(PROD22, Diet Soda, Beverage, 2.00, 500),
(PROD21, Grape Juice, Beverage, 3.00, 300),
(PROD20, Lemonade, Beverage, 2.50, 450),
(PROD18, Mango Juice, Beverage, 2.50, 550),
(PROD17, Lime Soda, Beverage, 2.00, 500),
(PROD1,	Whole Milk, Dairy, 3.00	500),
(PROD34, Butter	Dairy, 2.50, 525),
(PROD12, Almond Milk, Dairy, 3.50, 500),
(PROD23, Greek Yogurt, Dairy, 4.99, 250),
(PROD37, Ice Cream, Dairy, $5.50, 275),
(PROD16, NY Strip Steak	Meat&Fish, 10.00, 500),
(PROD15, Ribeye	Meat&Fish, 8.00, 500),
(PROD14, Ground Beef, Meat&Fish	$4.00, 650),
(PROD13, Chicken Thigh,	Meat&Fish, 4.00, 500),
(PROD11, Chicken Leg, Meat&Fish, 2.00, 500),
(PROD29, Ketchup, Pantry, 3.50, 500),
(PROD25, Black Pepper, Pantry, 3.00, 800),
(PROD26, Salt, Pantry, 2.00, 500),
(PROD30, Mustard, Pantry, 3.50, 500),
(PROD31, BBQ Sauce,	Pantry, 3.00, 500),
(PROD32, Hot Sauce,	Pantry, 3.00, 500),
(PROD33, Olive Oil, Pantry, 6.00, 600),
(PROD35, Avacado Oil, Pantry, 9.00,	600),
(PROD36, Baking Soda, Pantry, 4.00,	500),
(PROD28, Flour, Pantry,	3.50, 800),
(PROD27, Sugar, Pantry,	2.00, 500),
(PROD2,	Bell Pepper, Produce, 0.75	500),
(PROD10, Grape,	Produce, 4.50, 600),
(PROD8,	Banana,	Produce, 3.00, 400),
(PROD7,	Mango,	Produce, 6.00, 450),
(PROD6,	Apple,	Produce, 2.00, 650),
(PROD5,	Broccoli,Produce, 1.00, 500),
(PROD41, Lemon,	Produce, 0.50, 600),
(PROD40, Onion,	Produce, 1.25, 700),
(PROD4,	Carrots, Produce, 2.00, 500),
(PROD38, Lettuce, Produce, 1.50, 700),
(PROD3,	Corn, Produce, 1.25, 500),
(PROD9,	Orange,	Produce, 1.50, 350),
(PROD39, Tomato	Produce, 1.00, 700);
    
    
    
    
