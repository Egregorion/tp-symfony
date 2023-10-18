<?php

namespace App\Controller;

use App\Entity\Boardgame;
use App\Entity\Loan;
use App\Form\LoanType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class LoanController extends AbstractController
{
    #[Route('/loan', name: 'app_loan')]
    public function index(): Response
    {
        return $this->render('loan/index.html.twig', [
            'controller_name' => 'LoanController',
        ]);
    }

    #[Route('/loan/{id}/new', name: 'app_loan_new')]
    public function new(int $id, EntityManagerInterface $em, Request $request): Response
    {
        $game = $em->getRepository(Boardgame::class)->find($id);
        $loan = new Loan;
        $form = $this->createForm(LoanType::class, $loan);
        $form->handleRequest($request);
        
        if($form->isSubmitted() && $form->isValid()){
            $loan = $form->getData();
            $loan->setGame($game);
            $loan->setBorrower($this->getUser());
            $em->persist($loan);
            $em->flush();

            return $this->redirectToRoute('app_show_boardgame', ['id' => $id]);
        }
        
        return $this->render('loan/index.html.twig', [
            'form' => $form,
            'game' => $game
        ]);
    }

}
