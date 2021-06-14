<?php

namespace App\DataFixtures;

use App\Entity\Program;
use App\Service\Slugify;
use App\DataFixtures\ActorFixtures;
use App\DataFixtures\CategoryFixtures;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class ProgramFixtures extends Fixture implements DependentFixtureInterface
{

    private const PROGRAM_NB = 5;
    private $slugify;

    public function __construct(Slugify $slugify){
        $this->slugify= $slugify;
    }

    public function load(ObjectManager $manager)
    {
        //create new object = new program
        $program = new Program();
        //sets its attributes
        $program->setTitle('Peaky Blinders');
        $program->setSummary('En 1919, à Birmingham, soldats, révolutionnaires 
            politiques et criminels combattent pour se faire une place dans le paysage
            industriel de l\'après-Guerre. Le Parlement s\'attend à une violente révolte, 
            et Winston Churchill mobilise des forces spéciales pour contenir les menaces.');
        $program->setPoster('http: //www.tomsguide.fr/content/uploads/sites/2/2021/01/secrets-de-series-trois-secrets-sur-peaky-blinders-2.jpg');
        for ($i = 0; $i < count(ActorFixtures::ACTORS); $i++) {
            $program->addActor($this->getReference('actor_' . $i));
        }
        $program->setCategory($this->getReference('categorie_0'));

        $slug = $this->slugify->generate($program->getTitle());
        $program->setSlug($slug);
        $manager->persist($program);
        $this->addReference('program_' . 'blinders', $program);

        $program = new Program();
        $program->setTitle('The Spy');
        $program->setSummary('D\'après l\'histoire vraie d\'Eli Cohen, 
        un agent israélien appartenant au MOSSAD ayant infiltré les plus hauts 
        niveaux militaires et politiques de la Syrie dans les années 1960.');
        $program->setPoster('http: //occ-0-92-1722.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABe9zhoSVNAFTYyU2o5KfqpfK4TiqKIg2OonMAZmTd4pgg9qK-X_O91jmrYIUUOR2kq_mMBBmAf1cEatAXuIBbCPYBEBN.jpg?r=fad');
        $program->addActor($this->getReference('actor_6'));
        $program->addActor($this->getReference('actor_7'));
        $program->setCategory($this->getReference('categorie_0'));

        $slug = $this->slugify->generate($program->getTitle());
        $program->setSlug($slug);

        $manager->persist($program);
        $this->addReference('program_' . 'spy', $program);

        for ($i = 0; $i < self::PROGRAM_NB ; $i++) {
            $program = new Program();
            $program->setTitle('Série ' .$i);
            $program->setSummary('Description de la série ' .$i);
            $program->setPoster('http: //picsum.photos/200');
            for ($i = 0; $i < count(ActorFixtures::ACTORS); $i++) {
                $program->addActor($this->getReference('actor_' . $i));
            }
            $program->setCategory($this->getReference('categorie_' . 
                rand(0, count(CategoryFixtures::CATEGORIES)-1)));

            $slug = $this->slugify->generate($program->getTitle());
            $program->setSlug($slug);

            $manager->persist($program);
            $this->addReference('program_' . $i, $program);
        }

        $manager->flush();
    }

    public function getDependencies()
    {
        // Tu retournes ici toutes les classes de fixtures dont ProgramFixtures dépend
        return [
          ActorFixtures::class,
          CategoryFixtures::class,
        ];
    }


}
