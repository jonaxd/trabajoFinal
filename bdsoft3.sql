CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `hojaclinica`
--

DROP TABLE IF EXISTS `hojaclinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hojaclinica` (
  `pacienteID` int(11) DEFAULT NULL,
  `hojaclinicaID` int(11) NOT NULL AUTO_INCREMENT,
  `contacto` varchar(45) DEFAULT NULL,
  `alergias` varchar(45) DEFAULT NULL,
  `talla` int(11) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `presion` int(11) DEFAULT NULL,
  `diagnostico` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`hojaclinicaID`),
  KEY `paciente_idx` (`pacienteID`),
  CONSTRAINT `paciente` FOREIGN KEY (`pacienteID`) REFERENCES `tbusuario` (`usuarioID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hojaclinica`
--

LOCK TABLES `hojaclinica` WRITE;
/*!40000 ALTER TABLE `hojaclinica` DISABLE KEYS */;
INSERT INTO `hojaclinica` VALUES (20,14,'Algunos','Algunas',165,70,36,100,'Limpio'),(21,15,'Nadie','Algunas',178,72,37,120,'Todo bien'),(22,16,'Alumnos','Ninguna',123,80,36,110,'OK'),(23,17,'Clientes','Nada',189,100,35,120,'Tranquilo');
/*!40000 ALTER TABLE `hojaclinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbclientes`
--

DROP TABLE IF EXISTS `tbclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbclientes` (
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbclientes`
--

LOCK TABLES `tbclientes` WRITE;
/*!40000 ALTER TABLE `tbclientes` DISABLE KEYS */;
INSERT INTO `tbclientes` VALUES ('jonathan','123'),('juan','123'),('mario','123'),('miguel','123');
/*!40000 ALTER TABLE `tbclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbinscritos`
--

DROP TABLE IF EXISTS `tbinscritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbinscritos` (
  `idinscritos` int(11) NOT NULL AUTO_INCREMENT,
  `idpartido` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idinscritos`),
  KEY `idtbpartido_idx` (`idpartido`),
  KEY `idusuario_idx` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbinscritos`
--

LOCK TABLES `tbinscritos` WRITE;
/*!40000 ALTER TABLE `tbinscritos` DISABLE KEYS */;
INSERT INTO `tbinscritos` VALUES (1,1,20),(2,1,21),(3,2,22),(4,2,23),(10,1,0),(11,1,0),(12,1,0),(13,1,0),(14,1,0),(15,1,0),(16,1,0),(17,1,0),(18,1,0),(19,1,0),(20,1,24);
/*!40000 ALTER TABLE `tbinscritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpartidos`
--

DROP TABLE IF EXISTS `tbpartidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbpartidos` (
  `idtbpartido` int(11) NOT NULL AUTO_INCREMENT,
  `cancha` varchar(45) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idtbpartido`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpartidos`
--

LOCK TABLES `tbpartidos` WRITE;
/*!40000 ALTER TABLE `tbpartidos` DISABLE KEYS */;
INSERT INTO `tbpartidos` VALUES (1,'Cancha1','22:00','Lugar1','c1'),(2,'Cancha2','12:00','Lugar2','c2'),(3,'Cancha3','13:00','Lugar3','c3'),(4,'Cancha4','14:00','Lugar4','c4'),(5,'Cancha5','15:00','Lugar5','c5'),(6,'Cancha6','07:00','Lugar6','c6'),(7,'Cancha7','08:00','Lugar7','c7');
/*!40000 ALTER TABLE `tbpartidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbusuario`
--

DROP TABLE IF EXISTS `tbusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbusuario` (
  `usuarioID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `posicion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`usuarioID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbusuario`
--

LOCK TABLES `tbusuario` WRITE;
/*!40000 ALTER TABLE `tbusuario` DISABLE KEYS */;
INSERT INTO `tbusuario` VALUES (20,'Miguel','miguel','123','54632178','Masculino',998765432,'Delantero'),(21,'Jonatan','jonathan','123','85274196','Masculino',963258741,'Portero'),(22,'Juan','juan','123','12345678','Masculino',987654321,'Defensa'),(23,'Mario','mario','123','32589614','Masculino',5555555,'Defensa'),(24,'Pedro','pedro','123','124415435','m',2134324124,'del');
/*!40000 ALTER TABLE `tbusuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-20 23:11:25
