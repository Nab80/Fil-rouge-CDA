|   **CODE**   |          **LIBELLE**           | **TYPE** | **CONTRAINTES** | 
|--------------|--------------------------------|----------|-----------------|
| MatId | Code d'identification du produit | Integer | NOT NULL |
| MatNom | Nomenclature du materiel | String | NOT NULL |
| MatDesc | Description du materiel | String | NOT NULL | 
| MatType | Type de materiel | String | NOT NULL |
| LocId | Code d'identification de la location | Integer | NOT NULL |
| LocDur | Duree de la location | Integer | >0 |
| LocPrix | Montant de la location | Decimal | >0 |
| UserId | Code d'identification de l'utilisateur | String | NOT NULL |
| UserFirstname | Prénom de l'utilisateur | String | NOT NULL |
| UserLastname | Nom de famille de l'utilisateur | String | NOT NULL |
| UserAddress | Addresse de l'utilisateur | String | NOT NULL |
| UserZipcode | Code postal | String | >0 |
| UserCity | Ville de l'utilisateur | String | NOT NULL |
| UserPassword | Mot de passe | String | NOT NULL |