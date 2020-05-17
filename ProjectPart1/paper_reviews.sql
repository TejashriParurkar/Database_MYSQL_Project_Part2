-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: paper_reviews
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `EmailAddr` varchar(300) NOT NULL,
  `FirstName` varchar(300) DEFAULT NULL,
  `LastName` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`EmailAddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (' silvia.marelli@gmail.com','Silvia','Marelli'),('campnari.stefano@gmail.com','Stefano','Campanari'),('christian123@google.com','Christian','Kehrer'),('dariocusati@yahoo.com','Dario','Cusati'),('joerntoelle676@ymail.com','Joern','Toelle');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper` (
  `id` int NOT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `Abstract` varchar(2000) DEFAULT NULL,
  `FileName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (1,'Experimental Evaluation of Steady State Performance of an Automotive Electric Supercharger ','Nowadays, the electric supercharger for turbocharged downsized automotive engines is mainly used to improve torque at low engine speeds in order to obtain an improvement of the time to boost. These components are usually designed to fill the gap in terms of torque in transient operation caused by the main turbocharger with reference to the typical turbo lag issues. An advanced solution of the engine boosting system was taken into account, considering the adoption of an e-booster system coupled to a waste-gated turbocharger, typically adopted alone in order to provide a reduced turbo-lag, i.e. an optimized transient response of the system. In the experimental activity described in this work, the maximum speed of the e-booster used is about 70000 rpm, the maximum pressure ratio is 1.5 and the maximum power required on the shaft is less than 4 kW. The compressor unit have to be maintained in the idle condition in order to avoid excessive electric consumption and overheating problem when the boost given by this component is not required. ','Automotive Electric Supercharger'),(2,'On-Board Post-Combustion CO2 Capture in Light-Duty and Heavy-Duty transport ','The European Union set the CO2 emission limit in the transport sector that will decrease in the next years. The purpose of this work is to assess through technical analysis, a system that captures part of the CO2 from the exhaust gases of duty vehicles. Two distinct categories of vehicles are considered, those with a mass lower than 3.5 tons and those with a higher mass. For the light-duty category, the analysis is developed estimating the consumptions and emissions based on the WLTP homologation cycle by means of the software Excel. For the heavy-duty category, the consumptions and the emissions are determined by means of the software specifically developed by the European Union for heavy-duty vehicles named VECTO (Vehicle Energy Consumption calculation Tool). From a literature review, different technologies are considered. The most suitable technology is selected. A possible way is based on the adsorption through the metal-organic framework (MOF).','Post-Combustion CO2 Capture'),(3,'A Detailed Finite Element Thermal Analysis of a 18650 Format Battery Cell for Automotive Applications ','his paper presents a methodology for the thermal analysis of a cylindrical Li-Ion battery cell. In particular, the 18650 format is considered. First, an electrical current drain cycle is applied to measure the electrical internal resistance of the cell and to estimate the consequent thermal energy release. A battery cell is then dissected and the inner structure is reproduced in detail with the adoption of microscopic images. By this way, the heat generation areas and the different thermal paths are correctly identified. Thermal Finite Element analyses are performed faithfully reproducing the inner geometry of the cell, and different cooling strategies are compared. The numerical results are then validated versus experimental evidence obtained considering the thermal behaviour of a small section, made by three cells, of a water cooled battery pack.','Finite Element Thermal Analysis'),(4,'Multidisciplinary Investigation of Truck Platooning ','In the age of environmental challenges and with it, the demand for increasing energy efficiency of commercial vehicles, truck platooning is discussed as a promising approach. The idea is several trucks forming an automated convoy - with the lead truck sending out acceleration, braking and steering signals for the following trucks to react accordingly. The benefits address fuel savings, traffic capacity, safety requirements and convenience. In our study, we will motivate why platooning requires a multidisciplinary approach in the sense of connecting different modeling and simulation methods. The simulation topics covered are aerodynamic analysis, vehicle-to-vehicle (V2V) communication, radar antenna placement and virtual drive cycle test for the energetic evaluation of a truck platoon in comparison to a single truck. Aerodynamic analyses are conducted using a transient Lattice Boltzmann approach on GPUs capturing the complex vehicle wake interactions for different platooning distances with acceptable computational effort.','Truck Platooning'),(5,'Design and Sustainability Assessment of Lightweight Concept for an Automotive Car Module','Recently sustainability has become a priority for industry production. This issue is even more valid for the automotive sector, where Original Equipment Manufacturers have to address the environmental protection additionally to traditional design issues. Against this background, many research and industry advancements are concentrated in the development of lightweight car components through the application of new materials and manufacturing technologies. The paper deals with an innovative lightweight design solution for the bumper system module of a B-segment car. The study has been developed within the Affordable LIght-weight Automobiles AlliaNCE (ALLIANCE) project, funded by the Horizon 2020 framework programme of the European Commission. A bumper demonstrator, that is currently in series production and mainly consists of conventional aluminum materials, is re-engineered making use of 7000 series aluminum alloys. The design alternatives are described and assessed regarding the achieved weight saving. ','Lightweight Concept for an Automotive Car');
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL,
  `PaperId` int DEFAULT NULL,
  `ReviewerId` varchar(500) DEFAULT NULL,
  `Recommendation` varchar(500) DEFAULT NULL,
  `MeritScore` int DEFAULT NULL,
  `ReadabilityScore` int DEFAULT NULL,
  `OriginalityScore` int DEFAULT NULL,
  `RelevanceScore` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PaperId` (`PaperId`),
  KEY `ReviewerId` (`ReviewerId`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`PaperId`) REFERENCES `paper` (`id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`ReviewerId`) REFERENCES `reviewer` (`EmailAddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,'bhatt.mitali@blackrock.com','It\'s not very great, but not that bad too',7,5,6,4),(2,2,'johnsonmary567@yahoo.com','Would not recommend at all.',6,1,6,7),(3,3,'meena.meyer@gmail.com','Must read!',10,10,10,10),(4,4,'smithtrevor91@google.com','Will recommend!',8,6,10,9),(5,5,'vaibhav.seth@gmail.com','Would like to recommend this work!',9,8,6,7);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewer` (
  `EmailAddr` varchar(300) NOT NULL,
  `FirstName` varchar(300) DEFAULT NULL,
  `LastName` varchar(300) DEFAULT NULL,
  `PhoneNum` int DEFAULT NULL,
  `Affiliation` varchar(500) DEFAULT NULL,
  `AuthorFeedback` varchar(500) DEFAULT NULL,
  `CommiteeFeedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`EmailAddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewer`
--

LOCK TABLES `reviewer` WRITE;
/*!40000 ALTER TABLE `reviewer` DISABLE KEYS */;
INSERT INTO `reviewer` VALUES ('bhatt.mitali@blackrock.com','Mitali','Bhatt',451224,'Pace University','It\'s good','I found this paper kind of average - overall!'),('johnsonmary567@yahoo.com','Mary','johnson',456897,'USC','You can work on it to improve your presentation skills.','Worst writing ever!'),('meena.meyer@gmail.com','Meena','Meyer',123456,'UNiversity of Mumbai','Excellent!','It\'s a real masterpiece.'),('smithtrevor91@google.com','Trevor','Smith',216545,'UCSD','I like your content.','Content-wise this paper is good.'),('vaibhav.seth@gmail.com','Vaibhav','Seth',3521654,'university of Florence','Very well done!','It\'s a good work. I like it.');
/*!40000 ALTER TABLE `reviewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id` int NOT NULL,
  `TopicName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Thermal Analysis'),(2,'Truck Platooning'),(3,'Electric SuperCharger'),(4,'Post CO2 combustion'),(5,'Light-Weight automotive Car');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-21 14:26:24
