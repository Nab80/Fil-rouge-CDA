<?php

namespace App\Controller;

use App\Repository\CategoryRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CatalogueController extends AbstractController
{
    #[Route('/', name: 'app_catalogue')]
    public function index(CategoryRepository $categoryRepository): Response
    {
        $categories = $categoryRepository->findAll(); 

        return $this->render('catalogue/index.html.twig', [
            'categories' => $categories,
        ]);
    }
}
