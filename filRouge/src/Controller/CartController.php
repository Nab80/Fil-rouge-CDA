<?php

namespace App\Controller;

use App\Entity\Product;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CartController extends AbstractController
{

    private $session;

    public function __construct(SessionInterface $session)
    {
        $this->session = $session;
    }

    #[Route('/cart', name: 'app_cart')]
    public function cart(): Response
    {

       
        $cart = $this->session->get('cart', []);
        
    
        return $this->render('cart/index.html.twig', [
            'cart' => $cart
        ]);
    }


    #[Route('/add/{id}', name: 'app_add')]
    public function add( Product $product): Response
    {

        $cart = $this->session->get('cart', []);
    $cart[] = $product;


    $this->session->set('cart', $cart);

    

        
        
        return $this->redirect("/cart");
    }
}