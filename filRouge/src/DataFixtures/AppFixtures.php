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
        $c2->setDescription("Le jeu de tir à la première personne (en anglais FPS pour First-person shooter) ou en vue subjective, aussi appelé Doom-like est un genre de jeu vidéo de tir fondé sur des combats en vision subjective (« à la première personne »), c'est-à-dire que le joueur voit l'action à travers les yeux du protagoniste. ");
        $manager->persist($c2);

        $c3 = new Category();
        $c3->setName("RPG");
        $c3->setDescription("Un jeu vidéo de rôle ou simplement jeu de rôle, couramment abrégé en RPG (sigle issu de l'anglais role playing game), est un genre de jeu vidéo s'inspirant des codes et du principe des jeux de rôle sur table. Le joueur y incarne un ou plusieurs personnages qu'il fait évoluer au fil d'une quête.");
        $manager->persist($c3);

        $c4 = new Category();
        $c4->setName("FPS");
        $c4->setDescription("Le jeu de tir à la première personne (en anglais FPS pour First-person shooter) ou en vue subjective, aussi appelé Doom-like est un genre de jeu vidéo de tir fondé sur des combats en vision subjective (« à la première personne »), c'est-à-dire que le joueur voit l'action à travers les yeux du protagoniste. ");
        $manager->persist($c4);

        $c5 = new Category();
        $c5->setName("RPG");
        $c5->setDescription("Un jeu vidéo de rôle ou simplement jeu de rôle, couramment abrégé en RPG (sigle issu de l'anglais role playing game), est un genre de jeu vidéo s'inspirant des codes et du principe des jeux de rôle sur table. Le joueur y incarne un ou plusieurs personnages qu'il fait évoluer au fil d'une quête.");
        $manager->persist($c5);

        $c6 = new Category();
        $c6->setName("FPS");
        $c6->setDescription("Le jeu de tir à la première personne (en anglais FPS pour First-person shooter) ou en vue subjective, aussi appelé Doom-like est un genre de jeu vidéo de tir fondé sur des combats en vision subjective (« à la première personne »), c'est-à-dire que le joueur voit l'action à travers les yeux du protagoniste. ");
        $manager->persist($c6);


        //SUBCATEGORY
        $sc1 = new Category();
        $sc1->setName("PS5");
        $sc1->setDescription("La PlayStation 5 (abrégée officiellement PS5) est la console de jeux vidéo de salon de neuvième génération développée par Sony Interactive Entertainment. Elle est commercialisée le 12 novembre 2020 aux États-Unis, au Canada, en Australie et au Japon, puis le 19 novembre en Europe et dans le reste du monde.");
        $sc1->setParent($c1);
        $manager->persist($sc1);

        //PRODUCT
        $product1 = new Product();
        $product1->setName("Cyberpunk")
            ->setPrice(50);
        $manager->persist($product1);

        $product2 = new Product();
        $product2->setName("Call of ")
            ->setPrice(50);
        $manager->persist($product2);

        $product3 = new Product();
        $product3->setName("Fifa")
            ->setPrice(50);
        $manager->persist($product3);

        $product4 = new Product();
        $product4->setName("Overwatch")
            ->setPrice(50);
        $manager->persist($product4);

        $product5 = new Product();
        $product5->setName("Gta 6")
            ->setPrice(50);
        $manager->persist($product5);

        $product6 = new Product();
        $product6->setName("Nabi trop fort")
            ->setPrice(50);
        $manager->persist($product6);
        $manager->flush();

        $product23 = new Product();
        $product23


         //PRODUCTDETAIL
     




    }
}
       
