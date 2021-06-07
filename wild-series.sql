-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: wild-series
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Action'),(2,'Aventure'),(3,'Animation'),(4,'Fantastique'),(5,'Horreur');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20210523171748','2021-06-06 19:37:53',74),('DoctrineMigrations\\Version20210523174452','2021-06-06 19:37:53',79),('DoctrineMigrations\\Version20210525203156','2021-06-06 19:37:53',109),('DoctrineMigrations\\Version20210530192248','2021-06-06 19:37:54',91),('DoctrineMigrations\\Version20210606173925','2021-06-06 19:39:35',237);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `season_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int NOT NULL,
  `synopsis` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_DDAA1CDA4EC001D1` (`season_id`),
  CONSTRAINT `FK_DDAA1CDA4EC001D1` FOREIGN KEY (`season_id`) REFERENCES `season` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episode`
--

LOCK TABLES `episode` WRITE;
/*!40000 ALTER TABLE `episode` DISABLE KEYS */;
INSERT INTO `episode` VALUES (292,25,'Unaired Pilot',0,'\n    The first Pilot of what will become The Big Bang Theory. Leonard and Sheldon are two awkward scientists who share an apartment. They meet a drunk girl called Katie and invite her to stay at their place, because she has nowhere to stay. The two guys have a female friend, also a scientist, called Gilda.    '),(293,25,'Pilot',1,'\n    A pair of socially awkward theoretical physicists meet their new neighbor Penny, who is their polar opposite.    '),(294,25,'The Big Bran Hypothesis',2,'\n    Penny is furious with Leonard and Sheldon when they sneak into her apartment and clean it while she is sleeping.    '),(295,25,'The Fuzzy Boots Corollary',3,'\n    Leonard gets upset when he discovers that Penny is seeing a new guy, so he tries to trick her into going on a date with him.    '),(296,25,'The Luminous Fish Effect',4,'\n    Sheldon\'s mother is called to intervene when he delves into numerous obsessions after being fired for being disrespectful to his new boss.    '),(297,25,'The Hamburger Postulate',5,'\n    Leslie seduces Leonard, but afterwards tells him that she is only interested in a one-night stand.    '),(298,25,'The Middle Earth Paradigm',6,'\n    The guys are invited to Penny\'s Halloween party, where Leonard has yet another run-in with Penny\'s ex-boyfriend Kurt.    '),(299,25,'The Dumpling Paradox',7,'\n    When Howard hooks up with Penny\'s old friend, his absence in the gang causes problems for the rest of the guys.    '),(300,25,'The Grasshopper Experiment',8,'\n    When Raj\'s parents set him up on a blind date, he finds he can talk to women with the aid of alcohol.    '),(301,25,'The Cooper-Hofstadter Polarization',9,'\n    Leonard and Sheldon\'s friendship is put to the test when Leonard wants to present a paper they co-authored at a physics convention, but Sheldon doesn\'t.    '),(302,25,'The Loobenfeld Decay',10,'\n    Leonard lies to Penny so that he and Sheldon can get out of watching her perform. However, Sheldon believes that the lie has too many loose ends, so he comes up with a new, unnecessarily complex one to replace it.    '),(303,25,'The Pancake Batter Anomaly',11,'\n    When Sheldon gets sick, Leonard, Howard and Raj go AWOL, leaving a reluctant Penny to deal with him.    '),(304,25,'The Jerusalem Duality',12,'\n    Sheldon decides to give up his work and focus on other tasks when a 15-year-old prodigy joins the university, so the other guys come up with a plan to get rid of him.    '),(305,25,'The Bat Jar Conjecture',13,'\n    Sheldon becomes so intent on demonstrating his intellectual superiority over the other guys that they kick him off the Physics Bowl team and replace him with his nemesis, Leslie.    '),(306,25,'The Nerdvana Annihilation',14,'\n    Penny gets mad at the guys when their full scale model of a time machine causes her to miss work, which prompts Leonard to give up all of his nerd memorabilia.    '),(307,26,'The Codpiece Topology',2,'\n    Sheldon is annoyed when Leonard turns to Leslie for comfort after seeing Penny with another guy.    '),(308,26,'The Barbarian Sublimation',3,'\n    Sheldon introduces Penny to online gaming, however she refuses to quit after becoming addicted.    '),(309,26,'The Griffin Equivalency',4,'\n    The guys struggle to cope with Raj\'s arrogance after he is featured in a People magazine article.    '),(310,26,'The Euclid Alternative',5,'\n    Sheldon annoys the gang when Leonard can\'t drive him to and from work, so they try to teach him how to drive.    '),(311,26,'The Cooper-Nowitzki Theorem',6,'\n    Sheldon is flattered when a graduate student takes a shine to him, however her extreme devotion becomes too much to handle.    '),(312,26,'The Panty Piñata Polarization',7,'\n    Penny plans revenge when Sheldon bans her from his and Leonards apartment, while Howard and Raj use the latest technology to try to find the house being used in America\'s Next Top Model.'),(313,26,'The Lizard-Spock Expansion',8,'\n    Leonard and Howard\'s friendship is jeopardised when Leonard steals a girl from Howard.    '),(314,26,'The White Asparagus Triangulation',9,'\n    Sheldon believes that Leonard will wreck his relationship with Stephanie, so he decides to take matters into his own hands.    '),(315,26,'The Vartabedian Conundrum',10,'\n    Leonard tries to slow down his relationship with Stephanie when he realizes that they are living together, while Sheldon becomes convinced that he has an untraceable disease.    '),(316,26,'The Bath Item Gift Hypothesis',11,'\n    Leonard is disappointed when Penny develops an interest in an attractive physicist at the university. Meanwhile, Sheldon struggles to find an appropriate Christmas gift for Penny.    '),(317,26,'The Killer Robot Instability',12,'\n    Howard becomes depressed after Penny makes a cruel statement about his love life, while the rest of the guys prepare for a grudge killer robot duel against an obnoxious colleague at the university.    '),(318,26,'The Friendship Algorithm',13,'\n    Sheldon tries to make friends with Kripke in the hope that it will get him access to a coveted computer at the university.    '),(319,26,'The Financial Permeability',14,'\n    Leonard and Sheldon try to help out Penny when she can\'t afford to pay her rent.    '),(320,26,'The Maternal Capacitance',15,'\n    Sheldon hits it off with Leonard\'s psychoanalyst mother, but she drives Leonard and Penny to the bottle.    '),(321,26,'The Cushion Saturation',16,'\n    Howard hooks up with Leslie, while Penny accidentally ruins Sheldon\'s spot on the couch.    '),(322,26,'The Terminator Decoupling',17,'\n    On a train to San Francisco, Howard, Raj and Leonard fight for the affections of sci-fi star Summer Glau, while Sheldon is forced to turn to Penny for help when he leaves his flash drive behind.    ');
/*!40000 ALTER TABLE `episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_92ED778412469DE2` (`category_id`),
  CONSTRAINT `FK_92ED778412469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (2,'The Big Bang Theory','Leonard Hofstadter et Sheldon Cooper vivent en colocation à Pasadena, ville de l\'agglomération de Los Angeles. Ce sont tous deux des physiciens surdoués, « geeks » de surcroît. C\'est d\'ailleurs autour de cela qu\'est axée la majeure partie comique de la série. Ils partagent quasiment tout leur temps libre avec leurs deux amis Howard Wolowitz et Rajesh Koothrappali pour jouer à des jeux vidéo comme Halo, organiser un marathon de la saga Star Wars, jouer à des jeux de société comme le Boggle klingon ou de rôles tel que Donjons et Dragons, voire discuter de théories scientifiques très complexes.Leur univers routinier est perturbé lorsqu\'une jeune femme, Penny, s\'installe dans l\'appartement d\'en face. Leonard a immédiatement des vues sur elle et va tout faire pour la séduire ainsi que l\'intégrer au groupe et à son univers, auquel elle ne connaît rien.','https://upload.wikimedia.org/wikipedia/fr/6/69/BigBangTheory_Logo.png',1);
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `number` int NOT NULL,
  `year` int NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F0E45BA93EB8070A` (`program_id`),
  CONSTRAINT `FK_F0E45BA93EB8070A` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (25,2,1,2007,'Season 1'),(26,2,2,2008,'Season 2'),(27,2,3,2009,'Season 3'),(28,2,4,2010,'Season 4'),(29,2,5,2011,'Season 5'),(30,2,7,2013,'Season 7'),(31,2,8,2014,'Season 8'),(32,2,9,2015,'Season 9'),(33,2,6,2012,'Season 6'),(34,2,10,2016,'Season 10'),(35,2,11,2017,'Season 11'),(36,2,12,2018,'Season 12');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-07 18:33:04
