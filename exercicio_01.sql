CREATE DATABASE  IF NOT EXISTS `exercicio_01` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `exercicio_01`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: exercicio_01
-- ------------------------------------------------------
-- Server version	5.6.37-log

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
-- Table structure for table `tb_instrumento`
--

DROP TABLE IF EXISTS `tb_instrumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_instrumento` (
  `cod_instrumento` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pessoa` int(11) NOT NULL,
  `nome_instrumento` varchar(45) NOT NULL,
  `tipo_instrumento` varchar(45) DEFAULT NULL,
  `condicao_instrumento` varchar(20) DEFAULT NULL,
  `data_aquisicao` date NOT NULL,
  PRIMARY KEY (`cod_instrumento`),
  KEY `cod_pessoa_idx` (`cod_pessoa`),
  CONSTRAINT `cod_pessoa` FOREIGN KEY (`cod_pessoa`) REFERENCES `tb_pessoa` (`cod_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_instrumento`
--

LOCK TABLES `tb_instrumento` WRITE;
/*!40000 ALTER TABLE `tb_instrumento` DISABLE KEYS */;
INSERT INTO `tb_instrumento` VALUES (3,3,'Flaura','Sopro','Semi-novo','2012-10-12'),(4,4,'Gaita','Sopro','Novo','2000-10-12'),(11,1,'Bateria','Percussão','Usado','2014-10-12'),(12,2,'Guitarra','Cordas','Novo','2015-11-22'),(13,3,'Flaura','Sopro','Semi-novo','2012-10-12'),(14,4,'Gaita','Sopro','Novo','2000-10-12'),(15,5,'Teclado','Teclas','Semi-novo','2011-10-12'),(16,6,'Bandolê','Percussão','Novo','2018-06-12'),(17,7,'Reco reco','Percussão','Novo','1990-10-12'),(18,8,'Bateria','Percussão','Usado','2014-10-12'),(19,9,'Baixo','Cordas','Usado','2015-10-12'),(20,10,'Violão','Cordas','Novo','2016-10-12');
/*!40000 ALTER TABLE `tb_instrumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoa`
--

DROP TABLE IF EXISTS `tb_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pessoa` (
  `cod_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome_pessoa` varchar(45) NOT NULL,
  `idade_pessoa` smallint(3) NOT NULL,
  `nascimento_pessoa` datetime NOT NULL,
  `sexo_pessoa` tinyint(1) NOT NULL,
  `endereco_pessoa` varchar(200) DEFAULT NULL,
  `descricao_pessoa` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cod_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoa`
--

LOCK TABLES `tb_pessoa` WRITE;
/*!40000 ALTER TABLE `tb_pessoa` DISABLE KEYS */;
INSERT INTO `tb_pessoa` VALUES (1,'Fernando Souza',23,'1988-10-10 23:30:00',1,'Rua Acácia, 120','Toca baixo'),(2,'ThiagO',32,'1986-04-08 17:30:00',1,'Rua flor de Lótus, 250','Toca bateria'),(3,'Rui Barbosa',11,'2000-04-08 17:30:00',1,'Rua Alemao, 490','Toca gaita'),(4,'Chinelo 40',132,'1786-04-09 17:30:00',1,'BR 369 S/N',''),(5,'Reinaldo Testa',19,'2001-03-06 20:45:03',1,'Rua Laranjeiras, 1500','Todas diversos instrumentos'),(6,'Gusmao',92,'1906-04-08 17:30:00',0,'Rua fulan tuca, 1250','Toca faluta'),(7,'Reinaldo Testa',19,'2001-03-06 20:45:03',0,'Rua Laranjeiras, 1500','Todas diversos instrumentos'),(8,'Ferdinando',35,'1983-04-08 17:30:00',0,'Rua Ceginha, S/N','Não toca'),(9,'Chinelo 40',132,'1786-04-09 17:30:00',0,'BR 369 S/N',''),(10,'Reinaldo Testa',19,'2001-03-06 20:45:03',0,'Rua Laranjeiras, 1500','Todas diversos instrumentos'),(11,'Rui Barbosa',11,'2000-04-08 17:30:00',0,'Rua Alemao, 490','Toca gaita');
/*!40000 ALTER TABLE `tb_pessoa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 23:08:55
