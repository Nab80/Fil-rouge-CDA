<?php

namespace App\Controller;

use App\Entity\Category;
use App\Repository\CategoryRepository;
use App\Repository\ProductRepository;
//use App\Repository\CategoryRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CatalogueController extends AbstractController
{
    //CategoryRepository $categoryRepository
    #[Route('/', name: 'app_catalogue')]
    public function index(): Response
    {
        //$categories = $categoryRepository->findAll(); 

        return $this->render('home/index.html.twig', [
            //'categories' => $categories,
        ]);
    }

    #[Route('/category', name: 'app_category')] 
    public function category(CategoryRepository $categoryRepository): Response
    {
        return $this->render('catalogue/category.html.twig', [
            'categories' => $categoryRepository->findBy([
                "parent" => null
            ]),
        ]);
    }

    #[Route('/subcategory/{category}', name: 'app_subcategory')]
    public function subcategory(CategoryRepository $categoryRepository, Category $category): Response
    {
        return $this->render('catalogue/subCategory.html.twig', [
            'categorieParent' => $category,
            'categories' => $categoryRepository->findBy([
                "parent" => !null
            ]),
        ]);
    }

/*
    #[Route('/', name: 'app_catalogue')]
    public function index(CategoryRepository $categoryRepository): Response
    {
        $categories = $categoryRepository->findAll(); 

        return $this->render('catalogue/index.html.twig', [
            'categories' => $categories,
        ]);
    }
*/
}
