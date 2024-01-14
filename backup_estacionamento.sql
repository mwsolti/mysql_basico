CREATE DATABASE  IF NOT EXISTS `estacionamento` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `estacionamento`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: estacionamento
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `tb_carros_cadastrados`
--

DROP TABLE IF EXISTS `tb_carros_cadastrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carros_cadastrados` (
  `id_carro` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `placa` varchar(7) NOT NULL,
  PRIMARY KEY (`id_carro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carros_cadastrados`
--

LOCK TABLES `tb_carros_cadastrados` WRITE;
/*!40000 ALTER TABLE `tb_carros_cadastrados` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_carros_cadastrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carros_estacionados`
--

DROP TABLE IF EXISTS `tb_carros_estacionados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carros_estacionados` (
  `id_estacionamento` int NOT NULL AUTO_INCREMENT,
  `id_carro` int NOT NULL,
  `dt_hora_entrada` datetime NOT NULL,
  `dt_hora_saida` datetime DEFAULT NULL,
  PRIMARY KEY (`id_estacionamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carros_estacionados`
--

LOCK TABLES `tb_carros_estacionados` WRITE;
/*!40000 ALTER TABLE `tb_carros_estacionados` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_carros_estacionados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_fatura_estacionamento`
--

DROP TABLE IF EXISTS `tb_fatura_estacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_fatura_estacionamento` (
  `id_fatura` int NOT NULL AUTO_INCREMENT,
  `id_tipo_estacionamento` int NOT NULL,
  `qt_tempo_estacionado` int NOT NULL,
  `valor_total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_fatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fatura_estacionamento`
--

LOCK TABLES `tb_fatura_estacionamento` WRITE;
/*!40000 ALTER TABLE `tb_fatura_estacionamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_fatura_estacionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_estacionamento`
--

DROP TABLE IF EXISTS `tb_tipo_estacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo_estacionamento` (
  `iid_tipo_estacionamento` int NOT NULL,
  `valor_tipo_estacionamento` decimal(10,0) NOT NULL,
  PRIMARY KEY (`iid_tipo_estacionamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_estacionamento`
--

LOCK TABLES `tb_tipo_estacionamento` WRITE;
/*!40000 ALTER TABLE `tb_tipo_estacionamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tipo_estacionamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-14 17:32:57
