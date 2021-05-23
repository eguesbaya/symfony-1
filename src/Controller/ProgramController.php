<?php
// src/Controller/ProgramController.php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


/**
 * @Route("/programs", name="program_")
 */

class ProgramController extends AbstractController
{

    /**
    * @Route("/", name="index")
    */

    public function index(): Response
    {

        return $this->render('programs/index.html.twig', [

            'website' => 'Wild Séries',

        ]);
    }


    /**
    * @Route("/{id}", methods={"GET"}, name="show", requirements={"id"="\d+"})
    */

    public function show(int $id): Response
    {
        return $this->render('programs/show.html.twig', [
        'id' => $id,

]);


    }

}
