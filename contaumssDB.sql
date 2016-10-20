-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: contaumss
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `usuariopermisos`
--

DROP TABLE IF EXISTS `usuariopermisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuariopermisos` (
  `codUsuario` smallint(7) NOT NULL,
  `menu` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `deposito` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `proceso1` tinyint(1) DEFAULT NULL,
  `proceso2` tinyint(1) DEFAULT NULL,
  `proceso3` tinyint(1) DEFAULT NULL,
  `proceso4` tinyint(1) DEFAULT NULL,
  `proceso5` tinyint(1) DEFAULT NULL,
  `proceso6` tinyint(1) DEFAULT NULL,
  `proceso7` tinyint(1) DEFAULT NULL,
  `proceso8` tinyint(1) DEFAULT NULL,
  `proceso9` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariopermisos`
--

LOCK TABLES `usuariopermisos` WRITE;
/*!40000 ALTER TABLE `usuariopermisos` DISABLE KEYS */;
INSERT INTO `usuariopermisos` VALUES (1,'todos','todos',1,1,1,1,1,1,1,1,1),(2,'inventarios','bodega',1,1,1,1,NULL,NULL,NULL,NULL,NULL),(3,'inventarios','almacen',1,1,1,1,NULL,NULL,NULL,NULL,NULL),(4,'contabilidad',NULL,1,1,1,1,1,1,1,1,1),(5,'ventas',NULL,1,1,1,1,1,1,NULL,NULL,NULL),(6,'ventas',NULL,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(7,'todos',NULL,1,1,1,1,1,1,1,1,1),(8,'contabilidad',NULL,1,1,1,1,1,1,1,1,1),(9,'contabilidad',NULL,1,1,1,1,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuariopermisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` smallint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasenha` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'superuser','21232f297a57a5a743894a0e4a801fc3'),(2,'thanos229','f405b93c00c22d3565915c76ddd94a06'),(3,'oscar','f9922f37d18cbcf7bcd5057a2e960f2e'),(4,'conta1','0493c6183b554f8520ee6d7d7bc7b7dd'),(5,'store1','7507fced52c1501a896484988b04ebd1'),(6,'store2','160c2652076b7f9e670b86fc5e7cf101'),(7,'developer','69f45230b269789bf27f266a6fdd8739'),(8,'conta2','36946b2d213b6831d4e51a5e88cedcce'),(9,'conta3','0aa0b6b3207f0b3839381db1962574a2');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-20 14:52:23
