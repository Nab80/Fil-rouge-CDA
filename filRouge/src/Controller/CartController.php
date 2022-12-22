<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

class CartController extends AbstractController
{
    #[Route('/cart', name: 'app_cart')]
    public function cart(SessionInterface $session): Response
    {
        $cart = $session->get("panier', []");
        
        return $this->render('cart/index.html.twig', [
            'cart' => $cart
        ]);
    }


    #[Route('/add', name: 'app_add')]
    public function add(): Response
    {
        return $this->render('product/product.html.twig', [
            'controller_name' => 'CartController',
        ]);
    }
}
