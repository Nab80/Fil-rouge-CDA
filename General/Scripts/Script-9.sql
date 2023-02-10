Use FilRouge;

DELIMITER |

CREATE OR REPLACE procedure commande_en_cours ()
Begin
	Select Id_Commande from commande join Livraison on Livraison.Id_Livraison=commande.Id_Livraison where (date_livraison>NOW()) or date_livraison is null;
END|

DELIMITER ;

DELIMITER |

CREATE OR REPLACE procedure  delai_moy_livraison ()
Begin 
	Select Id_Commande 
END|

DELIMITER ;
