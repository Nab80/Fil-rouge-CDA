DROP DATABASE IF EXISTS Gescom;

CREATE DATABASE Gescom;

USE Gescom;

Create table Suppliers (
sup_id 				int AUTO_INCREMENT NOT NULL,
sup_name			varchar(50),
sup_city			varchar(50),
sup_address			varchar(150),
sup_mail			varchar(75),
sup_phone			int(10),
PRIMARY KEY (sup_id)
);

Create table Customers (
cus_id				int AUTO_INCREMENT NOT NULL,
cus_lastname		varchar(50),
cus_firstname		varchar(50),
cus_address			varchar(150),
cus_zipcode			varchar(50),
cus_city			varchar(50),
cus_mail			varchar(75),
cus_phone			int(10),
PRIMARY KEY (cus_id)
);

Create table Orders (
ord_id				int AUTO_INCREMENT NOT NULL,
ord_order_date		date,
ord_ship_date		date,
ord_bill_date		date,
ord_reception_date  date,
ord_status			varchar(25),
cus_id				int,
PRIMARY KEY (ord_id),
FOREIGN KEY (cus_id) references Customers (cus_id)
);

Create table Categories (
cat_id				int AUTO_INCREMENT NOT NULL,
cat_name			varchar(200),
cat_parent_id		int NOT NULL,
PRIMARY KEY (cat_id),
FOREIGN KEY (cat_parent_id) references Categories (cat_id)
);

Create table Products (
pro_id				int AUTO_INCREMENT NOT NULL, 
pro_ref				varchar(10),
pro_name			varchar(200),
pro_desc			text(1000),
pro_price			decimal(6,2),
pro_stock			smallint(4),
pro_color			varchar(30),
pro_picture			varchar(40),
pro_add_date		date,
pro_update_date		datetime,
pro_publish			tinyint(1),
cat_id				int,
sup_id				int,
PRIMARY KEY (pro_id),
FOREIGN KEY (cat_id) references Categories (cat_id),
FOREIGN KEY (sup_id) references Suppliers (sup_id)
);

Create table Details (
det_id				int AUTO_INCREMENT NOT NULL,
det_price			decimal(6,2),
det_quantity		int(5),
pro_id				int,
ord_id				int,
PRIMARY KEY (det_id),
FOREIGN KEY (pro_id) references Products (pro_id),
FOREIGN KEY (ord_id) references Orders (ord_id)
);