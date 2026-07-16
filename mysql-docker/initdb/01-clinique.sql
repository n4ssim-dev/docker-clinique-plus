-- MySQL dump 10.13  Distrib 8.4.10, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: clinique
-- ------------------------------------------------------
-- Server version	8.4.10-0ubuntu0.26.04.1

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
-- Current Database: `clinique`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `clinique` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `clinique`;

--
-- Table structure for table `appareil`
--

DROP TABLE IF EXISTS `appareil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appareil` (
  `id_appareil` int NOT NULL AUTO_INCREMENT,
  `modele` varchar(100) NOT NULL,
  `numero_serie` varchar(100) DEFAULT NULL,
  `fabricant` varchar(100) DEFAULT NULL,
  `date_installation` date DEFAULT NULL,
  `statut` varchar(20) NOT NULL DEFAULT 'actif',
  `localisation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_appareil`),
  UNIQUE KEY `numero_serie` (`numero_serie`),
  CONSTRAINT `appareil_chk_1` CHECK ((`statut` in (_utf8mb4'actif',_utf8mb4'maintenance',_utf8mb4'hors service')))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appareil`
--

LOCK TABLES `appareil` WRITE;
/*!40000 ALTER TABLE `appareil` DISABLE KEYS */;
INSERT INTO `appareil` VALUES (1,'Natus Embla N7000','SN-PSG-001','Natus Medical','2018-03-01','actif','Salle PSG 1'),(2,'Natus Embla N7000','SN-PSG-002','Natus Medical','2018-03-01','actif','Salle PSG 2'),(3,'Natus Embla N7000','SN-PSG-003','Natus Medical','2019-06-15','actif','Salle PSG 3'),(4,'Somnoscreen Plus','SN-PSG-004','Somnomedics','2020-01-10','actif','Salle PSG 4'),(5,'Somnoscreen Plus','SN-PSG-005','Somnomedics','2020-01-10','maintenance','Salle PSG 5'),(6,'Natus Embla N7000','SN-PSG-006','Natus Medical','2021-04-01','actif','Réserve'),(7,'Alice 6 LDx','SN-PSG-007','Philips','2021-09-01','actif','Réserve'),(8,'Alice 6 LDx','SN-PSG-008','Philips','2022-02-01','actif','Réserve'),(9,'Somnoscreen Plus','SN-PSG-009','Somnomedics','2022-07-01','actif','Réserve'),(10,'Natus Embla N7000','SN-PSG-010','Natus Medical','2023-01-01','actif','Réserve'),(11,'AirSense 11','SN-CPAP-001','ResMed','2021-01-15','actif','Domicile patient'),(12,'AirSense 11','SN-CPAP-002','ResMed','2021-03-01','actif','Domicile patient'),(13,'AirSense 11','SN-CPAP-003','ResMed','2021-06-01','actif','Domicile patient'),(14,'DreamStation 2','SN-CPAP-004','Philips Respironics','2021-09-01','actif','Domicile patient'),(15,'DreamStation 2','SN-CPAP-005','Philips Respironics','2021-09-01','actif','Domicile patient'),(16,'AirSense 11','SN-CPAP-006','ResMed','2022-01-01','actif','Domicile patient'),(17,'AirSense 11','SN-CPAP-007','ResMed','2022-03-01','actif','Domicile patient'),(18,'DreamStation 2','SN-CPAP-008','Philips Respironics','2022-06-01','actif','Domicile patient'),(19,'AirSense 11','SN-CPAP-009','ResMed','2022-09-01','actif','Domicile patient'),(20,'AirSense 11','SN-CPAP-010','ResMed','2023-01-01','actif','Domicile patient'),(21,'DreamStation 2','SN-CPAP-011','Philips Respironics','2023-03-01','actif','Domicile patient'),(22,'AirSense 11','SN-CPAP-012','ResMed','2023-06-01','actif','Domicile patient'),(23,'AirSense 11','SN-CPAP-013','ResMed','2024-01-15','actif','Domicile patient'),(24,'AirSense 11','SN-CPAP-014','ResMed','2023-03-10','actif','Domicile patient'),(25,'DreamStation 2','SN-CPAP-015','Philips Respironics','2023-04-20','actif','Domicile patient'),(26,'AirSense 11','SN-CPAP-016','ResMed','2022-11-20','actif','Domicile patient'),(27,'AirSense 11','SN-CPAP-017','ResMed','2022-12-25','actif','Domicile patient'),(28,'DreamStation 2','SN-CPAP-018','Philips Respironics','2023-06-20','actif','Domicile patient'),(29,'AirSense 11','SN-CPAP-019','ResMed','2023-07-20','actif','Domicile patient'),(30,'AirSense 11','SN-CPAP-020','ResMed','2025-05-25','actif','Domicile patient');
/*!40000 ALTER TABLE `appareil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appareil_cpap`
--

DROP TABLE IF EXISTS `appareil_cpap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appareil_cpap` (
  `id_appareil` int NOT NULL,
  `id_patient` int DEFAULT NULL COMMENT 'Patient auquel l appareil est attribué',
  `pression_initiale` decimal(4,1) DEFAULT NULL,
  `type_masque` varchar(50) DEFAULT NULL COMMENT 'nasal / facial / narinaire',
  `taille_masque` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_appareil`),
  KEY `fk_cpap_patient` (`id_patient`),
  CONSTRAINT `fk_appareil_cpap` FOREIGN KEY (`id_appareil`) REFERENCES `appareil` (`id_appareil`),
  CONSTRAINT `fk_cpap_patient` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`),
  CONSTRAINT `appareil_cpap_chk_1` CHECK ((`pression_initiale` between 4 and 25))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appareil_cpap`
--

LOCK TABLES `appareil_cpap` WRITE;
/*!40000 ALTER TABLE `appareil_cpap` DISABLE KEYS */;
INSERT INTO `appareil_cpap` VALUES (11,NULL,8.0,'nasal','M'),(12,1,9.0,'facial','L'),(13,2,10.0,'nasal','M'),(14,NULL,10.0,'facial','M'),(15,NULL,8.5,'narinaire','M'),(16,NULL,9.5,'nasal','L'),(17,NULL,7.0,'facial','S'),(18,NULL,11.0,'nasal','M'),(19,NULL,8.0,'narinaire','S'),(20,NULL,9.0,'nasal','M'),(21,NULL,10.5,'facial','L'),(22,NULL,8.5,'nasal','M'),(23,NULL,8.0,'narinaire','S'),(24,NULL,9.0,'facial','L'),(25,NULL,10.0,'facial','M'),(26,NULL,10.0,'facial','XL'),(27,NULL,11.0,'facial','L'),(28,NULL,8.0,'nasal','M'),(29,NULL,9.0,'nasal','M'),(30,NULL,7.5,'narinaire','S');
/*!40000 ALTER TABLE `appareil_cpap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appareil_psg`
--

DROP TABLE IF EXISTS `appareil_psg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appareil_psg` (
  `id_appareil` int NOT NULL,
  `version_firmware` varchar(50) DEFAULT NULL,
  `type_montage` varchar(50) DEFAULT NULL COMMENT 'complet / ambulatoire',
  PRIMARY KEY (`id_appareil`),
  CONSTRAINT `fk_appareil_psg` FOREIGN KEY (`id_appareil`) REFERENCES `appareil` (`id_appareil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appareil_psg`
--

LOCK TABLES `appareil_psg` WRITE;
/*!40000 ALTER TABLE `appareil_psg` DISABLE KEYS */;
INSERT INTO `appareil_psg` VALUES (1,'4.2.1','complet'),(2,'4.2.1','complet'),(3,'4.2.3','complet'),(4,'3.1.0','ambulatoire'),(5,'3.1.0','ambulatoire'),(6,'4.3.0','complet'),(7,'2.5.1','complet'),(8,'2.5.1','complet'),(9,'3.2.0','ambulatoire'),(10,'4.3.1','complet');
/*!40000 ALTER TABLE `appareil_psg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bilan_mensuel_cpap`
--

DROP TABLE IF EXISTS `bilan_mensuel_cpap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bilan_mensuel_cpap` (
  `id_bilan` int NOT NULL AUTO_INCREMENT,
  `id_appareil` int NOT NULL,
  `annee` int NOT NULL,
  `mois` int NOT NULL,
  `duree_moy_h` decimal(4,2) DEFAULT NULL,
  `compliance_pct` decimal(5,2) DEFAULT NULL,
  `iah_residuel_moy` decimal(5,2) DEFAULT NULL,
  `fuites_moy` decimal(6,2) DEFAULT NULL,
  `nb_jours_utilises` int DEFAULT NULL,
  `nb_jours_non_utilises` int DEFAULT NULL,
  PRIMARY KEY (`id_bilan`),
  UNIQUE KEY `id_appareil` (`id_appareil`,`annee`,`mois`),
  KEY `idx_bilan_appareil_date` (`id_appareil`,`annee`,`mois`),
  CONSTRAINT `fk_bilan_appareil` FOREIGN KEY (`id_appareil`) REFERENCES `appareil_cpap` (`id_appareil`),
  CONSTRAINT `bilan_mensuel_cpap_chk_1` CHECK ((`annee` >= 2000)),
  CONSTRAINT `bilan_mensuel_cpap_chk_2` CHECK ((`mois` between 1 and 12)),
  CONSTRAINT `bilan_mensuel_cpap_chk_3` CHECK ((`compliance_pct` between 0 and 100)),
  CONSTRAINT `bilan_mensuel_cpap_chk_4` CHECK ((`nb_jours_utilises` >= 0)),
  CONSTRAINT `bilan_mensuel_cpap_chk_5` CHECK ((`nb_jours_non_utilises` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bilan_mensuel_cpap`
--

LOCK TABLES `bilan_mensuel_cpap` WRITE;
/*!40000 ALTER TABLE `bilan_mensuel_cpap` DISABLE KEYS */;
INSERT INTO `bilan_mensuel_cpap` VALUES (1,12,2022,4,6.30,86.00,3.00,19.50,26,4),(2,12,2022,5,6.50,88.00,2.80,18.90,27,4),(3,12,2023,3,6.80,90.00,2.50,17.20,28,3),(4,12,2024,3,7.00,92.00,2.30,16.50,29,2),(5,12,2025,3,7.10,93.00,2.10,16.00,29,2),(6,12,2026,3,7.00,92.00,2.20,16.30,28,3),(12,13,2022,4,2.10,35.00,8.90,33.00,11,19),(13,13,2023,3,2.40,38.00,9.50,34.50,12,19),(14,13,2024,3,2.00,32.00,10.10,36.00,10,21),(15,13,2025,3,1.80,28.00,11.20,38.50,9,22),(16,13,2026,3,1.60,25.00,12.00,40.00,8,23);
/*!40000 ALTER TABLE `bilan_mensuel_cpap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comorbidite`
--

DROP TABLE IF EXISTS `comorbidite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comorbidite` (
  `id_comorbidite` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `categorie` varchar(50) DEFAULT NULL COMMENT 'cardiovasculaire / métabolique / respiratoire / psychiatrique / autre',
  PRIMARY KEY (`id_comorbidite`),
  UNIQUE KEY `libelle` (`libelle`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comorbidite`
--

LOCK TABLES `comorbidite` WRITE;
/*!40000 ALTER TABLE `comorbidite` DISABLE KEYS */;
INSERT INTO `comorbidite` VALUES (1,'Hypertension artérielle (HTA)','cardiovasculaire'),(2,'Diabète de type 2','métabolique'),(3,'Obésité','métabolique'),(4,'Insuffisance cardiaque','cardiovasculaire'),(5,'Fibrillation auriculaire','cardiovasculaire'),(6,'BPCO','respiratoire'),(7,'Asthme','respiratoire'),(8,'Hypothyroïdie','métabolique'),(9,'Dépression','psychiatrique'),(10,'Anxiété','psychiatrique'),(11,'Reflux gastro-oesophagien (RGO)','autre'),(12,'Syndrome métabolique','métabolique'),(13,'Insuffisance rénale chronique','autre'),(14,'Dyslipidémie','métabolique'),(15,'Accident vasculaire cérébral (AVC)','cardiovasculaire');
/*!40000 ALTER TABLE `comorbidite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultation` (
  `id_consultation` int NOT NULL AUTO_INCREMENT,
  `id_patient` int NOT NULL,
  `id_medecin` int NOT NULL,
  `date_consultation` date NOT NULL,
  `motif` varchar(255) DEFAULT NULL,
  `compte_rendu` text,
  PRIMARY KEY (`id_consultation`),
  KEY `fk_consul_medecin` (`id_medecin`),
  KEY `idx_consul_patient` (`id_patient`,`date_consultation`),
  CONSTRAINT `fk_consul_medecin` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_personnel`),
  CONSTRAINT `fk_consul_patient` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation`
--

LOCK TABLES `consultation` WRITE;
/*!40000 ALTER TABLE `consultation` DISABLE KEYS */;
INSERT INTO `consultation` VALUES (1,1,1,'2022-02-10','Suspicion SAHOS : ronflements, somnolence diurne, fatigue','Symptomatologie évocatrice de SAHOS. Prescription d’une polysomnographie complète.'),(2,2,1,'2022-03-02','Ronflements sévères, pauses respiratoires rapportées, fatigue extrême','Suspicion SAHOS sévère. Prescription PSG.'),(3,2,1,'2024-03-12','Somnolence sévère, dyspnée d’effort, observance CPAP très faible','Aggravation SAHOS + BPCO. CPAP utilisée < 2h/j. Risque respiratoire accru.'),(4,2,1,'2027-06-18','Aggravation dyspnée, somnolence extrême, céphalées matinales, CPAP non utilisée','Patient en insuffisance respiratoire chronique probable. Saturation instable. Recommandation d’oxygénothérapie nocturne. Surveillance rapprochée.'),(5,2,1,'2027-11-04','Exacerbation BPCO, toux productive, désaturation nocturne','Exacerbation sévère BPCO. CPAP abandonnée. Risque vital engagé. Orientation pneumologie.'),(6,2,1,'2028-02-22','Fatigue extrême, dyspnée au repos, épisodes de confusion','Hypercapnie probable. Dégradation majeure. Discussion hospitalisation. Patient refuse pour le moment.'),(7,2,1,'2028-05-09','Perte de poids, faiblesse, dyspnée permanente','État général très altéré. Saturation 86% au repos. CPAP non utilisée depuis plusieurs mois. Pronostic sombre.'),(8,2,1,'2025-10-08','Exacerbation BPCO, désaturation nocturne, CPAP abandonnée','État respiratoire très préoccupant. Hypercapnie probable. Recommandation hospitalisation.'),(9,2,1,'2026-03-22','Dyspnée au repos, confusion, saturation 82% au repos','Insuffisance respiratoire aiguë imminente. Orientation urgence. Pronostic vital engagé.');
/*!40000 ALTER TABLE `consultation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deces_patient`
--

DROP TABLE IF EXISTS `deces_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deces_patient` (
  `id_patient` int NOT NULL,
  `date_deces` date NOT NULL,
  `cause_principale` varchar(255) NOT NULL,
  `cause_secondaire` varchar(255) DEFAULT NULL,
  `lien_apnee` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_patient`),
  CONSTRAINT `fk_deces_patient` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deces_patient`
--

LOCK TABLES `deces_patient` WRITE;
/*!40000 ALTER TABLE `deces_patient` DISABLE KEYS */;
INSERT INTO `deces_patient` VALUES (2,'2028-07-08','Insuffisance respiratoire aiguë sur BPCO stade terminal','SAHOS sévère non traité, hypercapnie chronique, hypoxies prolongées',1);
/*!40000 ALTER TABLE `deces_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evenement_respiratoire`
--

DROP TABLE IF EXISTS `evenement_respiratoire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evenement_respiratoire` (
  `id_evenement` int NOT NULL AUTO_INCREMENT,
  `id_nuit` int NOT NULL,
  `type_evenement` varchar(50) NOT NULL,
  `debut_sec` int NOT NULL,
  `fin_sec` int NOT NULL,
  `duree_sec` int GENERATED ALWAYS AS ((`fin_sec` - `debut_sec`)) STORED,
  `severite` varchar(20) DEFAULT NULL,
  `decibels` decimal(5,2) DEFAULT NULL,
  `spo2_avant` decimal(5,2) DEFAULT NULL,
  `spo2_apres` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_evenement`),
  KEY `idx_evenement_nuit` (`id_nuit`),
  KEY `idx_evenement_type` (`type_evenement`),
  CONSTRAINT `fk_evenement_nuit` FOREIGN KEY (`id_nuit`) REFERENCES `nuit_etude` (`id_nuit`),
  CONSTRAINT `evenement_respiratoire_chk_1` CHECK ((`type_evenement` in (_utf8mb4'apnée obstructive',_utf8mb4'apnée centrale',_utf8mb4'hypopnée',_utf8mb4'RERA'))),
  CONSTRAINT `evenement_respiratoire_chk_2` CHECK ((`debut_sec` >= 0)),
  CONSTRAINT `evenement_respiratoire_chk_3` CHECK ((`severite` in (_utf8mb4'légère',_utf8mb4'modérée',_utf8mb4'sévère'))),
  CONSTRAINT `evenement_respiratoire_chk_4` CHECK ((`spo2_avant` between 0 and 100)),
  CONSTRAINT `evenement_respiratoire_chk_5` CHECK ((`spo2_apres` between 0 and 100)),
  CONSTRAINT `evenement_respiratoire_chk_6` CHECK ((`fin_sec` > `debut_sec`))
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evenement_respiratoire`
--

LOCK TABLES `evenement_respiratoire` WRITE;
/*!40000 ALTER TABLE `evenement_respiratoire` DISABLE KEYS */;
INSERT INTO `evenement_respiratoire` (`id_evenement`, `id_nuit`, `type_evenement`, `debut_sec`, `fin_sec`, `severite`, `decibels`, `spo2_avant`, `spo2_apres`) VALUES (1,1,'apnée obstructive',120,140,'sévère',78.20,93.00,88.50),(2,1,'hypopnée',310,326,'modérée',62.10,94.20,91.30),(3,1,'RERA',455,468,'légère',55.00,95.00,94.20),(4,1,'apnée obstructive',612,638,'sévère',80.40,92.50,87.80),(5,1,'hypopnée',720,736,'modérée',60.30,94.10,91.50),(6,1,'apnée centrale',810,832,'modérée',58.70,93.80,89.60),(7,1,'apnée obstructive',905,930,'sévère',81.00,92.00,86.90),(8,1,'hypopnée',1012,1028,'modérée',61.50,94.30,91.80),(9,1,'RERA',1120,1134,'légère',54.20,95.10,94.40),(10,1,'apnée obstructive',1240,1266,'sévère',79.80,91.90,86.20),(11,1,'hypopnée',1320,1336,'modérée',60.10,94.00,91.40),(12,1,'apnée obstructive',1405,1430,'sévère',82.30,92.30,87.10),(13,1,'RERA',1500,1513,'légère',53.80,95.20,94.60),(14,1,'hypopnée',1602,1618,'modérée',61.90,94.30,92.00),(15,1,'apnée centrale',1700,1722,'modérée',59.40,93.70,89.20),(16,1,'apnée obstructive',1788,1814,'sévère',83.10,92.10,86.50),(17,1,'hypopnée',1850,1866,'modérée',60.70,94.40,91.90),(18,1,'apnée obstructive',1940,1966,'sévère',81.50,91.80,86.00),(19,1,'RERA',2020,2033,'légère',54.50,95.30,94.70),(20,1,'hypopnée',2105,2121,'modérée',61.20,94.20,91.60),(21,1,'apnée obstructive',2200,2226,'sévère',82.00,91.70,86.10),(22,1,'hypopnée',2300,2316,'modérée',60.40,94.30,92.10),(23,1,'RERA',2380,2393,'légère',53.90,95.40,94.80),(24,1,'apnée centrale',2450,2472,'modérée',59.80,93.60,89.00),(25,1,'hypopnée',2550,2566,'modérée',61.70,94.10,91.70),(26,1,'apnée obstructive',2620,2646,'sévère',83.40,92.00,86.30),(27,1,'hypopnée',2700,2716,'modérée',60.90,94.40,92.20),(28,1,'apnée obstructive',2800,2826,'sévère',82.70,91.60,85.90),(29,1,'RERA',2880,2893,'légère',54.30,95.30,94.60),(30,1,'hypopnée',2950,2966,'modérée',61.10,94.20,91.80),(31,1,'apnée obstructive',3050,3076,'sévère',82.90,91.80,86.00),(32,1,'hypopnée',3150,3166,'modérée',60.60,94.30,92.00),(33,1,'RERA',3240,3253,'légère',54.00,95.50,94.90),(34,1,'apnée centrale',3320,3342,'modérée',59.90,93.50,88.90),(35,1,'hypopnée',3400,3416,'modérée',61.80,94.20,91.80),(36,1,'apnée obstructive',3490,3516,'sévère',83.60,92.10,86.40),(37,1,'hypopnée',3550,3566,'modérée',60.80,94.40,92.30),(38,1,'apnée obstructive',3650,3676,'sévère',82.50,91.70,85.80),(39,1,'RERA',3740,3753,'légère',54.40,95.40,94.70),(40,1,'hypopnée',3820,3836,'modérée',61.30,94.30,91.90),(41,1,'apnée obstructive',3900,3926,'sévère',82.20,91.60,85.90),(42,1,'hypopnée',4000,4016,'modérée',60.50,94.40,92.10),(43,1,'RERA',4080,4093,'légère',53.70,95.50,94.80),(44,1,'apnée centrale',4150,4172,'modérée',59.60,93.60,89.10),(45,1,'hypopnée',4250,4266,'modérée',61.60,94.20,91.70),(46,1,'apnée obstructive',4320,4346,'sévère',83.30,92.00,86.20),(47,1,'hypopnée',4400,4416,'modérée',60.90,94.40,92.20),(48,1,'apnée obstructive',4500,4526,'sévère',82.80,91.80,86.00),(49,1,'RERA',4580,4593,'légère',54.10,95.30,94.60),(50,1,'hypopnée',4650,4666,'modérée',61.00,94.20,91.80),(51,1,'apnée obstructive',4750,4776,'sévère',82.40,91.70,86.10),(52,1,'hypopnée',4850,4866,'modérée',60.30,94.30,92.00),(53,1,'RERA',4940,4953,'légère',53.60,95.40,94.80),(54,1,'apnée centrale',5020,5042,'modérée',59.70,93.50,88.90),(55,1,'hypopnée',5100,5116,'modérée',61.50,94.10,91.60),(56,1,'apnée obstructive',5190,5216,'sévère',83.20,92.10,86.30),(57,1,'hypopnée',5250,5266,'modérée',60.70,94.40,92.20),(58,1,'apnée obstructive',5350,5376,'sévère',82.60,91.60,85.80),(59,1,'RERA',5440,5453,'légère',54.20,95.30,94.70),(60,1,'hypopnée',5520,5536,'modérée',61.20,94.30,91.90),(61,1,'apnée obstructive',5600,5626,'sévère',82.10,91.80,86.00),(62,1,'hypopnée',5700,5716,'modérée',60.40,94.40,92.10),(63,1,'RERA',5780,5793,'légère',53.90,95.50,94.90),(64,1,'apnée centrale',5850,5872,'modérée',59.50,93.60,89.00),(65,1,'hypopnée',5950,5966,'modérée',61.40,94.20,91.70),(66,1,'apnée obstructive',6020,6046,'sévère',83.00,92.00,86.20),(67,1,'hypopnée',6100,6116,'modérée',60.80,94.40,92.30),(68,1,'apnée obstructive',6200,6226,'sévère',82.70,91.70,85.90),(69,1,'RERA',6280,6293,'légère',54.30,95.40,94.70),(70,1,'hypopnée',6350,6366,'modérée',61.10,94.30,91.80),(71,1,'apnée obstructive',6450,6476,'sévère',82.90,91.60,85.80),(72,1,'hypopnée',6550,6566,'modérée',60.60,94.40,92.20),(73,1,'RERA',6640,6653,'légère',53.80,95.50,94.80),(74,1,'apnée centrale',6720,6742,'modérée',59.80,93.50,88.80),(75,1,'hypopnée',6800,6816,'modérée',61.70,94.20,91.70),(76,1,'apnée obstructive',6890,6916,'sévère',83.50,92.10,86.40),(77,1,'hypopnée',6950,6966,'modérée',60.90,94.40,92.30),(78,1,'apnée obstructive',7050,7076,'sévère',82.80,91.70,85.90),(79,1,'RERA',7140,7153,'légère',54.10,95.30,94.60),(80,1,'hypopnée',7220,7236,'modérée',61.00,94.30,91.90),(81,1,'apnée obstructive',7300,7326,'sévère',82.30,91.80,86.10),(82,1,'hypopnée',7400,7416,'modérée',60.20,94.40,92.00),(83,1,'RERA',7480,7493,'légère',53.60,95.40,94.80),(84,1,'apnée centrale',7550,7572,'modérée',59.60,93.60,89.10),(85,1,'hypopnée',7650,7666,'modérée',61.50,94.20,91.60),(86,1,'apnée obstructive',7720,7746,'sévère',83.10,92.00,86.30),(87,1,'hypopnée',7800,7816,'modérée',60.70,94.40,92.20),(88,1,'apnée obstructive',7900,7926,'sévère',82.50,91.60,85.80),(89,1,'RERA',7980,7993,'légère',54.00,95.30,94.70),(90,1,'hypopnée',8050,8066,'modérée',61.30,94.30,91.90),(91,1,'apnée obstructive',8150,8176,'sévère',82.70,91.70,86.00),(92,1,'hypopnée',8250,8266,'modérée',60.50,94.40,92.10),(93,1,'RERA',8340,8353,'légère',53.90,95.50,94.90),(94,1,'apnée centrale',8420,8442,'modérée',59.70,93.50,88.90),(95,1,'hypopnée',8500,8516,'modérée',61.60,94.20,91.70),(96,1,'apnée obstructive',8590,8616,'sévère',83.40,92.10,86.40),(97,1,'hypopnée',8650,8666,'modérée',60.80,94.40,92.20),(98,1,'apnée obstructive',8750,8776,'sévère',82.90,91.70,85.90),(99,1,'RERA',8840,8853,'légère',54.20,95.40,94.70),(100,1,'hypopnée',8920,8936,'modérée',61.10,94.30,91.80),(101,2,'apnée obstructive',120,165,'sévère',82.50,89.00,78.20),(102,2,'hypopnée',210,245,'modérée',68.20,90.50,84.10),(103,2,'apnée centrale',300,338,'modérée',60.10,88.20,79.50),(104,2,'apnée obstructive',410,462,'sévère',85.40,87.90,75.00),(105,2,'RERA',500,518,'légère',55.00,91.00,89.50),(106,2,'hypopnée',560,592,'modérée',67.80,90.20,83.80),(107,2,'apnée obstructive',630,678,'sévère',86.10,88.00,76.20),(108,2,'apnée centrale',710,745,'modérée',61.40,87.50,78.90),(109,2,'hypopnée',780,812,'modérée',66.90,90.10,84.00),(110,2,'apnée obstructive',840,892,'sévère',88.00,87.00,74.80),(111,2,'RERA',930,948,'légère',54.20,91.50,89.80),(112,2,'apnée obstructive',980,1030,'sévère',89.10,86.80,73.90),(113,2,'apnée obstructive',1080,1132,'sévère',87.50,87.20,74.50),(114,2,'hypopnée',1160,1192,'modérée',67.00,90.00,84.20),(115,2,'apnée centrale',1220,1258,'modérée',60.80,88.10,79.00),(116,2,'apnée obstructive',1300,1355,'sévère',90.20,86.50,72.80),(117,2,'RERA',1380,1398,'légère',55.30,91.20,89.70),(118,2,'hypopnée',1420,1452,'modérée',66.50,90.30,84.10),(119,2,'apnée obstructive',1480,1538,'sévère',91.00,86.00,72.00),(120,2,'apnée centrale',1560,1598,'modérée',61.00,87.80,78.50),(121,2,'hypopnée',1620,1652,'modérée',67.20,90.40,84.30),(122,2,'apnée obstructive',1680,1735,'sévère',92.10,85.90,71.80),(123,2,'RERA',1760,1778,'légère',54.80,91.40,89.60),(124,2,'apnée obstructive',1800,1856,'sévère',89.80,86.20,73.00),(125,2,'apnée obstructive',1080,1132,'sévère',87.50,87.20,74.50),(126,2,'hypopnée',1160,1192,'modérée',67.00,90.00,84.20),(127,2,'apnée centrale',1220,1258,'modérée',60.80,88.10,79.00),(128,2,'apnée obstructive',1300,1355,'sévère',90.20,86.50,72.80),(129,2,'RERA',1380,1398,'légère',55.30,91.20,89.70),(130,2,'hypopnée',1420,1452,'modérée',66.50,90.30,84.10),(131,2,'apnée obstructive',1480,1538,'sévère',91.00,86.00,72.00),(132,2,'apnée centrale',1560,1598,'modérée',61.00,87.80,78.50),(133,2,'hypopnée',1620,1652,'modérée',67.20,90.40,84.30),(134,2,'apnée obstructive',1680,1735,'sévère',92.10,85.90,71.80),(135,2,'RERA',1760,1778,'légère',54.80,91.40,89.60),(136,2,'apnée obstructive',1800,1856,'sévère',89.80,86.20,73.00),(137,2,'apnée obstructive',2660,2718,'sévère',92.50,85.40,70.60),(138,2,'hypopnée',2740,2772,'modérée',66.90,90.20,84.00),(139,2,'apnée centrale',2800,2838,'modérée',60.70,87.90,78.60),(140,2,'apnée obstructive',2860,2918,'sévère',93.20,85.10,70.20),(141,2,'RERA',2940,2958,'légère',55.00,91.30,89.70),(142,2,'hypopnée',2980,3012,'modérée',67.10,90.10,84.10),(143,2,'apnée obstructive',3040,3098,'sévère',94.00,85.00,70.00),(144,2,'apnée centrale',3120,3158,'modérée',61.30,87.80,78.40),(145,2,'hypopnée',3180,3212,'modérée',66.80,90.30,84.20),(146,2,'apnée obstructive',3240,3295,'sévère',94.50,84.80,69.80),(147,2,'RERA',3320,3338,'légère',54.70,91.40,89.80),(148,2,'apnée obstructive',3360,3418,'sévère',94.20,84.90,69.90),(149,2,'apnée obstructive',2660,2718,'sévère',92.50,85.40,70.60),(150,2,'hypopnée',2740,2772,'modérée',66.90,90.20,84.00),(151,2,'apnée centrale',2800,2838,'modérée',60.70,87.90,78.60),(152,2,'apnée obstructive',2860,2918,'sévère',93.20,85.10,70.20),(153,2,'RERA',2940,2958,'légère',55.00,91.30,89.70),(154,2,'hypopnée',2980,3012,'modérée',67.10,90.10,84.10),(155,2,'apnée obstructive',3040,3098,'sévère',94.00,85.00,70.00),(156,2,'apnée centrale',3120,3158,'modérée',61.30,87.80,78.40),(157,2,'hypopnée',3180,3212,'modérée',66.80,90.30,84.20),(158,2,'apnée obstructive',3240,3295,'sévère',94.50,84.80,69.80),(159,2,'RERA',3320,3338,'légère',54.70,91.40,89.80),(160,2,'apnée obstructive',3360,3418,'sévère',94.20,84.90,69.90),(161,2,'apnée obstructive',3440,3498,'sévère',94.10,84.70,69.70),(162,2,'hypopnée',3520,3552,'modérée',67.00,90.20,84.10),(163,2,'apnée centrale',3580,3618,'modérée',60.90,87.90,78.50),(164,2,'apnée obstructive',3640,3698,'sévère',94.80,84.60,69.50),(165,2,'RERA',3720,3738,'légère',55.10,91.30,89.70),(166,2,'hypopnée',3760,3792,'modérée',66.70,90.10,84.00),(167,2,'apnée obstructive',3820,3878,'sévère',95.20,84.50,69.40),(168,2,'apnée centrale',3900,3938,'modérée',61.10,87.80,78.40),(169,2,'hypopnée',3960,3992,'modérée',67.20,90.30,84.20),(170,2,'apnée obstructive',4020,4075,'sévère',95.60,84.30,69.20),(171,2,'RERA',4100,4118,'légère',54.80,91.40,89.80),(172,2,'apnée obstructive',4140,4198,'sévère',95.40,84.40,69.30),(173,2,'apnée obstructive',4220,4278,'sévère',95.30,84.20,69.10),(174,2,'hypopnée',4300,4332,'modérée',66.90,90.20,84.10),(175,2,'apnée centrale',4360,4398,'modérée',60.80,87.90,78.50),(176,2,'apnée obstructive',4420,4478,'sévère',95.90,84.10,69.00),(177,2,'RERA',4500,4518,'légère',55.00,91.30,89.70),(178,2,'hypopnée',4540,4572,'modérée',67.10,90.10,84.10),(179,2,'apnée obstructive',4600,4658,'sévère',96.20,84.00,68.90),(180,2,'apnée centrale',4680,4718,'modérée',61.20,87.80,78.40),(181,2,'hypopnée',4740,4772,'modérée',66.80,90.30,84.20),(182,2,'apnée obstructive',4800,4855,'sévère',96.50,83.90,68.80),(183,2,'RERA',4880,4898,'légère',54.90,91.40,89.80),(184,2,'apnée obstructive',4920,4978,'sévère',96.30,84.00,68.90),(185,2,'apnée obstructive',5000,5058,'sévère',96.10,84.10,69.00),(186,2,'hypopnée',5080,5112,'modérée',67.00,90.20,84.10),(187,2,'apnée centrale',5140,5178,'modérée',60.90,87.90,78.50),(188,2,'apnée obstructive',5200,5258,'sévère',96.80,84.00,68.80),(189,2,'RERA',5280,5298,'légère',55.10,91.30,89.70),(190,2,'hypopnée',5320,5352,'modérée',66.70,90.10,84.00),(191,2,'apnée obstructive',5380,5438,'sévère',97.00,83.90,68.70),(192,2,'apnée centrale',5460,5498,'modérée',61.10,87.80,78.40),(193,2,'hypopnée',5520,5552,'modérée',67.20,90.30,84.20),(194,2,'apnée obstructive',5580,5635,'sévère',97.30,83.80,68.60),(195,2,'RERA',5660,5678,'légère',54.80,91.40,89.80),(196,2,'apnée obstructive',5700,5758,'sévère',97.10,83.90,68.70),(197,2,'apnée obstructive',5780,5838,'sévère',97.00,84.00,68.80),(198,2,'hypopnée',5860,5892,'modérée',66.90,90.20,84.10),(199,2,'apnée centrale',5920,5958,'modérée',60.80,87.90,78.50),(200,2,'apnée obstructive',5980,6038,'sévère',97.60,83.90,68.70),(201,2,'RERA',6060,6078,'légère',55.00,91.30,89.70),(202,2,'hypopnée',6100,6132,'modérée',67.10,90.10,84.10),(203,2,'apnée obstructive',6160,6218,'sévère',97.90,83.80,68.60),(204,2,'apnée centrale',6240,6278,'modérée',61.20,87.80,78.40),(205,2,'hypopnée',6300,6332,'modérée',66.80,90.30,84.20),(206,2,'apnée obstructive',6360,6415,'sévère',98.20,83.70,68.50),(207,2,'RERA',6440,6458,'légère',54.90,91.40,89.80),(208,2,'apnée obstructive',6480,6538,'sévère',98.00,83.80,68.60),(209,2,'apnée obstructive',6560,6618,'sévère',97.80,83.90,68.70),(210,2,'hypopnée',6640,6672,'modérée',67.00,90.20,84.10),(211,2,'apnée centrale',6700,6738,'modérée',60.90,87.90,78.50),(212,2,'apnée obstructive',6760,6818,'sévère',98.40,83.80,68.60),(213,2,'RERA',6840,6858,'légère',55.10,91.30,89.70),(214,2,'hypopnée',6880,6912,'modérée',66.70,90.10,84.00),(215,2,'apnée obstructive',6940,6998,'sévère',98.70,83.70,68.50),(216,2,'apnée centrale',7020,7058,'modérée',61.10,87.80,78.40),(217,2,'hypopnée',7080,7112,'modérée',67.20,90.30,84.20),(218,2,'apnée obstructive',7140,7195,'sévère',99.00,83.60,68.40),(219,2,'RERA',7220,7238,'légère',54.80,91.40,89.80),(220,2,'apnée obstructive',7260,7318,'sévère',98.80,83.70,68.50),(221,2,'apnée obstructive',7340,7398,'sévère',98.60,83.80,68.60),(222,2,'hypopnée',7420,7452,'modérée',66.90,90.20,84.10),(223,2,'apnée centrale',7480,7518,'modérée',60.80,87.90,78.50),(224,2,'apnée obstructive',7540,7598,'sévère',99.20,83.70,68.50),(225,2,'RERA',7620,7638,'légère',55.00,91.30,89.70),(226,2,'hypopnée',7660,7692,'modérée',67.10,90.10,84.10),(227,2,'apnée obstructive',7720,7778,'sévère',99.50,83.60,68.40),(228,2,'apnée centrale',7800,7838,'modérée',61.20,87.80,78.40),(229,2,'hypopnée',7860,7892,'modérée',66.80,90.30,84.20),(230,2,'apnée obstructive',7920,7975,'sévère',99.80,83.50,68.30),(231,2,'RERA',8000,8018,'légère',54.90,91.40,89.80),(232,2,'apnée obstructive',8040,8098,'sévère',99.60,83.60,68.40),(233,3,'apnée obstructive',140,188,'sévère',88.20,86.50,72.00),(234,3,'hypopnée',220,255,'modérée',67.50,89.80,83.20),(235,3,'apnée centrale',300,338,'modérée',61.00,87.20,78.50),(236,3,'apnée obstructive',360,418,'sévère',90.50,85.90,70.80),(237,3,'RERA',450,468,'légère',55.20,90.80,89.00),(238,3,'hypopnée',500,532,'modérée',66.80,89.90,83.50),(239,3,'apnée obstructive',560,618,'sévère',91.80,85.50,70.20),(240,3,'apnée centrale',650,688,'modérée',60.70,87.00,78.00),(241,3,'hypopnée',720,752,'modérée',67.10,90.10,83.80),(242,3,'apnée obstructive',780,842,'sévère',92.40,85.20,69.80),(243,3,'RERA',870,888,'légère',54.90,91.20,89.40),(244,3,'apnée obstructive',920,978,'sévère',93.00,85.00,69.50),(245,3,'apnée obstructive',1800,1862,'sévère',95.80,84.00,68.40),(246,3,'hypopnée',1880,1912,'modérée',67.20,90.00,83.60),(247,3,'apnée centrale',1940,1978,'modérée',60.90,87.20,78.00),(248,3,'apnée obstructive',2000,2065,'sévère',96.40,83.80,68.20),(249,3,'RERA',2090,2108,'légère',55.00,91.00,89.40),(250,3,'hypopnée',2130,2162,'modérée',66.70,90.10,83.70),(251,3,'apnée obstructive',2190,2252,'sévère',96.90,83.70,68.10),(252,3,'apnée centrale',2280,2318,'modérée',61.10,87.10,77.90),(253,3,'hypopnée',2340,2372,'modérée',66.90,90.20,83.80),(254,3,'apnée obstructive',2400,2465,'sévère',97.20,83.60,68.00),(255,3,'RERA',2490,2508,'légère',54.90,91.20,89.60),(256,3,'apnée obstructive',2530,2590,'sévère',97.00,83.70,68.10),(257,3,'apnée obstructive',1800,1862,'sévère',95.80,84.00,68.40),(258,3,'hypopnée',1880,1912,'modérée',67.20,90.00,83.60),(259,3,'apnée centrale',1940,1978,'modérée',60.90,87.20,78.00),(260,3,'apnée obstructive',2000,2065,'sévère',96.40,83.80,68.20),(261,3,'RERA',2090,2108,'légère',55.00,91.00,89.40),(262,3,'hypopnée',2130,2162,'modérée',66.70,90.10,83.70),(263,3,'apnée obstructive',2190,2252,'sévère',96.90,83.70,68.10),(264,3,'apnée centrale',2280,2318,'modérée',61.10,87.10,77.90),(265,3,'hypopnée',2340,2372,'modérée',66.90,90.20,83.80),(266,3,'apnée obstructive',2400,2465,'sévère',97.20,83.60,68.00),(267,3,'RERA',2490,2508,'légère',54.90,91.20,89.60),(268,3,'apnée obstructive',2530,2590,'sévère',97.00,83.70,68.10),(269,3,'apnée obstructive',2620,2682,'sévère',97.10,83.80,68.20),(270,3,'hypopnée',2700,2732,'modérée',67.00,90.10,83.70),(271,3,'apnée centrale',2760,2798,'modérée',60.80,87.00,78.00),(272,3,'apnée obstructive',2820,2885,'sévère',97.60,83.60,68.00),(273,3,'RERA',2910,2928,'légère',55.10,91.00,89.40),(274,3,'hypopnée',2950,2982,'modérée',66.80,90.20,83.80),(275,3,'apnée obstructive',3000,3062,'sévère',98.00,83.50,67.90),(276,3,'apnée centrale',3090,3128,'modérée',61.00,87.10,78.10),(277,3,'hypopnée',3150,3182,'modérée',67.10,90.30,83.90),(278,3,'apnée obstructive',3210,3270,'sévère',98.30,83.40,67.80),(279,3,'RERA',3300,3318,'légère',54.80,91.10,89.50),(280,3,'apnée obstructive',3340,3402,'sévère',98.10,83.50,67.90),(281,3,'apnée obstructive',3430,3492,'sévère',98.00,83.60,68.00),(282,3,'hypopnée',3520,3552,'modérée',66.90,90.20,83.80),(283,3,'apnée centrale',3580,3618,'modérée',60.70,87.00,78.00),(284,3,'apnée obstructive',3640,3705,'sévère',98.50,83.40,67.80),(285,3,'RERA',3730,3748,'légère',55.00,91.00,89.40),(286,3,'hypopnée',3770,3802,'modérée',66.80,90.10,83.70),(287,3,'apnée obstructive',3830,3892,'sévère',98.80,83.30,67.70),(288,3,'apnée centrale',3920,3958,'modérée',61.10,87.10,78.10),(289,3,'hypopnée',3980,4012,'modérée',67.00,90.30,83.90),(290,3,'apnée obstructive',4040,4100,'sévère',99.00,83.20,67.60),(291,3,'RERA',4130,4148,'légère',54.90,91.20,89.60),(292,3,'apnée obstructive',4170,4232,'sévère',98.90,83.30,67.70),(293,3,'apnée obstructive',4220,4278,'sévère',95.30,84.20,69.10),(294,3,'hypopnée',4300,4332,'modérée',66.90,90.20,84.10),(295,3,'apnée centrale',4360,4398,'modérée',60.80,87.90,78.50),(296,3,'apnée obstructive',4420,4478,'sévère',95.90,84.10,69.00),(297,3,'RERA',4500,4518,'légère',55.00,91.30,89.70),(298,3,'hypopnée',4540,4572,'modérée',67.10,90.10,84.10),(299,3,'apnée obstructive',4600,4658,'sévère',96.20,84.00,68.90),(300,3,'apnée centrale',4680,4718,'modérée',61.20,87.80,78.40),(301,3,'hypopnée',4740,4772,'modérée',66.80,90.30,84.20),(302,3,'apnée obstructive',4800,4855,'sévère',96.50,83.90,68.80),(303,3,'RERA',4880,4898,'légère',54.90,91.40,89.80),(304,3,'apnée obstructive',4920,4978,'sévère',96.30,84.00,68.90),(305,3,'apnée obstructive',5000,5058,'sévère',96.10,84.10,69.00),(306,3,'hypopnée',5080,5112,'modérée',67.00,90.20,84.10),(307,3,'apnée centrale',5140,5178,'modérée',60.90,87.90,78.50),(308,3,'apnée obstructive',5200,5258,'sévère',96.80,84.00,68.80),(309,3,'RERA',5280,5298,'légère',55.10,91.30,89.70),(310,3,'hypopnée',5320,5352,'modérée',66.70,90.10,84.00),(311,3,'apnée obstructive',5380,5438,'sévère',97.00,83.90,68.70),(312,3,'apnée centrale',5460,5498,'modérée',61.10,87.80,78.40),(313,3,'hypopnée',5520,5552,'modérée',67.20,90.30,84.20),(314,3,'apnée obstructive',5580,5635,'sévère',97.30,83.80,68.60),(315,3,'RERA',5660,5678,'légère',54.80,91.40,89.80),(316,3,'apnée obstructive',5700,5758,'sévère',97.10,83.90,68.70),(317,3,'apnée obstructive',5780,5838,'sévère',97.00,84.00,68.80),(318,3,'hypopnée',5860,5892,'modérée',66.90,90.20,84.10),(319,3,'apnée centrale',5920,5958,'modérée',60.80,87.90,78.50),(320,3,'apnée obstructive',5980,6038,'sévère',97.60,83.90,68.70),(321,3,'RERA',6060,6078,'légère',55.00,91.30,89.70),(322,3,'hypopnée',6100,6132,'modérée',67.10,90.10,84.10),(323,3,'apnée obstructive',6160,6218,'sévère',97.90,83.80,68.60),(324,3,'apnée centrale',6240,6278,'modérée',61.20,87.80,78.40),(325,3,'hypopnée',6300,6332,'modérée',66.80,90.30,84.20),(326,3,'apnée obstructive',6360,6415,'sévère',98.20,83.70,68.50),(327,3,'RERA',6440,6458,'légère',54.90,91.40,89.80),(328,3,'apnée obstructive',6480,6538,'sévère',98.00,83.80,68.60),(329,3,'apnée obstructive',6560,6618,'sévère',97.80,83.90,68.70),(330,3,'hypopnée',6640,6672,'modérée',67.00,90.20,84.10),(331,3,'apnée centrale',6700,6738,'modérée',60.90,87.90,78.50),(332,3,'apnée obstructive',6760,6818,'sévère',98.40,83.80,68.60),(333,3,'RERA',6840,6858,'légère',55.10,91.30,89.70),(334,3,'hypopnée',6880,6912,'modérée',66.70,90.10,84.00),(335,3,'apnée obstructive',6940,6998,'sévère',98.70,83.70,68.50),(336,3,'apnée centrale',7020,7058,'modérée',61.10,87.80,78.40),(337,3,'hypopnée',7080,7112,'modérée',67.20,90.30,84.20),(338,3,'apnée obstructive',7140,7195,'sévère',99.00,83.60,68.40),(339,3,'RERA',7220,7238,'légère',54.80,91.40,89.80),(340,3,'apnée obstructive',7260,7318,'sévère',98.80,83.70,68.50),(341,3,'apnée obstructive',7340,7398,'sévère',98.60,83.80,68.60),(342,3,'hypopnée',7420,7452,'modérée',66.90,90.20,84.10),(343,3,'apnée centrale',7480,7518,'modérée',60.80,87.90,78.50),(344,3,'apnée obstructive',7540,7598,'sévère',99.20,83.70,68.50),(345,3,'RERA',7620,7638,'légère',55.00,91.30,89.70),(346,3,'hypopnée',7660,7692,'modérée',67.10,90.10,84.10),(347,3,'apnée obstructive',7720,7778,'sévère',99.50,83.60,68.40),(348,3,'apnée centrale',7800,7838,'modérée',61.20,87.80,78.40),(349,3,'hypopnée',7860,7892,'modérée',66.80,90.30,84.20),(350,3,'apnée obstructive',7920,7975,'sévère',99.80,83.50,68.30),(351,3,'RERA',8000,8018,'légère',54.90,91.40,89.80),(352,3,'apnée obstructive',8040,8098,'sévère',99.60,83.60,68.40);
/*!40000 ALTER TABLE `evenement_respiratoire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infirmiere`
--

DROP TABLE IF EXISTS `infirmiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infirmiere` (
  `id_personnel` int NOT NULL,
  `diplome` varchar(100) DEFAULT NULL,
  `experience_ans` int DEFAULT NULL,
  PRIMARY KEY (`id_personnel`),
  CONSTRAINT `fk_infirmiere_personnel` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id_personnel`),
  CONSTRAINT `infirmiere_chk_1` CHECK ((`experience_ans` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infirmiere`
--

LOCK TABLES `infirmiere` WRITE;
/*!40000 ALTER TABLE `infirmiere` DISABLE KEYS */;
INSERT INTO `infirmiere` VALUES (8,'IDE',8),(9,'IDE',7),(10,'IDE',6),(11,'IDE',5),(12,'IDE',4),(13,'IDE',3),(14,'IDE',2),(15,'IDE',1);
/*!40000 ALTER TABLE `infirmiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medecin` (
  `id_personnel` int NOT NULL,
  `specialite` varchar(100) NOT NULL,
  `numero_rpps` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_personnel`),
  UNIQUE KEY `numero_rpps` (`numero_rpps`),
  CONSTRAINT `fk_medecin_personnel` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id_personnel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medecin`
--

LOCK TABLES `medecin` WRITE;
/*!40000 ALTER TABLE `medecin` DISABLE KEYS */;
INSERT INTO `medecin` VALUES (1,'Médecine du sommeil','RPPS10011001'),(2,'Médecine du sommeil','RPPS10022002'),(3,'Médecine du sommeil','RPPS10033003'),(4,'Médecine du sommeil','RPPS10044004'),(5,'Pneumologie','RPPS10055005'),(6,'Cardiologie','RPPS10066006'),(7,'Endocrinologie','RPPS10077007');
/*!40000 ALTER TABLE `medecin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nuit_etude`
--

DROP TABLE IF EXISTS `nuit_etude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nuit_etude` (
  `id_nuit` int NOT NULL AUTO_INCREMENT,
  `id_patient` int NOT NULL,
  `id_superviseur` int NOT NULL COMMENT 'Infirmière superviseure',
  `id_medecin` int NOT NULL,
  `id_appareil_psg` int NOT NULL,
  `date_nuit` date NOT NULL,
  `type_etude` varchar(50) NOT NULL,
  `notes_techniques` text,
  PRIMARY KEY (`id_nuit`),
  KEY `fk_nuit_superviseur` (`id_superviseur`),
  KEY `fk_nuit_medecin` (`id_medecin`),
  KEY `fk_nuit_appareil_psg` (`id_appareil_psg`),
  KEY `idx_nuit_patient` (`id_patient`,`date_nuit`),
  CONSTRAINT `fk_nuit_appareil_psg` FOREIGN KEY (`id_appareil_psg`) REFERENCES `appareil_psg` (`id_appareil`),
  CONSTRAINT `fk_nuit_medecin` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_personnel`),
  CONSTRAINT `fk_nuit_patient` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`),
  CONSTRAINT `fk_nuit_superviseur` FOREIGN KEY (`id_superviseur`) REFERENCES `infirmiere` (`id_personnel`),
  CONSTRAINT `nuit_etude_chk_1` CHECK ((`type_etude` in (_utf8mb4'polysomnographie',_utf8mb4'polygraphie',_utf8mb4'titration CPAP')))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nuit_etude`
--

LOCK TABLES `nuit_etude` WRITE;
/*!40000 ALTER TABLE `nuit_etude` DISABLE KEYS */;
INSERT INTO `nuit_etude` VALUES (1,1,9,1,3,'2022-03-05','polysomnographie','Enregistrement complet, bonne tolérance, quelques artefacts mineurs sur les canaux thoraciques.'),(2,2,10,1,4,'2022-03-18','polysomnographie','Enregistrement difficile, nombreux artefacts liés aux mouvements.'),(3,2,11,1,5,'2026-07-03','polysomnographie','Enregistrement difficile. Masque CPAP mal toléré. Nombreux artefacts et micro-éveils.');
/*!40000 ALTER TABLE `nuit_etude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id_patient` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_naissance` date NOT NULL,
  `sexe` char(1) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `numero_secu` varchar(20) DEFAULT NULL,
  `imc_initial` decimal(4,1) DEFAULT NULL,
  `fumeur` tinyint(1) DEFAULT '0',
  `pa_tabac` int DEFAULT NULL COMMENT 'Paquets-années au diagnostic',
  `consommation_alcool` varchar(50) DEFAULT NULL COMMENT 'aucune / occasionnelle / régulière / excessive',
  `profession` varchar(100) DEFAULT NULL,
  `niveau_activite` varchar(50) DEFAULT NULL COMMENT 'sédentaire / modéré / actif',
  `date_creation_dpi` date NOT NULL DEFAULT (curdate()),
  `actif` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_patient`),
  UNIQUE KEY `numero_secu` (`numero_secu`),
  CONSTRAINT `patient_chk_1` CHECK ((`sexe` in (_utf8mb4'M',_utf8mb4'F')))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Durand','Philippe','1970-04-12','M','12 rue des Lauriers, 13200 Arles','0612458799','philippe.durand@example.com','1700420123456',31.2,1,15,'occasionnelle','chauffeur routier','sédentaire','2026-06-15',1),(2,'Martel','Jean','1968-09-22','M','4 impasse des Peupliers, 13200 Arles','0678124599','jean.martel@example.com','1680922123456',34.8,1,32,'régulière','chauffeur poids lourd','sédentaire','2026-06-15',0);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_comorbidite`
--

DROP TABLE IF EXISTS `patient_comorbidite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_comorbidite` (
  `id_patient` int NOT NULL,
  `id_comorbidite` int NOT NULL,
  `date_diagnostic` date DEFAULT NULL,
  PRIMARY KEY (`id_patient`,`id_comorbidite`),
  KEY `fk_pc_comorbidite` (`id_comorbidite`),
  CONSTRAINT `fk_pc_comorbidite` FOREIGN KEY (`id_comorbidite`) REFERENCES `comorbidite` (`id_comorbidite`),
  CONSTRAINT `fk_pc_patient` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_comorbidite`
--

LOCK TABLES `patient_comorbidite` WRITE;
/*!40000 ALTER TABLE `patient_comorbidite` DISABLE KEYS */;
INSERT INTO `patient_comorbidite` VALUES (1,1,'2019-03-15'),(1,2,'2020-11-20'),(1,3,'2018-06-01'),(2,1,'2016-09-12'),(2,3,'2015-04-01'),(2,6,'2018-02-20');
/*!40000 ALTER TABLE `patient_comorbidite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel` (
  `id_personnel` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_embauche` date DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `actif` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_personnel`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` VALUES (1,'Estri','Thomas','2015-09-01','0611223344','thomas.estrii@clinique-sommeil-arles.fr',1),(2,'Faure','Isabelle','2017-03-15','0622334455','isabelle.faure@clinique-sommeil-arles.fr',1),(3,'Nakamura','Kenji','2019-06-01','0633445566','kenji.nakamura@clinique-sommeil-arles.fr',1),(4,'Bencherif','Samia','2020-01-10','0644556677','samia.bencherif@clinique-sommeil-arles.fr',1),(5,'Garnier','Laurent','2016-04-01','0655667788','laurent.garnier@clinique-sommeil-arles.fr',1),(6,'Moreau','Claire','2018-09-01','0666778899','claire.moreau@clinique-sommeil-arles.fr',1),(7,'Dupuis','Marc','2021-02-01','0677889900','marc.dupuis@clinique-sommeil-arles.fr',1),(8,'Roux','Nathalie','2016-01-01','0688990011','nathalie.roux@clinique-sommeil-arles.fr',1),(9,'Martin','Sophie','2017-06-01','0699001122','sophie.martin@clinique-sommeil-arles.fr',1),(10,'Bernard','Céline','2018-03-01','0611223355','celine.bernard@clinique-sommeil-arles.fr',1),(11,'Petit','Aurélie','2019-09-01','0622334466','aurelie.petit@clinique-sommeil-arles.fr',1),(12,'Leroy','Marine','2020-04-01','0633445577','marine.leroy@clinique-sommeil-arles.fr',1),(13,'Simon','Julie','2021-01-01','0644556688','julie.simon@clinique-sommeil-arles.fr',1),(14,'Michel','Fatima','2022-06-01','0655667799','fatima.michel@clinique-sommeil-arles.fr',1),(15,'Lefebvre','Amandine','2023-01-01','0666778800','amandine.lefebvre@clinique-sommeil-arles.fr',1);
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription_nuit`
--

DROP TABLE IF EXISTS `prescription_nuit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_nuit` (
  `id_prescription` int NOT NULL AUTO_INCREMENT,
  `id_consultation` int NOT NULL,
  `id_nuit` int DEFAULT NULL,
  `motif_prescription` varchar(255) DEFAULT NULL,
  `urgence` varchar(20) NOT NULL DEFAULT 'normale',
  PRIMARY KEY (`id_prescription`),
  KEY `fk_prescription_consul` (`id_consultation`),
  KEY `fk_prescription_nuit` (`id_nuit`),
  CONSTRAINT `fk_prescription_consul` FOREIGN KEY (`id_consultation`) REFERENCES `consultation` (`id_consultation`),
  CONSTRAINT `fk_prescription_nuit` FOREIGN KEY (`id_nuit`) REFERENCES `nuit_etude` (`id_nuit`),
  CONSTRAINT `prescription_nuit_chk_1` CHECK ((`urgence` in (_utf8mb4'normale',_utf8mb4'urgente')))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_nuit`
--

LOCK TABLES `prescription_nuit` WRITE;
/*!40000 ALTER TABLE `prescription_nuit` DISABLE KEYS */;
INSERT INTO `prescription_nuit` VALUES (1,1,1,'Polysomnographie pour suspicion SAHOS modéré à sévère','normale'),(2,2,2,'PSG complète pour suspicion SAHOS sévère','normale'),(3,3,3,'PSG de contrôle — suspicion aggravation SAHOS + mauvaise observance CPAP','urgente');
/*!40000 ALTER TABLE `prescription_nuit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultat_nuit`
--

DROP TABLE IF EXISTS `resultat_nuit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultat_nuit` (
  `id_resultat` int NOT NULL AUTO_INCREMENT,
  `id_nuit` int NOT NULL,
  `id_medecin_validateur` int NOT NULL,
  `date_validation` date NOT NULL,
  `iah` decimal(5,2) DEFAULT NULL COMMENT 'Index Apnée-Hypopnée — événements/heure',
  `spo2_min` decimal(5,2) DEFAULT NULL,
  `spo2_moy` decimal(5,2) DEFAULT NULL,
  `spo2_mediane` decimal(5,2) DEFAULT NULL,
  `nb_apnees` int DEFAULT NULL,
  `nb_hypopnees` int DEFAULT NULL,
  `nb_rera` int DEFAULT NULL,
  `nb_microeveils` int DEFAULT NULL,
  `duree_sommeil_min` int DEFAULT NULL,
  `duree_hypoxie_min` int DEFAULT NULL,
  `position_dominante` varchar(20) DEFAULT NULL,
  `duree_apnee_moy_sec` int DEFAULT NULL,
  `duree_apnee_max_sec` int DEFAULT NULL,
  `decibels_max` decimal(5,2) DEFAULT NULL,
  `decibels_moy` decimal(5,2) DEFAULT NULL,
  `nb_ronflements_forts` int DEFAULT NULL,
  `severite_iah` varchar(20) GENERATED ALWAYS AS ((case when (`iah` < 5) then _utf8mb4'normal' when (`iah` < 15) then _utf8mb4'léger' when (`iah` < 30) then _utf8mb4'modéré' else _utf8mb4'sévère' end)) STORED,
  `commentaire_medical` text,
  PRIMARY KEY (`id_resultat`),
  UNIQUE KEY `id_nuit` (`id_nuit`),
  KEY `fk_resultat_medecin` (`id_medecin_validateur`),
  KEY `idx_resultat_iah` (`iah`),
  CONSTRAINT `fk_resultat_medecin` FOREIGN KEY (`id_medecin_validateur`) REFERENCES `medecin` (`id_personnel`),
  CONSTRAINT `fk_resultat_nuit` FOREIGN KEY (`id_nuit`) REFERENCES `nuit_etude` (`id_nuit`),
  CONSTRAINT `resultat_nuit_chk_1` CHECK ((`iah` >= 0)),
  CONSTRAINT `resultat_nuit_chk_10` CHECK ((`duree_hypoxie_min` >= 0)),
  CONSTRAINT `resultat_nuit_chk_11` CHECK ((`position_dominante` in (_utf8mb4'dorsale',_utf8mb4'latérale',_utf8mb4'ventrale',_utf8mb4'mixte'))),
  CONSTRAINT `resultat_nuit_chk_12` CHECK ((`duree_apnee_moy_sec` >= 0)),
  CONSTRAINT `resultat_nuit_chk_13` CHECK ((`duree_apnee_max_sec` >= 0)),
  CONSTRAINT `resultat_nuit_chk_14` CHECK ((`nb_ronflements_forts` >= 0)),
  CONSTRAINT `resultat_nuit_chk_2` CHECK ((`spo2_min` between 0 and 100)),
  CONSTRAINT `resultat_nuit_chk_3` CHECK ((`spo2_moy` between 0 and 100)),
  CONSTRAINT `resultat_nuit_chk_4` CHECK ((`spo2_mediane` between 0 and 100)),
  CONSTRAINT `resultat_nuit_chk_5` CHECK ((`nb_apnees` >= 0)),
  CONSTRAINT `resultat_nuit_chk_6` CHECK ((`nb_hypopnees` >= 0)),
  CONSTRAINT `resultat_nuit_chk_7` CHECK ((`nb_rera` >= 0)),
  CONSTRAINT `resultat_nuit_chk_8` CHECK ((`nb_microeveils` >= 0)),
  CONSTRAINT `resultat_nuit_chk_9` CHECK ((`duree_sommeil_min` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultat_nuit`
--

LOCK TABLES `resultat_nuit` WRITE;
/*!40000 ALTER TABLE `resultat_nuit` DISABLE KEYS */;
INSERT INTO `resultat_nuit` (`id_resultat`, `id_nuit`, `id_medecin_validateur`, `date_validation`, `iah`, `spo2_min`, `spo2_moy`, `spo2_mediane`, `nb_apnees`, `nb_hypopnees`, `nb_rera`, `nb_microeveils`, `duree_sommeil_min`, `duree_hypoxie_min`, `position_dominante`, `duree_apnee_moy_sec`, `duree_apnee_max_sec`, `decibels_max`, `decibels_moy`, `nb_ronflements_forts`, `commentaire_medical`) VALUES (1,1,5,'2022-03-12',32.40,78.00,92.00,93.00,120,110,40,65,410,55,'dorsale',24,48,82.50,65.30,45,'Validation par streamlit'),(2,2,2,'2026-07-08',110.00,88.70,96.80,97.00,77,33,22,0,60,1,'latérale',51,58,59.80,38.90,0,'SAHOS sévère avec hypoxies prolongées. Mise en route CPAP urgente.'),(3,3,4,'2026-07-10',62.80,68.00,87.50,88.00,210,185,70,130,340,150,'dorsale',32,68,92.50,78.00,95,'(PATCH Streamlit V2) Aggravation majeure du SAHOS. Hypoxies prolongées. Observance CPAP quasi nulle. Risque vital accru.');
/*!40000 ALTER TABLE `resultat_nuit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suivi_cpap_jour`
--

DROP TABLE IF EXISTS `suivi_cpap_jour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suivi_cpap_jour` (
  `id_suivi` int NOT NULL AUTO_INCREMENT,
  `id_appareil` int NOT NULL,
  `date_jour` date NOT NULL,
  `duree_utilisation_h` decimal(4,2) DEFAULT NULL,
  `iah_residuel` decimal(5,2) DEFAULT NULL,
  `fuites_l_min` decimal(6,2) DEFAULT NULL,
  `nb_evenements` int DEFAULT NULL,
  `qualite_donnee` varchar(20) NOT NULL DEFAULT 'bonne',
  PRIMARY KEY (`id_suivi`),
  UNIQUE KEY `id_appareil` (`id_appareil`,`date_jour`),
  KEY `idx_suivi_cpap_date` (`date_jour`),
  KEY `idx_suivi_cpap_appareil` (`id_appareil`,`date_jour`),
  CONSTRAINT `fk_suivi_cpap_appareil` FOREIGN KEY (`id_appareil`) REFERENCES `appareil_cpap` (`id_appareil`),
  CONSTRAINT `suivi_cpap_jour_chk_1` CHECK ((`duree_utilisation_h` >= 0)),
  CONSTRAINT `suivi_cpap_jour_chk_2` CHECK ((`iah_residuel` >= 0)),
  CONSTRAINT `suivi_cpap_jour_chk_3` CHECK ((`fuites_l_min` >= 0)),
  CONSTRAINT `suivi_cpap_jour_chk_4` CHECK ((`nb_evenements` >= 0)),
  CONSTRAINT `suivi_cpap_jour_chk_5` CHECK ((`qualite_donnee` in (_utf8mb4'bonne',_utf8mb4'dégradée',_utf8mb4'manquante')))
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suivi_cpap_jour`
--

LOCK TABLES `suivi_cpap_jour` WRITE;
/*!40000 ALTER TABLE `suivi_cpap_jour` DISABLE KEYS */;
INSERT INTO `suivi_cpap_jour` VALUES (1,12,'2022-04-02',6.10,3.20,18.50,45,'bonne'),(2,12,'2022-04-03',5.80,2.90,21.00,40,'bonne'),(3,12,'2022-04-04',6.40,3.00,19.20,42,'bonne'),(4,12,'2022-04-05',7.00,2.70,16.80,38,'bonne'),(5,12,'2022-04-06',6.20,3.10,20.10,41,'bonne'),(6,12,'2026-01-01',6.80,2.30,18.20,41,'bonne'),(7,12,'2026-01-02',7.10,2.10,17.50,39,'bonne'),(8,12,'2026-01-03',6.90,2.20,18.90,42,'bonne'),(9,12,'2026-01-04',7.00,2.00,17.80,38,'bonne'),(10,12,'2026-01-05',6.70,2.40,19.10,44,'bonne'),(11,12,'2026-01-06',7.20,2.10,18.00,40,'bonne'),(12,12,'2026-01-07',6.80,2.30,18.70,43,'bonne'),(13,12,'2026-01-08',7.30,2.00,17.20,37,'bonne'),(14,12,'2026-01-09',6.90,2.20,18.50,41,'bonne'),(15,12,'2026-01-10',7.10,2.10,17.90,39,'bonne'),(16,12,'2026-01-11',6.80,2.40,19.30,45,'bonne'),(17,12,'2026-01-12',7.00,2.20,18.10,40,'bonne'),(18,12,'2026-01-13',6.70,2.50,19.80,47,'bonne'),(19,12,'2026-01-14',7.20,2.00,17.40,36,'bonne'),(20,12,'2026-01-15',6.90,2.30,18.60,42,'bonne'),(21,12,'2026-01-16',7.10,2.10,17.70,38,'bonne'),(22,12,'2026-01-17',6.80,2.40,19.00,44,'bonne'),(23,12,'2026-01-18',7.30,2.00,17.10,35,'bonne'),(24,12,'2026-01-19',6.90,2.20,18.40,41,'bonne'),(25,12,'2026-01-20',7.00,2.10,17.80,39,'bonne'),(26,12,'2026-01-21',6.80,2.30,18.90,43,'bonne'),(27,12,'2026-01-22',7.20,2.00,17.30,36,'bonne'),(28,12,'2026-01-23',6.90,2.20,18.70,42,'bonne'),(29,12,'2026-01-24',7.10,2.10,17.60,38,'bonne'),(30,12,'2026-01-25',6.70,2.50,19.90,48,'bonne'),(31,12,'2026-01-26',7.00,2.20,18.20,40,'bonne'),(32,12,'2026-01-27',6.80,2.40,19.10,44,'bonne'),(33,12,'2026-01-28',7.20,2.00,17.50,37,'bonne'),(34,12,'2026-01-29',6.90,2.30,18.80,43,'bonne'),(35,12,'2026-01-30',7.10,2.10,17.90,39,'bonne'),(36,12,'2026-01-31',6.80,2.40,19.20,45,'bonne'),(37,12,'2026-02-01',7.00,2.10,17.80,38,'bonne'),(38,12,'2026-02-02',6.90,2.30,18.60,42,'bonne'),(39,12,'2026-02-03',7.20,2.00,17.40,36,'bonne'),(40,12,'2026-02-04',6.80,2.40,19.00,44,'bonne'),(41,12,'2026-02-05',7.10,2.10,17.70,38,'bonne'),(42,12,'2026-02-06',6.90,2.30,18.50,41,'bonne'),(43,12,'2026-02-07',7.30,2.00,17.20,35,'bonne'),(44,12,'2026-02-08',6.80,2.40,19.10,44,'bonne'),(45,12,'2026-02-09',7.00,2.20,18.00,40,'bonne'),(46,12,'2026-02-10',6.90,2.30,18.70,42,'bonne'),(47,12,'2026-02-11',7.20,2.00,17.30,36,'bonne'),(48,12,'2026-02-12',6.80,2.40,19.20,45,'bonne'),(49,12,'2026-02-13',7.10,2.10,17.90,39,'bonne'),(50,12,'2026-02-14',6.90,2.30,18.80,43,'bonne'),(51,12,'2026-02-15',7.00,2.20,18.10,40,'bonne'),(52,12,'2026-02-16',6.80,2.40,19.30,45,'bonne'),(53,12,'2026-02-17',7.20,2.00,17.50,37,'bonne'),(54,12,'2026-02-18',6.90,2.30,18.60,42,'bonne'),(55,12,'2026-02-19',7.10,2.10,17.80,38,'bonne'),(56,12,'2026-02-20',6.80,2.40,19.10,44,'bonne'),(57,12,'2026-02-21',7.30,2.00,17.10,35,'bonne'),(58,12,'2026-02-22',6.90,2.30,18.70,42,'bonne'),(59,12,'2026-02-23',7.00,2.20,18.00,40,'bonne'),(60,12,'2026-02-24',6.80,2.40,19.20,45,'bonne'),(61,12,'2026-02-25',7.10,2.10,17.90,39,'bonne'),(62,12,'2026-02-26',6.90,2.30,18.80,43,'bonne'),(63,12,'2026-02-27',7.20,2.00,17.40,36,'bonne'),(64,12,'2026-02-28',6.80,2.40,19.00,44,'bonne'),(65,12,'2026-03-01',7.10,2.10,17.80,38,'bonne'),(66,12,'2026-03-02',6.90,2.30,18.70,42,'bonne'),(67,12,'2026-03-03',7.20,2.00,17.30,36,'bonne'),(68,12,'2026-03-04',6.80,2.40,19.10,44,'bonne'),(69,12,'2026-03-05',7.00,2.20,18.00,40,'bonne'),(70,12,'2026-03-06',6.90,2.30,18.60,42,'bonne'),(71,12,'2026-03-07',7.30,2.00,17.20,35,'bonne'),(72,12,'2026-03-08',6.80,2.40,19.30,45,'bonne'),(73,12,'2026-03-09',7.10,2.10,17.90,39,'bonne'),(74,12,'2026-03-10',6.90,2.30,18.80,43,'bonne'),(75,12,'2026-03-11',7.20,2.00,17.40,36,'bonne'),(76,12,'2026-03-12',6.80,2.40,19.20,45,'bonne'),(77,12,'2026-03-13',7.00,2.20,18.10,40,'bonne'),(78,12,'2026-03-14',6.90,2.30,18.70,42,'bonne'),(79,12,'2026-03-15',7.30,2.00,17.10,35,'bonne'),(80,12,'2026-03-16',6.80,2.40,19.00,44,'bonne'),(81,12,'2026-03-17',7.10,2.10,17.80,38,'bonne'),(82,12,'2026-03-18',6.90,2.30,18.60,42,'bonne'),(83,12,'2026-03-19',7.20,2.00,17.30,36,'bonne'),(84,12,'2026-03-20',6.80,2.40,19.10,44,'bonne'),(85,12,'2026-03-21',7.00,2.20,18.00,40,'bonne'),(86,12,'2026-03-22',6.90,2.30,18.70,42,'bonne'),(87,12,'2026-03-23',7.30,2.00,17.20,35,'bonne'),(88,12,'2026-03-24',6.80,2.40,19.30,45,'bonne'),(89,12,'2026-03-25',7.10,2.10,17.90,39,'bonne'),(90,12,'2026-03-26',6.90,2.30,18.80,43,'bonne'),(91,12,'2026-03-27',7.20,2.00,17.40,36,'bonne'),(92,12,'2026-03-28',6.80,2.40,19.20,45,'bonne'),(93,12,'2026-03-29',7.00,2.20,18.10,40,'bonne'),(94,12,'2026-03-30',6.90,2.30,18.70,42,'bonne'),(95,12,'2026-03-31',7.30,2.00,17.10,35,'bonne'),(96,12,'2026-04-01',7.00,2.10,17.80,38,'bonne'),(97,12,'2026-04-02',6.90,2.30,18.60,42,'bonne'),(98,12,'2026-04-03',7.20,2.00,17.40,36,'bonne'),(99,12,'2026-04-04',6.80,2.40,19.10,44,'bonne'),(100,12,'2026-04-05',7.10,2.10,17.90,39,'bonne'),(101,12,'2026-04-06',6.90,2.30,18.70,42,'bonne'),(102,12,'2026-04-07',7.30,2.00,17.20,35,'bonne'),(103,12,'2026-04-08',6.80,2.40,19.30,45,'bonne'),(104,12,'2026-04-09',7.00,2.20,18.00,40,'bonne'),(105,12,'2026-04-10',6.90,2.30,18.80,43,'bonne'),(106,12,'2026-04-11',7.20,2.00,17.30,36,'bonne'),(107,12,'2026-04-12',6.80,2.40,19.20,45,'bonne'),(108,12,'2026-04-13',7.10,2.10,17.80,38,'bonne'),(109,12,'2026-04-14',6.90,2.30,18.60,42,'bonne'),(110,12,'2026-04-15',7.30,2.00,17.10,35,'bonne'),(111,12,'2026-04-16',6.80,2.40,19.00,44,'bonne'),(112,12,'2026-04-17',7.00,2.20,18.10,40,'bonne'),(113,12,'2026-04-18',6.90,2.30,18.70,42,'bonne'),(114,12,'2026-04-19',7.20,2.00,17.40,36,'bonne'),(115,12,'2026-04-20',6.80,2.40,19.10,44,'bonne'),(116,12,'2026-04-21',7.10,2.10,17.90,39,'bonne'),(117,12,'2026-04-22',6.90,2.30,18.80,43,'bonne'),(118,12,'2026-04-23',7.30,2.00,17.20,35,'bonne'),(119,12,'2026-04-24',6.80,2.40,19.30,45,'bonne'),(120,12,'2026-04-25',7.00,2.20,18.00,40,'bonne'),(121,12,'2026-04-26',6.90,2.30,18.70,42,'bonne'),(122,12,'2026-04-27',7.20,2.00,17.30,36,'bonne'),(123,12,'2026-04-28',6.80,2.40,19.20,45,'bonne'),(124,12,'2026-04-29',7.10,2.10,17.80,38,'bonne'),(125,12,'2026-04-30',6.90,2.30,18.60,42,'bonne'),(126,12,'2026-05-01',7.10,2.10,17.90,39,'bonne'),(127,12,'2026-05-02',6.90,2.30,18.70,42,'bonne'),(128,12,'2026-05-03',7.20,2.00,17.40,36,'bonne'),(129,12,'2026-05-04',6.80,2.40,19.10,44,'bonne'),(130,12,'2026-05-05',7.00,2.20,18.00,40,'bonne'),(131,12,'2026-05-06',6.90,2.30,18.80,43,'bonne'),(132,12,'2026-05-07',7.30,2.00,17.20,35,'bonne'),(133,12,'2026-05-08',6.80,2.40,19.30,45,'bonne'),(134,12,'2026-05-09',7.10,2.10,17.80,38,'bonne'),(135,12,'2026-05-10',6.90,2.30,18.60,42,'bonne'),(136,12,'2026-05-11',7.20,2.00,17.30,36,'bonne'),(137,12,'2026-05-12',6.80,2.40,19.20,45,'bonne'),(138,12,'2026-05-13',7.00,2.20,18.10,40,'bonne'),(139,12,'2026-05-14',6.90,2.30,18.70,42,'bonne'),(140,12,'2026-05-15',7.30,2.00,17.20,35,'bonne'),(141,12,'2026-05-16',6.80,2.40,19.30,45,'bonne'),(142,12,'2026-05-17',7.10,2.10,17.90,39,'bonne'),(143,12,'2026-05-18',6.90,2.30,18.60,42,'bonne'),(144,12,'2026-05-19',7.20,2.00,17.40,36,'bonne'),(145,12,'2026-05-20',6.80,2.40,19.10,44,'bonne'),(146,12,'2026-05-21',7.00,2.20,18.00,40,'bonne'),(147,12,'2026-05-22',6.90,2.30,18.80,43,'bonne'),(148,12,'2026-05-23',7.30,2.00,17.10,35,'bonne'),(149,12,'2026-05-24',6.80,2.40,19.20,45,'bonne'),(150,12,'2026-05-25',7.10,2.10,17.80,38,'bonne'),(151,12,'2026-05-26',6.90,2.30,18.70,42,'bonne'),(152,12,'2026-05-27',7.20,2.00,17.30,36,'bonne'),(153,12,'2026-05-28',6.80,2.40,19.00,44,'bonne'),(154,12,'2026-05-29',7.00,2.20,18.10,40,'bonne'),(155,12,'2026-05-30',6.90,2.30,18.60,42,'bonne'),(156,12,'2026-05-31',7.30,2.00,17.20,35,'bonne'),(157,13,'2022-04-01',2.10,8.50,32.00,110,'dégradée'),(158,13,'2022-04-02',0.00,0.00,0.00,0,'manquante'),(159,13,'2022-04-03',3.00,7.20,28.50,95,'dégradée'),(160,13,'2022-04-04',1.20,9.10,35.00,120,'dégradée'),(161,13,'2022-04-05',0.00,0.00,0.00,0,'manquante'),(162,13,'2026-01-01',1.80,10.20,38.00,130,'dégradée'),(163,13,'2026-01-02',0.00,0.00,0.00,0,'manquante'),(164,13,'2026-01-03',2.50,9.80,36.50,125,'dégradée'),(165,13,'2026-01-04',0.70,11.00,40.20,140,'dégradée'),(166,13,'2026-01-05',0.00,0.00,0.00,0,'manquante'),(167,13,'2026-07-01',1.10,12.80,42.00,150,'dégradée'),(168,13,'2026-07-02',0.00,0.00,0.00,0,'manquante'),(169,13,'2026-07-03',0.70,13.50,45.20,165,'dégradée'),(170,13,'2026-07-04',0.00,0.00,0.00,0,'manquante'),(171,13,'2026-07-05',1.40,12.20,40.80,145,'dégradée'),(172,13,'2026-07-06',0.90,13.00,43.50,158,'dégradée'),(173,13,'2026-07-07',0.00,0.00,0.00,0,'manquante'),(174,13,'2026-07-08',1.20,12.90,41.80,152,'dégradée'),(175,13,'2026-07-09',0.00,0.00,0.00,0,'manquante'),(176,13,'2026-07-10',1.00,13.10,44.00,160,'dégradée'),(177,13,'2026-07-11',0.60,13.80,46.20,170,'dégradée'),(178,13,'2026-07-12',0.00,0.00,0.00,0,'manquante'),(179,13,'2026-07-13',1.30,12.70,41.50,148,'dégradée'),(180,13,'2026-07-14',0.00,0.00,0.00,0,'manquante'),(181,13,'2026-07-15',1.10,13.00,43.00,155,'dégradée'),(182,13,'2026-07-16',0.00,0.00,0.00,0,'manquante'),(183,13,'2026-07-17',1.50,12.40,40.20,142,'dégradée'),(184,13,'2026-07-18',0.80,13.60,45.80,168,'dégradée'),(185,13,'2026-07-19',0.00,0.00,0.00,0,'manquante'),(186,13,'2026-07-20',1.20,12.90,42.50,150,'dégradée'),(187,13,'2026-07-21',0.00,0.00,0.00,0,'manquante'),(188,13,'2026-07-22',1.00,13.20,44.80,162,'dégradée'),(189,13,'2026-07-23',0.70,13.70,46.50,171,'dégradée'),(190,13,'2026-07-24',0.00,0.00,0.00,0,'manquante'),(191,13,'2026-07-25',1.30,12.60,41.20,147,'dégradée'),(192,13,'2026-07-26',0.00,0.00,0.00,0,'manquante'),(193,13,'2026-07-27',1.10,13.10,43.20,156,'dégradée'),(194,13,'2026-07-28',0.00,0.00,0.00,0,'manquante'),(195,13,'2026-07-29',1.40,12.50,40.90,144,'dégradée'),(196,13,'2026-07-30',0.90,13.40,45.00,165,'dégradée'),(197,13,'2026-07-31',0.00,0.00,0.00,0,'manquante'),(198,13,'2026-08-01',0.80,14.00,47.00,175,'dégradée'),(199,13,'2026-08-02',0.00,0.00,0.00,0,'manquante'),(200,13,'2026-08-03',0.60,14.50,48.20,182,'dégradée'),(201,13,'2026-08-04',0.00,0.00,0.00,0,'manquante'),(202,13,'2026-08-05',1.00,13.80,46.00,170,'dégradée'),(203,13,'2026-08-06',0.70,14.20,47.80,178,'dégradée'),(204,13,'2026-08-07',0.00,0.00,0.00,0,'manquante'),(205,13,'2026-08-08',0.90,13.90,46.50,172,'dégradée'),(206,13,'2026-08-09',0.00,0.00,0.00,0,'manquante'),(207,13,'2026-08-10',0.50,14.80,49.00,185,'dégradée'),(208,13,'2026-08-11',0.00,0.00,0.00,0,'manquante'),(209,13,'2026-08-12',0.80,14.10,47.20,176,'dégradée'),(210,13,'2026-08-13',0.00,0.00,0.00,0,'manquante'),(211,13,'2026-08-14',0.60,14.60,48.80,183,'dégradée'),(212,13,'2026-08-15',0.00,0.00,0.00,0,'manquante'),(213,13,'2026-08-16',0.90,13.70,46.10,171,'dégradée'),(214,13,'2026-08-17',0.00,0.00,0.00,0,'manquante'),(215,13,'2026-08-18',0.70,14.30,47.90,179,'dégradée'),(216,13,'2026-08-19',0.00,0.00,0.00,0,'manquante'),(217,13,'2026-08-20',0.80,14.00,47.00,175,'dégradée'),(218,13,'2026-08-21',0.00,0.00,0.00,0,'manquante'),(219,13,'2026-08-22',0.60,14.70,48.90,184,'dégradée'),(220,13,'2026-08-23',0.00,0.00,0.00,0,'manquante'),(221,13,'2026-08-24',0.90,13.80,46.30,173,'dégradée'),(222,13,'2026-08-25',0.00,0.00,0.00,0,'manquante'),(223,13,'2026-08-26',0.70,14.40,48.00,180,'dégradée'),(224,13,'2026-08-27',0.00,0.00,0.00,0,'manquante'),(225,13,'2026-08-28',0.80,14.10,47.10,176,'dégradée'),(226,13,'2026-08-29',0.00,0.00,0.00,0,'manquante'),(227,13,'2026-08-30',0.60,14.60,48.70,183,'dégradée'),(228,13,'2026-08-31',0.00,0.00,0.00,0,'manquante'),(260,13,'2026-09-01',0.50,15.00,49.50,188,'dégradée'),(261,13,'2026-09-02',0.00,0.00,0.00,0,'manquante'),(262,13,'2026-09-03',0.40,15.20,50.00,190,'dégradée'),(263,13,'2026-09-04',0.00,0.00,0.00,0,'manquante'),(264,13,'2026-09-05',0.70,14.80,48.50,182,'dégradée'),(265,13,'2026-09-06',0.00,0.00,0.00,0,'manquante'),(266,13,'2026-09-07',0.60,15.10,49.20,186,'dégradée'),(267,13,'2026-09-08',0.00,0.00,0.00,0,'manquante'),(268,13,'2026-09-09',0.50,15.30,50.30,191,'dégradée'),(269,13,'2026-09-10',0.00,0.00,0.00,0,'manquante'),(270,13,'2026-09-11',0.40,15.40,50.80,193,'dégradée'),(271,13,'2026-09-12',0.00,0.00,0.00,0,'manquante'),(272,13,'2026-09-13',0.60,15.00,49.00,185,'dégradée'),(273,13,'2026-09-14',0.00,0.00,0.00,0,'manquante'),(274,13,'2026-09-15',0.50,15.20,49.80,189,'dégradée'),(275,13,'2026-09-16',0.00,0.00,0.00,0,'manquante'),(276,13,'2026-09-17',0.40,15.50,51.00,194,'dégradée'),(277,13,'2026-09-18',0.00,0.00,0.00,0,'manquante'),(278,13,'2026-09-19',0.60,15.10,49.30,186,'dégradée'),(279,13,'2026-09-20',0.00,0.00,0.00,0,'manquante'),(280,13,'2026-09-21',0.50,15.30,50.10,190,'dégradée'),(281,13,'2026-09-22',0.00,0.00,0.00,0,'manquante'),(282,13,'2026-09-23',0.40,15.60,51.20,195,'dégradée'),(283,13,'2026-09-24',0.00,0.00,0.00,0,'manquante'),(284,13,'2026-09-25',0.60,15.00,49.10,185,'dégradée'),(285,13,'2026-09-26',0.00,0.00,0.00,0,'manquante'),(286,13,'2026-09-27',0.50,15.40,50.50,192,'dégradée'),(287,13,'2026-09-28',0.00,0.00,0.00,0,'manquante'),(288,13,'2026-09-29',0.40,15.70,51.50,196,'dégradée'),(289,13,'2026-09-30',0.00,0.00,0.00,0,'manquante'),(290,13,'2026-10-01',0.50,15.80,51.00,195,'dégradée'),(291,13,'2026-10-02',0.00,0.00,0.00,0,'manquante'),(292,13,'2026-10-03',0.40,16.00,51.80,198,'dégradée'),(293,13,'2026-10-04',0.00,0.00,0.00,0,'manquante'),(294,13,'2026-10-05',0.60,15.70,50.50,192,'dégradée'),(295,13,'2026-10-06',0.00,0.00,0.00,0,'manquante'),(296,13,'2026-10-07',0.50,16.10,52.00,200,'dégradée'),(297,13,'2026-10-08',0.00,0.00,0.00,0,'manquante'),(298,13,'2026-10-09',0.40,16.30,52.50,203,'dégradée'),(299,13,'2026-10-10',0.00,0.00,0.00,0,'manquante'),(300,13,'2026-10-11',0.60,15.90,51.20,196,'dégradée'),(301,13,'2026-10-12',0.00,0.00,0.00,0,'manquante'),(302,13,'2026-10-13',0.50,16.20,52.10,201,'dégradée'),(303,13,'2026-10-14',0.00,0.00,0.00,0,'manquante'),(304,13,'2026-10-15',0.40,16.40,52.80,204,'dégradée'),(305,13,'2026-10-16',0.00,0.00,0.00,0,'manquante'),(306,13,'2026-10-17',0.60,15.80,51.00,195,'dégradée'),(307,13,'2026-10-18',0.00,0.00,0.00,0,'manquante'),(308,13,'2026-10-19',0.50,16.30,52.40,202,'dégradée'),(309,13,'2026-10-20',0.00,0.00,0.00,0,'manquante'),(310,13,'2026-10-21',0.40,16.50,53.00,205,'dégradée'),(311,13,'2026-10-22',0.00,0.00,0.00,0,'manquante'),(312,13,'2026-10-23',0.60,15.90,51.30,197,'dégradée'),(313,13,'2026-10-24',0.00,0.00,0.00,0,'manquante'),(314,13,'2026-10-25',0.50,16.20,52.20,201,'dégradée'),(315,13,'2026-10-26',0.00,0.00,0.00,0,'manquante'),(316,13,'2026-10-27',0.40,16.60,53.20,206,'dégradée'),(317,13,'2026-10-28',0.00,0.00,0.00,0,'manquante'),(318,13,'2026-10-29',0.60,15.70,50.90,194,'dégradée'),(319,13,'2026-10-30',0.00,0.00,0.00,0,'manquante'),(320,13,'2026-10-31',0.50,16.40,52.90,205,'dégradée'),(321,13,'2026-11-01',0.40,16.80,53.80,210,'dégradée'),(322,13,'2026-11-02',0.00,0.00,0.00,0,'manquante'),(323,13,'2026-11-03',0.30,17.00,54.20,214,'dégradée'),(324,13,'2026-11-04',0.00,0.00,0.00,0,'manquante'),(325,13,'2026-11-05',0.50,16.60,53.00,206,'dégradée'),(326,13,'2026-11-06',0.00,0.00,0.00,0,'manquante'),(327,13,'2026-11-07',0.40,16.90,53.90,211,'dégradée'),(328,13,'2026-11-08',0.00,0.00,0.00,0,'manquante'),(329,13,'2026-11-09',0.30,17.10,54.50,215,'dégradée'),(330,13,'2026-11-10',0.00,0.00,0.00,0,'manquante'),(331,13,'2026-11-11',0.50,16.70,53.20,207,'dégradée'),(332,13,'2026-11-12',0.00,0.00,0.00,0,'manquante'),(333,13,'2026-11-13',0.40,17.00,54.10,212,'dégradée'),(334,13,'2026-11-14',0.00,0.00,0.00,0,'manquante'),(335,13,'2026-11-15',0.30,17.20,54.80,216,'dégradée'),(336,13,'2026-11-16',0.00,0.00,0.00,0,'manquante'),(337,13,'2026-11-17',0.50,16.80,53.40,208,'dégradée'),(338,13,'2026-11-18',0.00,0.00,0.00,0,'manquante'),(339,13,'2026-11-19',0.40,17.10,54.30,213,'dégradée'),(340,13,'2026-11-20',0.00,0.00,0.00,0,'manquante'),(341,13,'2026-11-21',0.30,17.30,55.00,217,'dégradée'),(342,13,'2026-11-22',0.00,0.00,0.00,0,'manquante'),(343,13,'2026-11-23',0.50,16.90,53.60,209,'dégradée'),(344,13,'2026-11-24',0.00,0.00,0.00,0,'manquante'),(345,13,'2026-11-25',0.40,17.20,54.40,214,'dégradée'),(346,13,'2026-11-26',0.00,0.00,0.00,0,'manquante'),(347,13,'2026-11-27',0.30,17.40,55.20,218,'dégradée'),(348,13,'2026-11-28',0.00,0.00,0.00,0,'manquante'),(349,13,'2026-11-29',0.50,16.80,53.30,208,'dégradée'),(350,13,'2026-11-30',0.00,0.00,0.00,0,'manquante'),(411,13,'2026-12-01',0.30,17.50,55.50,220,'dégradée'),(412,13,'2026-12-02',0.00,0.00,0.00,0,'manquante'),(413,13,'2026-12-03',0.20,17.80,56.00,225,'dégradée'),(414,13,'2026-12-04',0.00,0.00,0.00,0,'manquante'),(415,13,'2026-12-05',0.40,17.40,55.00,218,'dégradée'),(416,13,'2026-12-06',0.00,0.00,0.00,0,'manquante'),(417,13,'2026-12-07',0.30,17.70,55.80,223,'dégradée'),(418,13,'2026-12-08',0.00,0.00,0.00,0,'manquante'),(419,13,'2026-12-09',0.20,18.00,56.50,228,'dégradée'),(420,13,'2026-12-10',0.00,0.00,0.00,0,'manquante'),(421,13,'2026-12-11',0.40,17.60,55.30,219,'dégradée'),(422,13,'2026-12-12',0.00,0.00,0.00,0,'manquante'),(423,13,'2026-12-13',0.30,17.90,56.20,226,'dégradée'),(424,13,'2026-12-14',0.00,0.00,0.00,0,'manquante'),(425,13,'2026-12-15',0.20,18.10,56.80,230,'dégradée'),(426,13,'2026-12-16',0.00,0.00,0.00,0,'manquante'),(427,13,'2026-12-17',0.40,17.70,55.40,220,'dégradée'),(428,13,'2026-12-18',0.00,0.00,0.00,0,'manquante'),(429,13,'2026-12-19',0.30,18.00,56.30,227,'dégradée'),(430,13,'2026-12-20',0.00,0.00,0.00,0,'manquante'),(431,13,'2026-12-21',0.20,18.20,57.00,231,'dégradée'),(432,13,'2026-12-22',0.00,0.00,0.00,0,'manquante'),(433,13,'2026-12-23',0.40,17.80,55.60,222,'dégradée'),(434,13,'2026-12-24',0.00,0.00,0.00,0,'manquante'),(435,13,'2026-12-25',0.30,18.10,56.40,228,'dégradée'),(436,13,'2026-12-26',0.00,0.00,0.00,0,'manquante'),(437,13,'2026-12-27',0.20,18.30,57.20,232,'dégradée'),(438,13,'2026-12-28',0.00,0.00,0.00,0,'manquante'),(439,13,'2026-12-29',0.40,17.90,55.70,223,'dégradée'),(440,13,'2026-12-30',0.00,0.00,0.00,0,'manquante'),(441,13,'2026-12-31',0.30,18.20,56.90,231,'dégradée');
/*!40000 ALTER TABLE `suivi_cpap_jour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `suivi_cpapjour`
--

DROP TABLE IF EXISTS `suivi_cpapjour`;
/*!50001 DROP VIEW IF EXISTS `suivi_cpapjour`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `suivi_cpapjour` AS SELECT 
 1 AS `nom_patient`,
 1 AS `date_jour`,
 1 AS `duree_utilisation_h`,
 1 AS `iah_residuel`,
 1 AS `fuites_l_min`,
 1 AS `nb_evenements`,
 1 AS `qualite_donnee`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `suivi_patient`
--

DROP TABLE IF EXISTS `suivi_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suivi_patient` (
  `id_suivi` int NOT NULL AUTO_INCREMENT,
  `id_patient` int NOT NULL,
  `id_medecin` int NOT NULL,
  `date_suivi` date NOT NULL,
  `poids` decimal(5,2) DEFAULT NULL,
  `imc` decimal(4,1) DEFAULT NULL,
  `tension_systolique` int DEFAULT NULL,
  `tension_diastolique` int DEFAULT NULL,
  `statut_tabac` varchar(50) DEFAULT NULL COMMENT 'fumeur / sevrage en cours / arrêté / non-fumeur',
  `notes_evolution` text,
  `statut_patient` varchar(20) NOT NULL DEFAULT 'actif',
  PRIMARY KEY (`id_suivi`),
  KEY `fk_suivi_patient_patient` (`id_patient`),
  KEY `fk_suivi_patient_medecin` (`id_medecin`),
  CONSTRAINT `fk_suivi_patient_medecin` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_personnel`),
  CONSTRAINT `fk_suivi_patient_patient` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`),
  CONSTRAINT `suivi_patient_chk_1` CHECK ((`statut_patient` in (_utf8mb4'actif',_utf8mb4'perdu de vue',_utf8mb4'décédé')))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suivi_patient`
--

LOCK TABLES `suivi_patient` WRITE;
/*!40000 ALTER TABLE `suivi_patient` DISABLE KEYS */;
INSERT INTO `suivi_patient` VALUES (1,1,1,'2023-03-15',94.50,30.8,132,84,'sevrage en cours','Bonne observance CPAP, somnolence diurne nettement améliorée.','actif'),(2,1,1,'2024-03-18',92.00,30.1,128,82,'arrêté','Perte de poids, IAH résiduel bas, HTA mieux contrôlée.','actif'),(3,1,1,'2025-03-20',90.20,29.5,126,80,'arrêté','Très bonne observance, fatigue disparue, qualité de vie améliorée.','actif'),(4,1,1,'2026-03-22',89.80,29.4,124,78,'arrêté','Stabilisation clinique, CPAP parfaitement tolérée.','actif'),(5,2,1,'2023-03-10',112.00,35.5,148,92,'fumeur','Observance CPAP faible. Somnolence persistante. Conseils répétés.','actif'),(6,2,1,'2024-03-12',115.00,36.4,152,95,'fumeur','Aggravation fatigue, HTA mal contrôlée. CPAP utilisée < 3h/j.','actif'),(7,2,1,'2025-03-14',118.00,37.2,158,98,'fumeur','BPCO aggravée, dyspnée d’effort. Observance CPAP très mauvaise.','actif'),(8,2,1,'2026-03-16',120.00,37.8,162,100,'fumeur','État général dégradé. Risque cardio-respiratoire accru.','actif'),(9,2,1,'2027-09-10',121.00,38.0,170,105,'fumeur','Insuffisance respiratoire chronique. CPAP abandonnée. Episodes de confusion. Risque vital élevé.','actif'),(10,2,1,'2028-01-15',118.00,37.1,168,104,'fumeur','Hypercapnie chronique. Désaturation sévère. Dépendance à l’oxygène nocturne. État précaire.','actif'),(11,2,1,'2028-04-20',114.00,35.8,165,102,'fumeur','Dégradation terminale. Dyspnée au repos. CPAP totalement abandonnée. Pronostic vital engagé.','actif'),(12,2,1,'2024-04-10',115.00,36.4,152,95,'fumeur','Aggravation fatigue, HTA mal contrôlée. CPAP utilisée < 2h/j.','actif'),(13,2,1,'2025-09-15',118.00,37.2,158,98,'fumeur','BPCO aggravée, dyspnée d’effort, hypercapnie probable. Observance CPAP quasi nulle.','actif'),(14,2,1,'2025-09-15',118.00,37.2,158,98,'fumeur','BPCO aggravée, dyspnée d’effort, hypercapnie probable. Observance CPAP quasi nulle.','actif');
/*!40000 ALTER TABLE `suivi_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `role` enum('admin','medecin','operateur') NOT NULL,
  `actif` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'admin_arles@gmail.com','azerty','admin',1),(2,'medecin_arles@gmail.com','azerty','medecin',1),(3,'operateur_arles@gmail.com','azerty','operateur',1);
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vue_nuit_etude`
--

DROP TABLE IF EXISTS `vue_nuit_etude`;
/*!50001 DROP VIEW IF EXISTS `vue_nuit_etude`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vue_nuit_etude` AS SELECT 
 1 AS `nom_superviseur`,
 1 AS `nom_medecin`,
 1 AS `nom_patient`,
 1 AS `date_nuit`,
 1 AS `type_etude`,
 1 AS `notes_techniques`,
 1 AS `equipement`,
 1 AS `motif_prescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vue_patients`
--

DROP TABLE IF EXISTS `vue_patients`;
/*!50001 DROP VIEW IF EXISTS `vue_patients`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vue_patients` AS SELECT 
 1 AS `id_patient`,
 1 AS `nom`,
 1 AS `prenom`,
 1 AS `date_naissance`,
 1 AS `sexe`,
 1 AS `adresse`,
 1 AS `telephone`,
 1 AS `email`,
 1 AS `numero_secu`,
 1 AS `imc_initial`,
 1 AS `fumeur`,
 1 AS `pa_tabac`,
 1 AS `consommation_alcool`,
 1 AS `profession`,
 1 AS `niveau_activite`,
 1 AS `date_creation_dpi`,
 1 AS `actif`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vue_resultat_nuit`
--

DROP TABLE IF EXISTS `vue_resultat_nuit`;
/*!50001 DROP VIEW IF EXISTS `vue_resultat_nuit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vue_resultat_nuit` AS SELECT 
 1 AS `id_nuit`,
 1 AS `nom_patient`,
 1 AS `nom_medecinValidateur`,
 1 AS `date_validation`,
 1 AS `iah`,
 1 AS `spo2_min`,
 1 AS `spo2_moy`,
 1 AS `spo2_mediane`,
 1 AS `nb_apnees`,
 1 AS `nb_hypopnees`,
 1 AS `nb_rera`,
 1 AS `nb_microeveils`,
 1 AS `duree_sommeil_min`,
 1 AS `duree_hypoxie_min`,
 1 AS `position_dominante`,
 1 AS `duree_apnee_moy_sec`,
 1 AS `duree_apnee_max_sec`,
 1 AS `decibels_max`,
 1 AS `decibels_moy`,
 1 AS `nb_ronflements_forts`,
 1 AS `severite_iah`,
 1 AS `commentaire_medical`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vue_suivipatient`
--

DROP TABLE IF EXISTS `vue_suivipatient`;
/*!50001 DROP VIEW IF EXISTS `vue_suivipatient`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vue_suivipatient` AS SELECT 
 1 AS `nom_patient`,
 1 AS `nom_medecin`,
 1 AS `date_suivi`,
 1 AS `poids`,
 1 AS `imc`,
 1 AS `tension_systolique`,
 1 AS `tension_diastolique`,
 1 AS `statut_tabac`,
 1 AS `notes_evolution`,
 1 AS `statut_patient`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'clinique'
--

--
-- Dumping routines for database 'clinique'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_compteur_apnees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_compteur_apnees`()
BEGIN
    SELECT COUNT(*) AS nb_evenement_respiratoire_apnee
    FROM evenement_respiratoire
    WHERE type_evenement LIKE 'apnÃ©e obstructive'
       OR type_evenement LIKE 'apnÃ©e centrale';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lire_resultat_nuit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lire_resultat_nuit`(
    IN  p_id_nuit  INT
)
BEGIN
 
    -- Une seule requÃªte qui rassemble tout ce dont le rapport
    -- a besoin : identitÃ© patient, infos nuit, et rÃ©sultat complet.
    -- Le rapport Python n'a donc qu'un seul appel Ã  faire,
    -- pas de jointures Ã  gÃ©rer cÃ´tÃ© Python.
    SELECT
        -- IdentitÃ© patient
        p.id_patient,
        p.nom,
        p.prenom,
 
        -- Contexte de la nuit
        n.id_nuit,
        n.date_nuit,
        n.type_etude,
 
        -- MÃ©decin qui a validÃ© le rÃ©sultat
        m.id_personnel   AS id_medecin,
        per.nom          AS nom_medecin,
        per.prenom       AS prenom_medecin,
 
        -- RÃ©sultat complet de la nuit
        r.iah,
        r.severite_iah,
        r.spo2_min,
        r.spo2_moy,
        r.spo2_mediane,
        r.nb_apnees,
        r.nb_hypopnees,
        r.nb_rera,
        r.nb_microeveils,
        r.duree_sommeil_min,
        r.duree_hypoxie_min,
        r.position_dominante,
        r.duree_apnee_moy_sec,
        r.duree_apnee_max_sec,
        r.decibels_max,
        r.decibels_moy,
        r.nb_ronflements_forts,
        r.commentaire_medical,
        r.date_validation
 
    FROM resultat_nuit r
    JOIN nuit_etude n        ON n.id_nuit = r.id_nuit
    JOIN patient p           ON p.id_patient = n.id_patient
    JOIN medecin m            ON m.id_personnel = r.id_medecin_validateur
    JOIN personnel per        ON per.id_personnel = m.id_personnel
 
    WHERE r.id_nuit = p_id_nuit;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `clinique`
--

USE `clinique`;

--
-- Final view structure for view `suivi_cpapjour`
--

/*!50001 DROP VIEW IF EXISTS `suivi_cpapjour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `suivi_cpapjour` AS select concat(`patient`.`prenom`,' ',`patient`.`nom`) AS `nom_patient`,`cp`.`date_jour` AS `date_jour`,`cp`.`duree_utilisation_h` AS `duree_utilisation_h`,`cp`.`iah_residuel` AS `iah_residuel`,`cp`.`fuites_l_min` AS `fuites_l_min`,`cp`.`nb_evenements` AS `nb_evenements`,`cp`.`qualite_donnee` AS `qualite_donnee` from ((`suivi_cpap_jour` `cp` left join `appareil_cpap` on((`cp`.`id_appareil` = `appareil_cpap`.`id_patient`))) left join `patient` on((`cp`.`id_suivi` = `patient`.`id_patient`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_nuit_etude`
--

/*!50001 DROP VIEW IF EXISTS `vue_nuit_etude`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_nuit_etude` AS select concat(`superviseur`.`prenom`,' ',`superviseur`.`nom`) AS `nom_superviseur`,concat(`medecin`.`prenom`,' ',`medecin`.`nom`) AS `nom_medecin`,concat(`patient`.`prenom`,' ',`patient`.`nom`) AS `nom_patient`,`ne`.`date_nuit` AS `date_nuit`,`ne`.`type_etude` AS `type_etude`,`ne`.`notes_techniques` AS `notes_techniques`,`appareil_psg`.`type_montage` AS `equipement`,`prescription_nuit`.`motif_prescription` AS `motif_prescription` from (((((`nuit_etude` `ne` left join `patient` on((`ne`.`id_patient` = `patient`.`id_patient`))) left join `personnel` `superviseur` on((`ne`.`id_superviseur` = `superviseur`.`id_personnel`))) left join `personnel` `medecin` on((`ne`.`id_medecin` = `medecin`.`id_personnel`))) left join `appareil_psg` on((`ne`.`id_appareil_psg` = `appareil_psg`.`id_appareil`))) left join `prescription_nuit` on((`ne`.`id_nuit` = `prescription_nuit`.`id_nuit`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_patients`
--

/*!50001 DROP VIEW IF EXISTS `vue_patients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_patients` AS select `patient`.`id_patient` AS `id_patient`,`patient`.`nom` AS `nom`,`patient`.`prenom` AS `prenom`,`patient`.`date_naissance` AS `date_naissance`,`patient`.`sexe` AS `sexe`,`patient`.`adresse` AS `adresse`,`patient`.`telephone` AS `telephone`,`patient`.`email` AS `email`,`patient`.`numero_secu` AS `numero_secu`,`patient`.`imc_initial` AS `imc_initial`,`patient`.`fumeur` AS `fumeur`,`patient`.`pa_tabac` AS `pa_tabac`,`patient`.`consommation_alcool` AS `consommation_alcool`,`patient`.`profession` AS `profession`,`patient`.`niveau_activite` AS `niveau_activite`,`patient`.`date_creation_dpi` AS `date_creation_dpi`,`patient`.`actif` AS `actif` from `patient` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_resultat_nuit`
--

/*!50001 DROP VIEW IF EXISTS `vue_resultat_nuit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_resultat_nuit` AS select `rn`.`id_nuit` AS `id_nuit`,concat(`patient`.`prenom`,' ',`patient`.`nom`) AS `nom_patient`,concat(`personnel`.`prenom`,' ',`personnel`.`nom`) AS `nom_medecinValidateur`,`rn`.`date_validation` AS `date_validation`,`rn`.`iah` AS `iah`,`rn`.`spo2_min` AS `spo2_min`,`rn`.`spo2_moy` AS `spo2_moy`,`rn`.`spo2_mediane` AS `spo2_mediane`,`rn`.`nb_apnees` AS `nb_apnees`,`rn`.`nb_hypopnees` AS `nb_hypopnees`,`rn`.`nb_rera` AS `nb_rera`,`rn`.`nb_microeveils` AS `nb_microeveils`,`rn`.`duree_sommeil_min` AS `duree_sommeil_min`,`rn`.`duree_hypoxie_min` AS `duree_hypoxie_min`,`rn`.`position_dominante` AS `position_dominante`,`rn`.`duree_apnee_moy_sec` AS `duree_apnee_moy_sec`,`rn`.`duree_apnee_max_sec` AS `duree_apnee_max_sec`,`rn`.`decibels_max` AS `decibels_max`,`rn`.`decibels_moy` AS `decibels_moy`,`rn`.`nb_ronflements_forts` AS `nb_ronflements_forts`,`rn`.`severite_iah` AS `severite_iah`,`rn`.`commentaire_medical` AS `commentaire_medical` from (((`resultat_nuit` `rn` left join `nuit_etude` `ne` on((`rn`.`id_nuit` = `ne`.`id_nuit`))) left join `patient` on((`ne`.`id_patient` = `patient`.`id_patient`))) left join `personnel` on((`rn`.`id_medecin_validateur` = `personnel`.`id_personnel`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_suivipatient`
--

/*!50001 DROP VIEW IF EXISTS `vue_suivipatient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_suivipatient` AS select concat(`patient`.`prenom`,' ',`patient`.`nom`) AS `nom_patient`,concat(`personnel`.`prenom`,' ',`personnel`.`nom`) AS `nom_medecin`,`sp`.`date_suivi` AS `date_suivi`,`sp`.`poids` AS `poids`,`sp`.`imc` AS `imc`,`sp`.`tension_systolique` AS `tension_systolique`,`sp`.`tension_diastolique` AS `tension_diastolique`,`sp`.`statut_tabac` AS `statut_tabac`,`sp`.`notes_evolution` AS `notes_evolution`,`sp`.`statut_patient` AS `statut_patient` from ((`suivi_patient` `sp` left join `patient` on((`sp`.`id_patient` = `patient`.`id_patient`))) left join `personnel` on((`sp`.`id_medecin` = `personnel`.`id_personnel`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-16  9:12:40
