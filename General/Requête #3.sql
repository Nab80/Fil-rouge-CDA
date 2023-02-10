USE FilRouge;

DELIMITER |

CREATE OR REPLACE PROCEDURE del_moy_livr ()
BEGIN 
	SELECT AVG (DATEDIFF (date_livraison, date_commande)) FROM commande join Livraison on Livraison.Id_Livraison=commande.Id_Livraison or date_livraison is null;
END|

DELIMITER ;		
