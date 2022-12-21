<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Product;
use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProductController extends AbstractController
{
    #[Route('/products/{console}/{genre}', name: 'app_products')]
    public function products(Category $genre, Category $console, ProductRepository $productRepository): Response
    {
        $productsTemp = $productRepository->findAll();

        $products = [];

        foreach ($productsTemp as $product) {
            if (in_array($genre, $product->getCategory()->toArray()) && in_array($console, $product->getCategory()->toArray())) {
                $products[] = $product;
            }
        }

        return $this->render('product/products.html.twig', [
            'products' => $products,
        ]);
    }

    #[Route('/product/{product}', name: 'app_product')]

    public function product(product $product): Response
    {
        return $this->render('product/productDetail.html.twig', [
            'product' => $product
        ]);

    }
}