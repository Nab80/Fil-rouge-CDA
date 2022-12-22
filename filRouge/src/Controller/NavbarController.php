<?php

namespace App\Controller;

use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

class NavbarController extends AbstractController
{
    #[Route('/navbar', name: 'app_navbar')]
    public function index(CategoryRepository $repo, SessionInterface $session): Response
    {
        return $this->render('navbar/index.html.twig', [
            'category' => $repo->findAll(),
        ]);
    }
}
