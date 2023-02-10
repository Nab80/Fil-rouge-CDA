DROP DATABASE IF EXISTS Hotellerie; 

CREATE DATABASE Hotellerie; 

USE Hotellerie;

Create table Station (
num_sta 	INT AUTO_INCREMENT NOT NULL,
nom_sta		varchar(50),
PRIMARY KEY (num_sta)
);

Create table Hotel (
cap_hot			INT NOT NULL,
cat_hot			INT,
nom_hot			varchar(50),
adr_hot			varchar(150),
num_hot			INT AUTO_INCREMENT NOT NULL,
num_sta			INT NOT NULL,
PRIMARY KEY (num_hot),
FOREIGN KEY (num_sta) references Station (num_sta)
);

Create table Chambre (
cap_cha 		INT NOT NULL,
deg_con			varchar(50),
exp_cha			varchar(50),
typ_cha			varchar(50),
num_cha			INT AUTO_INCREMENT NOT NULL,
num_hot			INT,
PRIMARY KEY (num_cha),
FOREIGN KEY (num_hot) references Hotel (num_hot)
);

Create table Client (
adr_cli			varchar(50),
nom_cli 		varchar(50),
pre_cli			varchar(50),
num_cli			INT AUTO_INCREMENT NOT NULL,
PRIMARY KEY (num_cli)
);


Create table Reservation (
num_cha			INT,
num_cli 		INT,
dat_deb			DATE,
dat_fin			DATE,
dat_res			DATE,
mon_arr			INT,
pri_tot			INT,
FOREIGN KEY (num_cha) references Chambre (num_cha),
FOREIGN KEY (num_cli) references Client (num_cli),
PRIMARY KEY (num_cha, num_cli)
);
