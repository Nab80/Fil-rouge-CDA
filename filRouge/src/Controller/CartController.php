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
        $cart = $session->get("cart', []");

        return $this->render('cart/index.html.twig', [
            'cart' => $cart
        ]);
    }


    #[Route('/add/{id}', name: 'app_add')]
    public function add(SessionInterface $session, Product $id): Response
    {
        $panier = $session->get("cart", []);

        $panier[] = $id;

        $session->set("cart", $panier);


        return $this->redirect("/cart");
    }
}