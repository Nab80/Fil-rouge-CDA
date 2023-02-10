DROP DATABASE IF EXISTS Export; 

CREATE DATABASE Export; 

USE Export;

Create table Client (
cli_num				int AUTO_INCREMENT NOT NULL,
cli_nom				varchar(50),
cli_adresse			varchar(50),
cli_tel				varchar(30),
PRIMARY KEY (cli_num)
);

Create table Commande (
com_num				int AUTO_INCREMENT NOT NULL,
cli_num 			int,
com_date			DATE,
com_obs				varchar(50),
PRIMARY KEY (com_num),
FOREIGN KEY (cli_num) references Client (cli_num)
);

Create table Produit (
pro_num				INT AUTO_INCREMENT NOT NULL,
pro_libelle			varchar(50),
pro_description		varchar(50),
PRIMARY KEY (pro_num)
);

Create table Composition (
com_num				int,
pro_num				int,
est_qte				int,
FOREIGN KEY (com_num) references Commande (com_num),
FOREIGN KEY (pro_num) references Produit (pro_num),
PRIMARY KEY (com num, pro_num)
);