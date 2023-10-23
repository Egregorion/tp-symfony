<?php

namespace App\Controller;

use App\Entity\Boardgame;
use App\Form\BoardgameType;
use App\Repository\BoardgameRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\HttpFoundation\File\File;

class BoardgameController extends AbstractController
{
    #[Route('/boardgame', name: 'app_boardgame')]
    public function index(BoardgameRepository $repo): Response
    {
        $boardgames = $repo->findAll();
        return $this->render('boardgame/index.html.twig', [
            'boardgames' => $boardgames
        ]);
    }

    #[Route('/boardgame/new', name: 'app_add_boardgame')]
    public function add(Request $request, ManagerRegistry $doctrine, SluggerInterface $slugger): Response
    {
        $em = $doctrine->getManager();

        $newgame = new Boardgame;

        $form = $this->createForm(BoardgameType::class, $newgame)
            ->add('enregistrer', SubmitType::class);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
           
            $pictureFile = $form->get('picture')->getData();
            
            if ($pictureFile) {
                $originalFilename = pathinfo($pictureFile->getClientOriginalName(), PATHINFO_FILENAME);
                
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$pictureFile->guessExtension();
                
                try {
                $pictureFile->move(
                    $this->getParameter('pictures_directory'),
                    $newFilename
                );
                } catch (FileException $e) {
                    
                }
                
                $newgame->setPicture($newFilename);

            }

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
        
        return $this->render('boardgame/show.html.twig', [
            'game' => $boardgame
        ]);
    }

    #[Route('/boardgame/{id}/edit', name: 'app_edit_boardgame')]
    public function edit(EntityManagerInterface $em, Request $request, SluggerInterface $slugger, BoardgameRepository $repo, $id) : Response
    {
        $boardgame = $repo->find($id); 
        
        $form = $this->createForm(BoardgameType::class, $boardgame)
            ->add('enregistrer', SubmitType::class);
    
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            //on vient ici récupérer les données de l'image qui se trouve dans $_FILE
            $pictureFile = $form->get('picture')->getData();
            // this condition is needed because the 'brochure' field is not required
            // so the PDF file must be processed only when a file is uploaded
            if ($pictureFile) {
                $originalFilename = pathinfo($pictureFile->getClientOriginalName(), PATHINFO_FILENAME);
                // this is needed to safely include the file name as part of the URL
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$pictureFile->guessExtension();
                // Move the file to the directory where brochures are stored
                try {
                $pictureFile->move(
                    $this->getParameter('pictures_directory'),
                    $newFilename
                );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }
                // updates the 'brochureFilename' property to store the PDF file name
                // instead of its contents
                $boardgame->setPicture($newFilename);
            }

            $em->flush();
            
            $this->addFlash(
                'success',
                'Le jeu a été modifié avec succés'
            );
            // $this->addFlash() is equivalent to $request->getSession()->getFlashBag()->add()
    
            return $this->redirectToRoute('app_profile');

        }

        return $this->render('boardgame/edit.html.twig', [
            'game' => $boardgame,
            'form' => $form
        ]);
    }

    #[Route('/boardgame/{id}/delete', name: 'app_delete_boardgame')]
    public function delete(EntityManagerInterface $em, int $id)
    {
        $game = $em->getRepository(Boardgame::class)->find($id);
        unlink('uploads/'.$game->getPicture());
        $em->remove($game);
        $em->flush();

        $this->addFlash(
            'success',
            'Le jeu a été supprimé avec succés'
        );
        // $this->addFlash() is equivalent to $request->getSession()->getFlashBag()->add()

        return $this->redirectToRoute('app_profile');
    }
}
