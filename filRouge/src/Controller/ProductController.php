<?php

namespace App\Controller;

use App\Entity\Category;
use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProductController extends AbstractController
{
    #[Route('/{category}/product', name: 'app_product')]
    public function index(Category $category): Response
    {
        $product = $category->getProducts();        

        return $this->render('product/product.html.twig', [
            'category' => $category,
            'product' => $product,
        ]);
    }
}
