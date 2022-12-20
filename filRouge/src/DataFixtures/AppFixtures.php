<?php

namespace App\DataFixtures;

use App\Entity\Category;
use App\Entity\Product;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Cache;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $c1 = new Category();
        $c1->setName("RPG");
        $c1->setDescription("Un jeu vidéo de rôle ou simplement jeu de rôle, couramment abrégé en RPG (sigle issu de l'anglais role playing game), est un genre de jeu vidéo s'inspirant des codes et du principe des jeux de rôle sur table. Le joueur y incarne un ou plusieurs personnages qu'il fait évoluer au fil d'une quête.");
        $manager->persist($c1);

        $c2 = new Category();
        $c2->setName("FPS");
        $c2->setDescription("Le jeu de tir à la première personne (en anglais FPS pour First-person shooter) ou en vue subjective, aussi appelé Doom-like est un genre de jeu vidéo de tir fondé sur des combats en vision subjective (« à la première personne »), c'est-à-dire que le joueur voit l'action à travers les yeux du protagoniste.");
        $manager->persist($c2);

        $c3 = new Category();
        $c3->setName("SPORT");
        $c3->setDescription("Un jeu vidéo de sport est un genre de jeu vidéo qui simule un sport. Les jeux vidéo de course sont des jeux de sport très représentés, tout comme les jeux de football, basket-ball, hockey sur glace…");
        $manager->persist($c3);

        $c4 = new Category();
        $c4->setName("STRATEGIE");
        $c4->setDescription("Un jeu de stratégie peut être un jeu de société ou un jeu vidéo. Le but est de réaliser un objectif connu : augmenter sa domination spatiale, combattre un ou plusieurs ennemis sur un terrain de jeu, faire prospérer une entité… L'accent n'est pas mis sur l'adresse du joueur mais sur la planification de l'action (tactique ou stratégique).");
        $manager->persist($c4);

        $c5 = new Category();
        $c5->setName("COMBAT");
        $c5->setDescription("Le jeu de combat (ou fighting game), parfois appelé abusivement en France VS fighting (pour versus fighting)1 ou plus familièrement Jeu de baston2, est un genre de jeu vidéo opposant un nombre limité de personnages (deux le plus souvent).");
        $manager->persist($c5);

        $c6 = new Category();
        $c6->setName("PLATEFORME");
        $c6->setDescription("Un jeu de plates-formes ou jeu de plateformes (ou platformer) est un genre de jeu vidéo, sous-genre du jeu d'action. Dans les jeux de plates-formes, le joueur contrôle un avatar qui doit sauter sur des plates-formes suspendues dans les airs et éviter des obstacles. Les environnements requièrent de devoir sauter ou grimper pour pouvoir être traversés.");
        $manager->persist($c6);


        //SUBCATEGORY
        $sc1 = new Category();
        $sc1->setName("PS5");
        $sc1->setDescription("La PlayStation 5 (abrégée officiellement PS5) est la console de jeux vidéo de salon de neuvième génération développée par Sony Interactive Entertainment. Elle est commercialisée le 12 novembre 2020 aux États-Unis, au Canada, en Australie et au Japon, puis le 19 novembre en Europe et dans le reste du monde.");
        $sc1->setParent($c1);
        $manager->persist($sc1);

        $sc2 = new Category();
        $sc2->setName("XBOX");
        $sc2->setDescription("La PlayStation 5 (abrégée officiellement PS5) est la console de jeux vidéo de salon de neuvième génération développée par Sony Interactive Entertainment. Elle est commercialisée le 12 novembre 2020 aux États-Unis, au Canada, en Australie et au Japon, puis le 19 novembre en Europe et dans le reste du monde.");
        $sc2->setParent($c1);
        $manager->persist($sc2);

        $sc3 = new Category();
        $sc3->setName("NINTENDO");
        $sc3->setDescription("La PlayStation 5 (abrégée officiellement PS5) est la console de jeux vidéo de salon de neuvième génération développée par Sony Interactive Entertainment. Elle est commercialisée le 12 novembre 2020 aux États-Unis, au Canada, en Australie et au Japon, puis le 19 novembre en Europe et dans le reste du monde.");
        $sc3->setParent($c1);
        $manager->persist($sc3);

        $sc4 = new Category();
        $sc4->setName("PC");
        $sc4->setDescription("La PlayStation 5 (abrégée officiellement PS5) est la console de jeux vidéo de salon de neuvième génération développée par Sony Interactive Entertainment. Elle est commercialisée le 12 novembre 2020 aux États-Unis, au Canada, en Australie et au Japon, puis le 19 novembre en Europe et dans le reste du monde.");
        $sc4->setParent($c1);
        $manager->persist($sc4);

        //PRODUCT
        $product1 = new Product();
        $product1->setName("Cyberpunk")
            ->setPrice(50)
            ->addCategory($sc1)
            ->addCategory($c1);
        $manager->persist($product1);

        $product2 = new Product();
        $product2->setName("Call of")
            ->setPrice(50)
            ->addCategory($c2)
            ->addCategory($sc4);
        $manager->persist($product2);

        $product3 = new Product();
        $product3->setName("Fifa")
            ->setPrice(50);
        $manager->persist($product3);

        $product4 = new Product();
        $product4->setName("Overwatch")
            ->setPrice(50)
            ->addCategory($sc1)
            ->addCategory($c2);
        $manager->persist($product4);

        $product5 = new Product();
        $product5->setName("Gta 6")
            ->setPrice(50);
        $manager->persist($product5);

        $product6 = new Product();
        $product6->setName("Nabi trop fort")
            ->setPrice(50);
        $manager->persist($product6);
        
        $product7 = new Product();
        $product7->setName("Cyberpunk")
            ->setPrice(50)
            ->addCategory($sc2)
            ->addCategory($c1);
        $manager->persist($product7);

        $product8 = new Product();
        $product8->setName("Cyberpunk")
            ->setPrice(50)
            ->addCategory($sc3)
            ->addCategory($c1);
        $manager->persist($product8);

        $product8 = new Product();
        $product8->setName("Call Of")
            ->setPrice(50)
            ->addCategory($sc1)
            ->addCategory($c2);
        $manager->persist($product8);

        $product9 = new Product();
        $product9->setName("Call of")
            ->setPrice(50)
            ->addCategory($sc2)
            ->addCategory($c2);
        $manager->persist($product9);




        
        $manager->flush();
    }
}
          