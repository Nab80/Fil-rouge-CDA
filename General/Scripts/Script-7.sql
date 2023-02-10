
SELECT * from employe;

SELECT * from dept;

SELECT noemp, dateemb, nosup, nodep, salaire from employe;

SELECT DISTINCT noemp, nom, titre from employe;

SELECT DISTINCT nosup, titre from employe;
 
SELECT nom, noemp, nodep from employe where titre='Secrétaire';

SELECT nom, nodep from employe where nodep>40;

SELECT nom, prenom from employe where nom<prenom ;

SELECT nom, salaire, nodep from employe where titre='Représentant' AND nodep='35' AND salaire>20000; 

SELECT nom, titre, salaire from employe where nodep=34 and titre='Représentant' OR titre='Président';

SELECT nom, titre, nodep, salaire from employe where nodep=34 and titre='Représentant' OR titre='Secrétaire';

SELECT nom, titre, nodep, salaire from employe where titre='Représentant' OR titre='Secrétaire' and nodep=34;

SELECT nom, salaire from employe where salaire>20000 and salaire<30000;

SELECT nom from employe where nom like 'h%'; 

SELECT nom from employe where nom like '%n';

SELECT nom from employe where nom like '__u%';

SELECT salaire, nom from employe where nodep=41 order by salaire ASC;

SELECT salaire, nom from employe where nodep=41 order by salaire DESC;

SELECT titre, salaire, nom from employe order by nosup asc, saslaire desc;

SELECT tauxcom, nom, salaire from employe where tauxcom IS NOT NULL order by tauxcom asc;

SELECT nom, salaire, tauxcom, titre from employe where tauxcom is null;

SELECT nom, salaire, tauxcom, titre from employe where tauxcom is not null;

SELECT nom, salaire, tauxcom, titre from employe where tauxcom is not null and tauxcom<15;

SELECT nom, salaire, tauxcom, titre from employe where tauxcom is not null and tauxcom>15;

SELECT count(tauxcom*salaire) from employe where tauxcom is not null;









