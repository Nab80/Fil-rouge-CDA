DROP DATABASE IF EXISTS Papyrus;

CREATE DATABASE Papyrus;

USE Papyrus;

Create table Produit (
cod_art char(4),
lib_art varchar(30),
stk_ale int,
stk_phy int,
qte_ann int,
uni_mes char(5),
PRIMARY KEY (cod_art)
);

Create table Entcom (
num_com int AUTO_INCREMENT NOT NULL,
obs_com varchar(50),
dat_com DATE,
num_fou int,
PRIMARY KEY (num_com)
);

Create table Ligcom (
num_lig int AUTO_INCREMENT NOT NULL,
num_com int,
cod_art char(4),
qte_cde int(10),
pri_uni decimal(9,
2),
qte_live int(10),
der_liv datetime,
PRIMARY KEY (num_lig,
num_com),
FOREIGN KEY (num_com) references Entcom (num_com),
FOREIGN KEY (cod_art) references Produit (cod_art)
);

Create table Fournis (
num_fou tinyint AUTO_INCREMENT NOT NULL,
nom_fou varchar(25),
rue_fou varchar(50),
pos_fou char(5),
vil_fou varchar(30),
con_fou varchar(15),
sat_isf tinyint,
PRIMARY KEY (num_fou)
);

Create table Vente (
cod_art char(4),
num_fou tinyint,
del_liv smallint,
qte_1 int,
qte_2 int,
qte_3 int,
prix_1 decimal(9,
2),
prix_2 decimal(9,
2),
prix_3 decimal(9,
2),
FOREIGN KEY (cod_art) references Produit (cod_art),
FOREIGN KEY (num_fou) references Fournis (num_fou),
PRIMARY KEY (cod_art, num_fou)
);

CREATE [ UNIQUE ] INDEX NUMFOU
ON Entcom ( num_fou [ ASC | DESC ] ) 