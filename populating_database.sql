-- Populando o Database

USE projeto_e_commerce;

INSERT INTO PJ (SocialName, FantasyName, CNPJ, contactName, contactNumber, Street, City, State, Country, Postal_code)
VALUES
    ('ABC Electronics', 'ABC Electronics Corp', '12345678901234', 'John Doe', '98765432101', 'Main St', 'New York', 'NY', 'USA', '12345'),
    ('XYZ Appliances', 'XYZ Appliance Solutions', '56789012345678', 'Jane Smith', '12345678901', 'Oak St', 'Los Angeles', 'CA', 'USA', '56789'),
    ('Global Tech', 'Global Technology', '91223456789012', 'Michael Brown', '45678901234', 'Elm St', 'Chicago', 'IL', 'USA', '98765'),
    ('Innovate Solutions', 'Innovate Solutions Inc', '34567890124456', 'Sarah Johnson', '78901234567', 'Park Ave', 'Boston', 'MA', 'USA', '54321'),
    ('Digital World', 'Digital World Electronics', '67890123456789', 'Robert Williams', '89012345678', 'River Rd', 'San Francisco', 'CA', 'USA', '98765'),
    ('Tech Savvy', 'Tech Savvy Enterprises', '01234567890123', 'Jessica Davis', '90123456789', 'Bay St', 'Miami', 'FL', 'USA', '34567'),
    ('Smart Devices', 'Smart Devices Co', '45678901234567', 'David Anderson', '23456789012', 'Lake St', 'Seattle', 'WA', 'USA', '56789'),
    ('Tech Wizards', 'Tech Wizards Ltd', '78901234567890', 'Emily Wilson', '34567890123', 'Grove St', 'Boston', 'MA', 'USA', '78901'),
    ('Innovative Solutions', 'Innovative Solutions Corp', '90123456789012', 'William Jackson', '45678901234', 'Cedar St', 'Dallas', 'TX', 'USA', '23456'),
    ('Electronics Emporium', 'Electronics Emporium Inc', '23456789012345', 'Olivia Martinez', '56789012345', 'Pine St', 'Atlanta', 'GA', 'USA', '67890'),
    ('Tech Hub', 'Tech Hub Corp', '45678901234560', 'Mark Johnson', '90817263540', 'Hill St', 'San Francisco', 'CA', 'USA', '90876'),
    ('Globe Tech', 'Globe Tech Solutions', '56789012345670', 'Jennifer Lee', '81928374650', 'Garden St', 'New York', 'NY', 'USA', '71982'),
    ('InnovaTech', 'InnovaTech Ltd', '12345678901235', 'Chris Adams', '39485761728', 'Meadow St', 'Chicago', 'IL', 'USA', '93847'),
    ('Digital Gear', 'Digital Gear Inc', '98765432109876', 'Laura Brown', '84736281928', 'Broadway St', 'Los Angeles', 'CA', 'USA', '84628'),
    ('MicroTech', 'MicroTech Co', '65432109876543', 'Andrew Wilson', '10293847560', 'Mountain St', 'Seattle', 'WA', 'USA', '10293'),
    ('Apex Solutions', 'Apex Solutions Corp', '78901234567892', 'Sophie Martinez', '65748392018', 'Ocean St', 'Dallas', 'TX', 'USA', '65748'),
    ('E-Tech Solutions', 'E-Tech Solutions Ltd', '01234567890128', 'Daniel Smith', '29384756182', 'Valley St', 'Miami', 'FL', 'USA', '29384'),
    ('MegaBytes', 'MegaBytes Inc', '34567890123456', 'Oliver Davis', '84930281937', 'Sunny St', 'Houston', 'TX', 'USA', '84930'),
    ('Tech Innovators', 'Tech Innovators Co', '89012345678923', 'Emily Johnson', '73648592018', 'Lakeview St', 'Atlanta', 'GA', 'USA', '73648'),
    ('Global Electronics', 'Global Electronics Corp', '67890123456783', 'James Wilson', '92038475619', 'Sunset St', 'Boston', 'MA', 'USA', '92038');

INSERT INTO PF (CPF, Fname, Minit, Lname, contactNumber, Street, City, State, Country, Postal_code, birthDate)
VALUES
    ('01376543210987', 'John', 'D', 'Doe', '98335432101', 'Main St', 'New York', 'NY', 'USA', '12345', '1990-01-01'),
    ('76533210987654', 'Jane', 'M', 'Smith', '12345678901', 'Oak St', 'Los Angeles', 'CA', 'USA', '56789', '1985-05-15'),
    ('21098765432109', 'Michael', 'J', 'Brown', '45623901234', 'Elm St', 'Chicago', 'IL', 'USA', '98765', '1995-12-31'),
    ('65412109876543', 'Sarah', 'L', 'Johnson', '78901234567', 'Park Ave', 'Boston', 'MA', 'USA', '54321', '1988-09-20'),
    ('43210987654321', 'Robert', 'B', 'Williams', '89012345678', 'River Rd', 'San Francisco', 'CA', 'USA', '98765', '1975-07-10'),
    ('98765432109876', 'Jessica', 'A', 'Davis', '90123456789', 'Bay St', 'Miami', 'FL', 'USA', '34567', '1992-04-05'),
    ('32109876543210', 'David', 'C', 'Anderson', '23456789012', 'Lake St', 'Seattle', 'WA', 'USA', '56789', '1987-11-25'),
    ('87654321098765', 'Emily', 'E', 'Wilson', '34567890123', 'Grove St', 'Boston', 'MA', 'USA', '78901', '1993-08-17'),
    ('76543210987654', 'William', 'F', 'Jackson', '45678901234', 'Cedar St', 'Dallas', 'TX', 'USA', '23456', '1984-03-12'),
    ('03376543210987', 'Olivia', 'G', 'Martinez', '56789012345', 'Pine St', 'Atlanta', 'GA', 'USA', '67890', '1998-06-30'),
    ('09876543210987', 'Mark', 'H', 'Johnson', '90817263540', 'Hill St', 'San Francisco', 'CA', 'USA', '90876', '1991-02-28'),
    ('65432109876543', 'Jennifer', 'I', 'Lee', '81928374650', 'Garden St', 'New York', 'NY', 'USA', '71982', '1996-09-22'),
    ('11098765432109', 'Chris', 'J', 'Adams', '39485761728', 'Meadow St', 'Chicago', 'IL', 'USA', '93847', '1989-07-14'),
    ('43210227654321', 'Laura', 'K', 'Brown', '84736281928', 'Broadway St', 'Los Angeles', 'CA', 'USA', '84628', '1994-12-05'),
    ('98765432101176', 'Andrew', 'L', 'Wilson', '10293847560', 'Mountain St', 'Seattle', 'WA', 'USA', '10293', '1997-11-18'),
    ('32109876113210', 'Sophie', 'M', 'Martinez', '65748392018', 'Ocean St', 'Dallas', 'TX', 'USA', '65748', '1990-05-03'),
    ('87667521098765', 'Daniel', 'N', 'Smith', '29384756182', 'Valley St', 'Miami', 'FL', 'USA', '29384', '1995-10-27'),
    ('76543210912354', 'Oliver', 'O', 'Davis', '84930281937', 'Sunny St', 'Houston', 'TX', 'USA', '84930', '1999-04-08'),
    ('09876543244987', 'Emily', 'P', 'Johnson', '73648592018', 'Lakeview St', 'Atlanta', 'GA', 'USA', '73648', '1992-01-13'),
    ('09876545210987', 'James', 'Q', 'Wilson', '92038475619', 'Sunset St', 'Boston', 'MA', 'USA', '92038', '1993-09-26');

INSERT INTO clients (clientType, idPJ, idPF)
VALUES
    ('PJ', 1, NULL),
    ('PJ', 2, NULL),
    ('PJ', 3, NULL),
    ('PJ', 4, NULL),
    ('PJ', 5, NULL),
    ('PF', NULL, 1),
    ('PF', NULL, 2),
    ('PF', NULL, 3),
    ('PF', NULL, 4),
    ('PF', NULL, 5);

INSERT INTO product (Pname, classification_kids, category, rating, size)
VALUES
    ('Laptop', false, 'Electronics', 4.5, 'Medium'),
    ('T-shirt', true, 'Apparel', 3.8, 'Small'),
    ('Toy Car', true, 'Toys', 4.2, 'Small'),
    ('Cereal', true, 'Food', 4.0, 'Medium'),
    ('Sofa', false, 'Furniture', 4.7, 'Large'),
    ('Novel', true, 'Books', 4.9, 'Medium'),
    ('Shampoo', false, 'Beauty', 4.3, 'Medium'),
    ('Basketball', true, 'Sports', 4.5, 'Large'),
    ('Knife Set', false, 'Home & Kitchen', 4.8, 'Medium'),
    ('Necklace', false, 'Jewelry', 4.6, 'Small'),
	('Smartphone', false, 'Electronics', 4.2, 'Small'),
    ('Jeans', true, 'Apparel', 4.6, 'Medium'),
    ('Board Game', true, 'Toys', 4.0, 'Medium');
    
INSERT INTO payment (idPayment, idClient, payment_type, limitAvailable)
VALUES
    (1, 1, 'Card', 1000.0),
    (2, 2, 'Money', 500.0),
    (3, 3, 'Two Cards', 1500.0),
	(4, 2, 'Card', 2000.0),
    (5, 3, 'Money', 800.0),
    (6, 1, 'Two Cards', 3000.0);
    
INSERT INTO CardPayment (idPayment, cardNumber, cardHolderName, cardExpiration, cardCVV)
VALUES
    (1, '1234567890123456', 'John Doe', '12/23', '123'),
    (3, '9876543210987654', 'Michael Brown', '09/25', '789'),
    (4, '1111222233334444', 'Jane Smith', '09/24', '456'),
    (6, '5555666677778888', 'John Doe', '11/23', '789');

INSERT INTO MoneyPayment (idPayment, billValidity)
VALUES
    (2, '2023-07-29'),
    (3, '2023-08-02'),
    (5, '2023-08-15'),
    (6, '2023-08-01');
    
INSERT INTO orders (ordersStatus, ordersDescription, shipping, idOrderClient, paymentCash, idOrderPayment)
VALUES
    ('processing', 'Order for electronics', 10.0, 1, false, 1),
    ('confirmed', 'Order for apparel', 5.0, 2, true, 2),
    ('processing', 'Order for toys', 8.0, 3, false, 3),
    ('confirmed', 'Order for food', 12.0, 1, false, 4),
    ('processing', 'Order for furniture', 15.0, 2, true, 5),
    ('confirmed', 'Order for books', 7.0, 3, true, 6),
    ('processing', 'Order for beauty products', 9.0, 1, false, 4),
    ('confirmed', 'Order for sports equipment', 11.0, 2, true, 5),
    ('processing', 'Order for home & kitchen items', 6.0, 3, false, 6),
    ('confirmed', 'Order for jewelry', 14.0, 1, true, 3);
    
INSERT INTO storages (storageLocation, storageQuantity)
VALUES
    ('Warehouse A', 100),
    ('Storage Room B', 50),
    ('Backyard Shed', 30),
    ('Basement', 80),
    ('Storage Unit C', 120),
    ('Attic', 20),
    ('Storage Facility D', 90),
    ('Garage', 60),
    ('Storage Locker E', 40),
    ('Closet', 10);
    

INSERT INTO supplier (idPJ)
VALUES
    (1),
    (3),
    (4),
    (7),
    (9),
    (10),
    (14),
    (15),
    (18);

INSERT INTO seller (sellerType, idPJ, idPF)
VALUES
    ('PJ', 1, NULL),
    ('PF', NULL, 1),
    ('PJ', 12, NULL),
    ('PF', NULL, 2),
    ('PJ', 3, NULL),
    ('PF', NULL, 13),
    ('PJ', 14, NULL),
    ('PF', NULL, 4),
    ('PJ', 15, NULL),
    ('PF', NULL, 5);

INSERT INTO productSeller (idPSeller, idPproduct, prodQuantity)
VALUES
    (1, 1, 100),
    (1, 4, 50),
    (2, 5, 30),
    (3, 3, 20),
    (4, 2, 10),
    (5, 6, 40),
    (6, 7, 80),
    (7, 9, 60),
    (8, 8, 90),
    (9, 10, 70),
    (10, 12, 25);
    
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus)
VALUES
    (1, 1, 2, 'Available'),
    (2, 1, 3, 'Available'),
    (3, 2, 1, 'Not Available'),
    (4, 2, 2, 'Available'),
    (5, 3, 5, 'Not Available'),
    (6, 3, 3, 'Available'),
    (7, 4, 1, 'Available'),
    (8, 4, 4, 'Available'),
    (9, 5, 2, 'Available'),
    (10, 5, 2, 'Not Available');
    
INSERT INTO storageLocation (idslProdStorage, idslProduct, location)
VALUES
    (1, 1, 'Warehouse A'),
    (2, 2, 'Storage Room B'),
    (3, 3, 'Backyard Shed'),
    (4, 4, 'Basement'),
    (5, 5, 'Storage Unit C'),
    (6, 6, 'Attic'),
    (7, 7, 'Storage Facility D'),
    (8, 8, 'Garage'),
    (9, 9, 'Storage Locker E'),
    (10, 10, 'Closet');
    
INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity)
VALUES
    (1, 1, 100),
    (2, 2, 50),
    (3, 3, 30),
    (4, 4, 80),
    (5, 5, 120),
    (6, 6, 20),
    (7, 7, 90),
    (8, 8, 60),
    (9, 9, 40),
    (2, 10, 10),
    (1, 12, 70);
    
INSERT INTO deliver (deliverStatus, tracking_code)
VALUES
    ('Pending', 'ABC123XYZ'),
    ('In Transit', 'DEF456UVW'),
    ('Delivered', 'GHI789RST'),
    ('Delayed', 'JKL012MNO'),
    ('In Transit', 'PQR345VWX'),
    ('Delivered', 'YZA678BCD'),
    ('Pending', 'EFG901HIJ'),
    ('In Transit', 'KLM234NOP'),
    ('Delayed', 'QRS567TUV'),
    ('Delivered', 'WXY890ZAB');

INSERT INTO orderDeliver (idODorder, idODdeliver, tracking_code)
VALUES
    (1, 2, 'ABC123XYZ'),
    (2, 1, 'DEF456UVW'),
    (3, 3, 'GHI789RST'),
    (4, 4, 'JKL012MNO'),
    (5, 5, 'PQR345VWX'),
    (6, 6, 'YZA678BCD'),
    (7, 7, 'EFG901HIJ'),
    (8, 8, 'KLM234NOP'),
    (9, 9, 'QRS567TUV'),
    (10, 10, 'WXY890ZAB');