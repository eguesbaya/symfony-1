<?php
// src/Controller/ProgramController.php

namespace App\Controller;

use App\Entity\Program;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\SeasonRepository;
use App\Repository\ProgramRepository;
use App\Entity\Season;
use App\Entity\Episode;
use App\Form\ProgramType;
use Symfony\Component\HttpFoundation\Request;


/**
 * @Route("/programs", name="program_")
 */

class ProgramController extends AbstractController
{

    /**
     * @Route("/", name="index")
     * @return Response A response instance
     */

    public function index(): Response
    {
        $programs = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findAll();

        return $this->render(
            'programs/index.html.twig',
            ['programs' => $programs]
        );
    }

    /**
     * The controller for the category add form
     *
     * @Route("/new", name="new")
     */

    public function new(Request $request) : Response

    {
        // Create a new Program Object
        $program = new Program();
        // Create the associated Form
        $form = $this->createForm(ProgramType::class, $program);
        // Get data from HTTP request
        $form->handleRequest($request);

        // Was the form submitted ?
        if ($form->isSubmitted()) {

        // Deal with the submitted data
        // Get the Entity Manager
            $entityManager = $this->getDoctrine()->getManager();

        // Persist Category Object
            $entityManager->persist($program);

        // Flush the persisted object
            $entityManager->flush();

        // Finally redirect to categories list
            return $this->redirectToRoute('program_index');
        }

        // Render the form

        return $this->render('programs/new.html.twig', ["form" => $form->createView()]);

    }

/**
 * Getting a program by id
 *
 * @Route("/show/{id<^[0-9]+$>}", name="show")
 * @return Response
 */

    public function show(int $id, ProgramRepository $programRepository, SeasonRepository $seasonRepository): Response
    {

        $program = $programRepository->findOneBy(['id' => $id]);

        if (!$program) {

            throw $this->createNotFoundException(
                'No program with id : ' . $id . ' found in program\'s table.'
            );
        }

        $seasons = $seasonRepository->findAll();

        return $this->render('programs/show.html.twig', [
            'program' => $program,'seasons' => $seasons
        ]);
    }


    /**
    * @Route("/{programId}/seasons/{seasonId}", name="season_show")
    * @return Response
    */

    public function showSeason(int $programId, int $seasonId){
        $program = $this->getDoctrine()
            ->getRepository(Program::class)
            ->find($programId);

        $season = $this->getDoctrine()->getRepository(Season::class)
            ->find($seasonId);

        $episodes = $this->getDoctrine()
            ->getRepository(Episode::class)
            ->findAll();

        return $this->render(
            'programs/season_show.html.twig',
            ['program' => $program, 'season' => $season, 'episodes' => $episodes]
        );

    }

}
