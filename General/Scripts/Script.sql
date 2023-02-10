DROP DATABASE IF EXISTS Gens; 

CREATE DATABASE Gens; 

USE Gens;

Create table personne (
per_num INT AUTO_INCREMENT NOT NULL,
per_nom varchar(50),
per_prenom varchar(50),
per_adresse varchar(50),
per_ville varchar(50),
primary key (per_num)
);

create table groupe (
gro_num INT AUTO_INCREMENT NOT NULL, 
gro_libelle varchar(50),
primary key (gro_num)
);

create table appartient (
per_num INT,
gro_num INT,
PRIMARY KEY (per_num, gro_num),
foreign key (per_num) references personne (per_num),
foreign key (gro_num) references groupe (gro_num)
);