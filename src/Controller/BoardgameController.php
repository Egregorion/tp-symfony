<?php

namespace App\Controller;

use App\Entity\Boardgame;
use App\Form\BoardgameType;
use App\Repository\BoardgameRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BoardgameController extends AbstractController
{
    #[Route('/boardgame', name: 'app_boardgame')]
    public function index(BoardgameRepository $repo): Response
    {
        $boardgames = $repo->findAll();
        dump($boardgames);
        return $this->render('boardgame/index.html.twig', [
            'controller_name' => 'BoardgameController',
            'boardgames' => $boardgames
        ]);
    }

    #[Route('/boardgame/new', name: 'app_add_boardgame')]
    public function add(Request $request, ManagerRegistry $doctrine): Response
    {
        $em = $doctrine->getManager();

        $newgame = new Boardgame;

        $form = $this->createForm(BoardgameType::class, $newgame)
            ->add('enregistrer', SubmitType::class);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            $newgame = $form->getData();
            $em->persist($newgame);
            $em->flush();
        }
        
        return $this->render('boardgame/add.html.twig', [
            'form' => $form,
        ]);
    }

    #[Route('/boardgame/{id}', name: 'app_show_boardgame')]
    public function show(BoardgameRepository $repo, $id) : Response
    {
        $boardgame = $repo->find($id); 
        //dump($boardgame);
        return $this->render('boardgame/show.html.twig', [
            'game' => $boardgame
        ]);
    }
}
