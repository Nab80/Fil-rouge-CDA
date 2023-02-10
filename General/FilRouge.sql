-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           10.6.7-MariaDB-2ubuntu1.1 - Ubuntu 22.04
-- SE du serveur:                debian-linux-gnu
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage des données de la table FilRouge.Catégories : ~8 rows (environ)
INSERT INTO `Catégories` (`Id_Catégories`, `TypeJeux`) VALUES
	(1, 'RPG'),
	(2, 'Sport'),
	(3, 'Stratégie'),
	(4, 'MMO/MOBA'),
	(5, 'Plateforme'),
	(6, 'Aventure'),
	(7, 'Action'),
	(8, ' Combat');

-- Listage des données de la table FilRouge.commande : ~4 rows (environ)
INSERT INTO `commande` (`Id_commande`, `com_reduc`, `date_commande`, `date_facture`, `Id_Livraison`, `Id_Client`) VALUES
	(1, 0, '2022-09-20 16:14:21', '2022-09-20 16:24:27', 1, 1),
	(2, 0, '2022-09-22 09:29:40', '2022-09-22 09:39:58', 2, 2),
	(3, 0, '2022-10-25 14:30:15', '2022-10-25 14:40:14', 3, 2),
	(4, 0, '2022-10-25 14:30:15', '2022-10-25 14:40:14', 4, 2);

-- Listage des données de la table FilRouge.Commercial : ~2 rows (environ)
INSERT INTO `Commercial` (`Id_Commercial`, `commercial_fonction`) VALUES
	(1, 'Classique'),
	(2, 'Spécial');

-- Listage des données de la table FilRouge.Contient : ~1 rows (environ)
INSERT INTO `Contient` (`Id_Produit`, `Id_commande`, `quantite`, `prix_vente`) VALUES
	(1, 1, 4, 50);

-- Listage des données de la table FilRouge.est_livré : ~1 rows (environ)
INSERT INTO `est_livré` (`Id_Produit`, `Id_Livraison`, `quantite_livre`) VALUES
	(1, 1, 4);

-- Listage des données de la table FilRouge.Fournis : ~3 rows (environ)
INSERT INTO `Fournis` (`Id_Produit`, `Id_Fournisseur`) VALUES
	(1, 1),
	(1, 2),
	(1, 3);

-- Listage des données de la table FilRouge.Fournisseur : ~3 rows (environ)
INSERT INTO `Fournisseur` (`Id_Fournisseur`) VALUES
	(1),
	(2),
	(3);

-- Listage des données de la table FilRouge.Livraison : ~4 rows (environ)
INSERT INTO `Livraison` (`Id_Livraison`, `date_livraison`) VALUES
	(1, '2022-09-27 00:00:31'),
	(2, '2022-09-29 10:00:04'),
	(3, '2022-10-30 00:00:58'),
	(4, '2027-10-30 00:00:58');

-- Listage des données de la table FilRouge.Produit : ~5 rows (environ)
INSERT INTO `Produit` (`Id_Produit`, `Prix`, `Photo`, `Libelle_court`, `Libelle_long`, `Id_Catégories`) VALUES
	(1, 34.00, 'Lien', 'World of Warcraft', 'World of Warcraft est un jeu vidéo de type MMORPG (jeu de rôle en ligne massivement multijoueur) développé par la société Blizzard Entertainment. C\'est le 4e jeu de l\'univers médiéval-fantastique Warcraft, introduit par Warcraft: Orcs and Humans en 1994. World of Warcraft prend place en Azeroth, près de quatre ans après les événements de la fin du jeu précédent, Warcraft III: The Frozen Throne (2003)1. Blizzard Entertainment annonce World of Warcraft le 2 septembre 20012. Le jeu est sorti en Amérique du Nord le 23 novembre 2004, pour les 10 ans de la franchise Warcraft.', 4),
	(2, 50.00, 'lien', 'Cyberpunk 2077', 'Cyberpunk 2077 est un jeu vidéo RPG en vue à la première personne développé par CD Projekt RED, inspiré du jeu de rôle sur table Cyberpunk 2020 conçu par Mike Pondsmith. Le jeu présente un monde futuriste dystopique de type cyberpunk dans lequel la technologie coexiste avec une société humaine dégénérée', 1),
	(3, 60.00, 'Lien', 'Uncharted 4', 'Quatrième opus de la série de jeu d aventure à succès de Naughty Dog, Uncharted 4 A Thief s End vous permet d incarner Nathan Drake pour la première fois sur PS4. Le célèbre explorateur devra révéler le complot qui se cache derrière un légendaire trésor de pirates.', 6),
	(4, 25.00, 'Lien', 'Super Mario', 'Les jeux Super Mario mettent en scène les aventures de Mario dans le Royaume Champignon. Mario progresse dans des niveaux variés dans lesquels il saute pour battre des ennemis. Le jeu met généralement en scène des intrigues simples ; la plus commune étant que Bowser, le principal ennemi, kidnappe la Princesse Peach, que Mario doit ensuite sauver.', 5),
	(5, 4.99, 'Lien', 'Among us', 'Le jeu se déroule dans un univers de science-fiction. Chaque joueur incarne un des membres de l équipage d un vaisseau spatial, chacun pouvant être soit un équipier, soit un imposteur. Lobjectif pour les membres d équipage est d identifier les imposteurs et de les éliminer tout en accomplissant des tâches dans le vaisseau, tandis que l objectif des imposteurs est de tuer tous les équipiers sans être identifiés.', 3);

-- Listage des données de la table FilRouge.Support : ~4 rows (environ)
INSERT INTO `Support` (`Id_Support`, `Type_de_Support`) VALUES
	(1, 'PC'),
	(2, 'Xbox'),
	(3, 'Playstation'),
	(4, 'Xbox');

-- Listage des données de la table FilRouge.Supporte : ~1 rows (environ)
INSERT INTO `Supporte` (`Id_Support`, `Id_Catégories`) VALUES
	(1, 4);

-- Listage des données de la table FilRouge.Utilisateur : ~2 rows (environ)
INSERT INTO `Utilisateur` (`Id_Client`, `cli_role_particulier_entreprise_`, `Coeficient`, `Id_Commercial`) VALUES
	(1, 'Particulier', 0.0, 1),
	(2, 'Proffesionnel', 0.0, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
