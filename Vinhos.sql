CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `regiao`
--

DROP TABLE IF EXISTS `regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiao` (
  `codRegiao` bigint NOT NULL,
  `nomeRegiao` varchar(100) NOT NULL,
  `descricaoRegiao` text,
  PRIMARY KEY (`codRegiao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiao`
--

LOCK TABLES `regiao` WRITE;
/*!40000 ALTER TABLE `regiao` DISABLE KEYS */;
INSERT INTO `regiao` VALUES (1,'Vêneto','Endereço: Via delle Vigne, 123'),(2,'Bordeaux','Endereço: Rue des Vignes, 456'),(3,'Hampshire','Endereço: Vineyard Lane, Hampshire'),(4,'Württemberg','Endereço: Weinstraße, 789'),(5,'Toledo','Endereço: Estrada das Uvas, 567');
/*!40000 ALTER TABLE `regiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinho`
--

DROP TABLE IF EXISTS `vinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vinho` (
  `codVinho` bigint NOT NULL,
  `nomeVinho` varchar(50) NOT NULL,
  `tipoVinho` varchar(30) NOT NULL,
  `anoVinho` int NOT NULL,
  `descricaoVinho` text,
  `codVinicola` bigint NOT NULL,
  PRIMARY KEY (`codVinho`),
  KEY `fk_Vinho_Vinicola_idx` (`codVinicola`),
  CONSTRAINT `fk_Vinho_Vinicola` FOREIGN KEY (`codVinicola`) REFERENCES `vinicola` (`codVinicola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinho`
--

LOCK TABLES `vinho` WRITE;
/*!40000 ALTER TABLE `vinho` DISABLE KEYS */;
INSERT INTO `vinho` VALUES (1, 'Pavarin', 'Tinto', 1943, 'Conhecido por sua rica cor vermelha e sabor encorpado. Com aromas que variam de frutas escuras a especiarias.', 1),(2, 'Valentin', 'Branco', 1941, 'Conhecido por sua coloração que varia de amarelo pálido a dourado. São frescos e vibrantes, com sabores que podem incluir frutas brancas e minerais.', 2),(3, 'Dangelo', 'Rosé', 1971, 'Têm uma cor que varia de rosa pálido a salmão. Eles são conhecidos por sua elegância e frescor, com sabores que lembram frutas vermelhas e notas florais.', 3),(4, 'Guibe', 'Espumante', 1945, 'Caracterizados por suas borbulhas efervescentes. Eles vêm em variedades secas a doces e podem variar de delicados e cremosos a nítidos e refrescantes, com notas de maçã verde, pera e brioche.', 4),(5, 'Crefta', 'Licoroso', 1999, 'Conhecidos pela doçura equilibrada e complexidade de sabores. Ricos e doces, com sabores que podem incluir frutas secas, caramelo e especiarias.', 5);
/*!40000 ALTER TABLE `vinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinicola`
--

DROP TABLE IF EXISTS `vinicola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vinicola` (
  `codVinicola` bigint NOT NULL,
  `nomeVinicola` varchar(100) NOT NULL,
  `descricaoVinicola` text,
  `foneVinicola` varchar(15) DEFAULT NULL,
  `emailVinicola` varchar(15) DEFAULT NULL,
  `codRegiao` bigint NOT NULL,
  PRIMARY KEY (`codVinicola`),
  KEY `fk_Vinicola_Regiao1_idx` (`codRegiao`),
  CONSTRAINT `fk_Vinicola_Regiao1` FOREIGN KEY (`codRegiao`) REFERENCES `regiao` (`codRegiao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinicola`
--

LOCK TABLES `vinicola` WRITE;
/*!40000 ALTER TABLE `vinicola` DISABLE KEYS */;
INSERT INTO `vinicola` VALUES (1, 'Pavarin', 'Localizada nas pitorescas colinas da região de Vênedo, esta vinícola familiar é conhecida por produzir vinhos excepcionais que capturam a essência do terroir italiano.', '+39 123 456 789', 'vinopavarin@gmail.com', 1),(2, 'Valentin', 'Situada no coração da lendária região de Bordeaux, esta vinícola histórica é um marco de excelência em vinhos franceses, com vinhedos que remontam a séculos atrás.', '+33 1 2345 6789', 'vinvalentin@gmail.com', 2),(3, 'Dangelo', 'Esta vinícola britânica desafia as expectativas, produzindo vinhos espumantes premiados na bela região de Hampshire. Com uma abordagem meticulosa à viticultura e à produção de vinhos, rivaliza com os melhores da Europa.', '+44 20 1234 5678', 'dangelowine@gmail.com', 3),(4, 'Guibe', 'Localizada na idílica região de Wurttember, esta vinícola alemã é especializada em vinhos espumantes de classe mundial. Com vinhedos cuidadosamente mantidos nas encostas do rio Neckar.', '+49 711 1234567', 'guibewein@gmail.com', 4),(5, 'Crefta', 'Localizada em Toledo, município brasileiro no Paraná, esta vinícola brasileira é conhecida por sua abordagem inovadora na produção de vinhos. Produz vinhos vibrantes e cheios de sabor, que representam o espírito da viticultura brasileira.', '+55 45 9876 5432', 'vinhocrefta@gmail.com', 5);
/*!40000 ALTER TABLE `vinicola` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-25  1:21:09

CREATE USER 'Sommelier'@'localhost' IDENTIFIED BY 'senha';

GRANT SELECT ON mydb.Vinho TO 'Sommelier'@'localhost';
GRANT SELECT (codVinicola, nomeVinicola) ON mydb.Vinicola TO 'Sommelier'@'localhost';
ALTER USER 'Sommelier'@'localhost' WITH MAX_QUERIES_PER_HOUR 40;

