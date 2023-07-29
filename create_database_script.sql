-- Criação do Banco de Dados para Cenário de E-Commerce

CREATE DATABASE IF NOT EXISTS projeto_e_commerce;
USE projeto_e_commerce;

-- Criando as Tabelas

CREATE TABLE PJ(
    idPJ INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(255) NOT NULL,
	FantasyName VARCHAR(255),
    CNPJ CHAR(15) NOT NULL,
    contactName VARCHAR(30),
    contactNumber CHAR(11),
    Street VARCHAR(30),
    City VARCHAR(20),
    State VARCHAR(20),
    Country VARCHAR(20),
    Postal_code VARCHAR(20),
    CONSTRAINT unique_cnpj_PJ UNIQUE (CNPJ)
);

-- Create an index for CNPJ column
CREATE INDEX idx_cnpj_PJ ON PJ (CNPJ);

CREATE TABLE PF(
    idPF INT AUTO_INCREMENT PRIMARY KEY,
    CPF CHAR(15) NOT NULL,
    Fname VARCHAR(10),
    Minit CHAR(3),
    Lname VARCHAR(20),
    contactNumber CHAR(11),
    Street VARCHAR(30),
    City VARCHAR(20),
    State VARCHAR(20),
    Country VARCHAR(20),
    Postal_code VARCHAR(20),
    birthDate DATE,
    CONSTRAINT unique_CPF_PF UNIQUE (CPF)
);

-- Create an index for CPF column
CREATE INDEX idx_cpf_PF ON PF (CPF);

CREATE TABLE clients (
    idClient INT AUTO_INCREMENT PRIMARY KEY,
    clientType ENUM('PJ', 'PF') NOT NULL,
    idPJ INT, -- Nullable, used when sellerType = 'PJ'
    idPF INT, -- Nullable, used when sellerType = 'PF'
    CONSTRAINT fk_client_pj FOREIGN KEY (idPJ) REFERENCES PJ(idPJ),
    CONSTRAINT fk_client_pf FOREIGN KEY (idPF) REFERENCES PF(idPF),
    CONSTRAINT chk_client_type CHECK (clientType IN ('PJ', 'PF')),
    CONSTRAINT chk_client_id_pj_pf CHECK (
        (clientType = 'PJ' AND idPJ IS NOT NULL AND idPF IS NULL) OR
        (clientType = 'PF' AND idPF IS NOT NULL AND idPJ IS NULL)
    )
);

CREATE TABLE supplier (
    idSupplier INT AUTO_INCREMENT PRIMARY KEY,
    idPJ INT NOT NULL,
    CONSTRAINT fk_supplier_pj FOREIGN KEY (idPJ) REFERENCES PJ(idPJ) ON DELETE CASCADE
);

CREATE TABLE seller (
    idSeller INT AUTO_INCREMENT PRIMARY KEY,
    sellerType ENUM('PJ', 'PF') NOT NULL,
    idPJ INT, -- Nullable, used when sellerType = 'PJ'
    idPF INT, -- Nullable, used when sellerType = 'PF'
    CONSTRAINT fk_seller_pj FOREIGN KEY (idPJ) REFERENCES PJ(idPJ),
    CONSTRAINT fk_seller_pf FOREIGN KEY (idPF) REFERENCES PF(idPF),
    CONSTRAINT chk_seller_type CHECK (sellerType IN ('PJ', 'PF')),
    CONSTRAINT chk_id_pj_pf CHECK (
        (sellerType = 'PJ' AND idPJ IS NOT NULL AND idPF IS NULL) OR
        (sellerType = 'PF' AND idPF IS NOT NULL AND idPJ IS NULL)
    )
);

-- size = dimensão do produto
CREATE TABLE product (
    idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(10) NOT NULL,
    classification_kids BOOL DEFAULT false,
    category ENUM('Electronics', 'Apparel', 'Toys', 'Food', 'Furniture', 'Books', 'Beauty', 'Sports', 'Home & Kitchen',
    'Jewelry', 'Health', 'Automotive', 'Pet Supplies', 'Tools & Home Improvement', 'Baby', 'Office Products', 'Music',
    'Movies', 'Garden & Outdoor', 'Grocery', 'Industrial & Scientific', 'Arts, Crafts & Sewing', 'Software', 'Electronics Accessories') NOT NULL,
    rating FLOAT DEFAULT 0,
    size VARCHAR(10),
    CONSTRAINT chk_rating CHECK (rating >= 0 AND rating <= 5)
);

CREATE TABLE payment(
    idPayment INT,
    idClient INT,
    payment_type ENUM('Card', 'Money', 'Two Cards') NOT NULL,
    limitAvailable FLOAT,
    PRIMARY KEY (idClient, idPayment),
    CONSTRAINT fk_payment_client FOREIGN KEY (idClient) REFERENCES clients(idClient),
	INDEX idx_payment_idPayment (idPayment) 
);


CREATE TABLE CardPayment (
    idPayment INT,
    cardNumber VARCHAR(16),
    cardHolderName VARCHAR(50),
    cardExpiration VARCHAR(7),
    cardCVV VARCHAR(4),
    PRIMARY KEY (idPayment),
    CONSTRAINT fk_cardpayment_payment FOREIGN KEY (idPayment) REFERENCES payment(idPayment)
);

CREATE TABLE MoneyPayment (
    idPayment INT,
    billValidity DATE,
    PRIMARY KEY (idPayment),
    CONSTRAINT fk_moneypayment_payment FOREIGN KEY (idPayment) REFERENCES payment(idPayment)
);

CREATE TABLE orders(
    idOrders INT AUTO_INCREMENT PRIMARY KEY,
    ordersStatus ENUM('canceled', 'confirmed', 'processing') DEFAULT ('processing'),
    ordersDescription VARCHAR(255),
    shipping FLOAT DEFAULT 0,
    idOrderClient INT,
    paymentCash BOOL DEFAULT false, 
    idOrderPayment INT,
    CONSTRAINT fk_orders_client FOREIGN KEY (idOrderClient) REFERENCES clients(idClient),
    CONSTRAINT fk_orders_payment FOREIGN KEY (idOrderPayment) REFERENCES payment(idPayment)
);

CREATE TABLE storages (
    idProdStorage INT AUTO_INCREMENT PRIMARY KEY,
    storageLocation VARCHAR(255),
    storageQuantity INT DEFAULT 0
);

CREATE TABLE deliver(
	idDeliver INT AUTO_INCREMENT PRIMARY KEY,
	deliverStatus ENUM('Pending', 'In Transit', 'Delivered', 'Delayed') default 'Pending',
    tracking_code VARCHAR(50) NOT NULL
);

-- Criando Relações

CREATE TABLE orderDeliver(
	idODorder INT,
    idODdeliver INT,
    tracking_code VARCHAR(50) NOT NULL,
	PRIMARY KEY (idODorder, idODdeliver),
    CONSTRAINT fk_od_order FOREIGN KEY (idODorder) REFERENCES orders(idOrders),
    CONSTRAINT fk_od_deliver FOREIGN KEY (idODdeliver) REFERENCES deliver(idDeliver)
);

CREATE TABLE productSeller (
    idPSeller INT,
    idPproduct INT,
    prodQuantity INT DEFAULT 1,
    PRIMARY KEY (idPSeller, idPproduct),
    CONSTRAINT fk_ps_seller FOREIGN KEY (idPSeller) REFERENCES seller(idSeller),
    CONSTRAINT fk_ps_product FOREIGN KEY (idPproduct) REFERENCES product(idProduct)
);

CREATE TABLE productOrder (
    idPOproduct INT,
    idPOorder INT,
    poQuantity INT DEFAULT 1,
    poStatus ENUM('Available', 'Not Available') DEFAULT 'Available',
    PRIMARY KEY (idPOproduct, idPOorder),
    CONSTRAINT fk_po_product FOREIGN KEY (idPOproduct) REFERENCES product(idProduct),
    CONSTRAINT fk_po_order FOREIGN KEY (idPOorder) REFERENCES orders(idOrders)
);

CREATE TABLE storageLocation(
	idslProdStorage INT,
    idslProduct INT,
    location VARCHAR(255) NOT NULL,
    PRIMARY KEY (idslProdStorage, idslProduct),
    CONSTRAINT fk_sl_product FOREIGN KEY (idslProduct) REFERENCES product(idProduct),
    CONSTRAINT fk_sl_prodstorage FOREIGN KEY (idslProdStorage) REFERENCES storages(idProdStorage)
);

CREATE TABLE productSupplier(
	idPsSupplier INT,
    idPsProduct INT,
    quantity int NOT NULL,
    PRIMARY KEY (idPsSupplier, idPsProduct),
    CONSTRAINT fk_psupp_supplier FOREIGN KEY (idPsSupplier) REFERENCES supplier(idSupplier),
    CONSTRAINT fk_psupp_product FOREIGN KEY (idPsProduct) REFERENCES product(idProduct)
);

