<?php

namespace App\DataFixtures;

use App\Entity\Season;
use App\DataFixtures\ProgramFixtures;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class SeasonFixtures extends Fixture implements DependentFixtureInterface
{

    public const SEASON_NB = 5;

    public function load(ObjectManager $manager)
    {
        for ($i =0; $i < self::SEASON_NB; $i++){
           $season = new Season();
           $season->setProgram($this->getReference('program_blinders'));
           $season->setNumber($i);
           $season->setYear(2020+$i);
           $season->setDescription('Description of season ' .$i);
           $manager->persist($season);
           $this->addReference('season_' . $i, $season);
        }
        $manager->flush();

    }

    public function getDependencies()
    {
        return [ProgramFixtures::class,
        ];
    }
}
