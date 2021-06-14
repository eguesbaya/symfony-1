<?php

namespace App\DataFixtures;

use App\Entity\Episode;
use App\Service\Slugify;
use App\DataFixtures\SeasonFixtures;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class EpisodeFixtures extends Fixture implements DependentFixtureInterface
{

    private const EPISODE_NB = 5;
    
    public function __construct(Slugify $slugify){
        $this->slugify= $slugify;
    }

    public function load(ObjectManager $manager)
    {
        for ($i=0; $i <= self::EPISODE_NB; $i++) {
        $episode = new Episode();
        $episode->setSeason($this->getReference('season_' .
            rand(0,SeasonFixtures::SEASON_NB-1)));
        $episode->setTitle('Title ' .$i);
        $episode->setNumber($i);
        $episode->setSlug($this->slugify->generate($episode->getTitle()));

        $manager->persist($episode);
        $this->addReference('episode_' . $i, $episode);
        }

        $manager->flush();
    }

    public function getDependencies()
    {
        return [SeasonFixtures::class,
        ];
    }
}
