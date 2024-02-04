-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: media_aluno
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `tb_cadastro_aluno`
--

DROP TABLE IF EXISTS `tb_cadastro_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cadastro_aluno` (
  `cd_aluno` int NOT NULL AUTO_INCREMENT,
  `nm_aluno` varchar(200) NOT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  `ds_obs` varchar(500) DEFAULT NULL,
  `nr_idade` int NOT NULL,
  `ds_serie` varchar(100) NOT NULL,
  PRIMARY KEY (`cd_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cadastro_aluno`
--

LOCK TABLES `tb_cadastro_aluno` WRITE;
/*!40000 ALTER TABLE `tb_cadastro_aluno` DISABLE KEYS */;
INSERT INTO `tb_cadastro_aluno` VALUES (1,'Etevaldo Da Silva',NULL,'Veio de Outro PLaneta',99,'Quinta Serie'),(2,'Gerosvildo Agilar',NULL,'Nome Estranho',13,'Sexta Serie'),(3,'Antonio Nunes',NULL,'Que da um tapa na PErna',45,'Terceira Serie');
/*!40000 ALTER TABLE `tb_cadastro_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_frequencia`
--

DROP TABLE IF EXISTS `tb_frequencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_frequencia` (
  `cd_frequencia` int NOT NULL AUTO_INCREMENT,
  `cd_aluno` int NOT NULL,
  `nr_faltas` int NOT NULL,
  PRIMARY KEY (`cd_frequencia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_frequencia`
--

LOCK TABLES `tb_frequencia` WRITE;
/*!40000 ALTER TABLE `tb_frequencia` DISABLE KEYS */;
INSERT INTO `tb_frequencia` VALUES (1,1,30),(2,2,4),(3,3,15);
/*!40000 ALTER TABLE `tb_frequencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_media_aluno`
--

DROP TABLE IF EXISTS `tb_media_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_media_aluno` (
  `cd_media` int NOT NULL AUTO_INCREMENT,
  `cd_aluno` int NOT NULL,
  `nr_media` int NOT NULL,
  PRIMARY KEY (`cd_media`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_media_aluno`
--

LOCK TABLES `tb_media_aluno` WRITE;
/*!40000 ALTER TABLE `tb_media_aluno` DISABLE KEYS */;
INSERT INTO `tb_media_aluno` VALUES (1,1,10),(2,3,4);
/*!40000 ALTER TABLE `tb_media_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_notas_aluno`
--

DROP TABLE IF EXISTS `tb_notas_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_notas_aluno` (
  `cd_nota_aluno` int NOT NULL AUTO_INCREMENT,
  `cd_aluno` int NOT NULL,
  `nr_nota1` int NOT NULL,
  `nr_nota2` int NOT NULL,
  `nr_nota3` int NOT NULL,
  `ds_obs` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cd_nota_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_notas_aluno`
--

LOCK TABLES `tb_notas_aluno` WRITE;
/*!40000 ALTER TABLE `tb_notas_aluno` DISABLE KEYS */;
INSERT INTO `tb_notas_aluno` VALUES (1,1,10,10,10,NULL),(2,2,10,5,7,NULL),(3,3,5,5,3,NULL);
/*!40000 ALTER TABLE `tb_notas_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_recuperacao`
--

DROP TABLE IF EXISTS `tb_recuperacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_recuperacao` (
  `cd_recuperacao` int NOT NULL AUTO_INCREMENT,
  `cd_aluno` int NOT NULL,
  `nr_nota_faltante` int NOT NULL,
  PRIMARY KEY (`cd_recuperacao`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_recuperacao`
--

LOCK TABLES `tb_recuperacao` WRITE;
/*!40000 ALTER TABLE `tb_recuperacao` DISABLE KEYS */;
INSERT INTO `tb_recuperacao` VALUES (1,3,3);
/*!40000 ALTER TABLE `tb_recuperacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vm_aluno_recuperacao`
--

DROP TABLE IF EXISTS `vm_aluno_recuperacao`;
/*!50001 DROP VIEW IF EXISTS `vm_aluno_recuperacao`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vm_aluno_recuperacao` AS SELECT 
 1 AS `cd_aluno`,
 1 AS `nm_aluno`,
 1 AS `nr_media`,
 1 AS `nr_nota_faltante`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_alunos`
--

DROP TABLE IF EXISTS `vw_alunos`;
/*!50001 DROP VIEW IF EXISTS `vw_alunos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alunos` AS SELECT 
 1 AS `cd_aluno`,
 1 AS `nm_aluno`,
 1 AS `ds_obs`,
 1 AS `nr_idade`,
 1 AS `ds_serie`,
 1 AS `Nota_1`,
 1 AS `Nota_2`,
 1 AS `Nota_3`,
 1 AS `nr_faltas`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vm_aluno_recuperacao`
--

/*!50001 DROP VIEW IF EXISTS `vm_aluno_recuperacao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vm_aluno_recuperacao` AS select `a`.`cd_aluno` AS `cd_aluno`,`a`.`nm_aluno` AS `nm_aluno`,`m`.`nr_media` AS `nr_media`,`r`.`nr_nota_faltante` AS `nr_nota_faltante` from ((`tb_cadastro_aluno` `a` join `tb_media_aluno` `m`) join `tb_recuperacao` `r`) where ((`a`.`cd_aluno` = `m`.`cd_aluno`) and (`a`.`cd_aluno` = `r`.`cd_aluno`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_alunos`
--

/*!50001 DROP VIEW IF EXISTS `vw_alunos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alunos` AS select `a`.`cd_aluno` AS `cd_aluno`,`a`.`nm_aluno` AS `nm_aluno`,`a`.`ds_obs` AS `ds_obs`,`a`.`nr_idade` AS `nr_idade`,`a`.`ds_serie` AS `ds_serie`,`n`.`nr_nota1` AS `Nota_1`,`n`.`nr_nota2` AS `Nota_2`,`n`.`nr_nota3` AS `Nota_3`,`f`.`nr_faltas` AS `nr_faltas` from ((`tb_cadastro_aluno` `a` join `tb_notas_aluno` `n`) join `tb_frequencia` `f`) where ((`a`.`cd_aluno` = `n`.`cd_aluno`) and (`a`.`cd_aluno` = `f`.`cd_aluno`)) */;
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

-- Dump completed on 2024-02-04 17:44:11
