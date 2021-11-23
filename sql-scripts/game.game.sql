-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Database: game
-- ------------------------------------------------------
-- Server version	8.0.23

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;

CREATE TABLE `game` (
  `game_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `platform` varchar(10) NOT NULL,
  `price` float NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` VALUES (1,'Final Fantasy VI','SNES',40,15),(2,'Legend of Zelda Skyward Sword','Switch',60.5,195),(3,'Skies of Arcadia','GameCube',18.7,1),(7,'Phantasy Star IV','Mega Drive',25.55,5),(9,'Mario is Missing','MS-DOS',100,1);

-- Dump completed on 2021-08-15  1:38:38
