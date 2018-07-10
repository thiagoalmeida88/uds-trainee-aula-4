CREATE DATABASE  IF NOT EXISTS `db_rede_social` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_rede_social`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_rede_social
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
-- Table structure for table `tb_comentario`
--

DROP TABLE IF EXISTS `tb_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comentario` (
  `cod_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_comentario` varchar(500) NOT NULL,
  `data_comentario` datetime NOT NULL,
  `cod_pessoa` int(11) NOT NULL,
  `cod_postagem` int(11) NOT NULL,
  PRIMARY KEY (`cod_comentario`),
  KEY `fk_tb_comentario_tb_pessoa1_idx` (`cod_pessoa`),
  KEY `fk_tb_comentario_tb_postagem1_idx` (`cod_postagem`),
  CONSTRAINT `fk_tb_comentario_tb_pessoa1` FOREIGN KEY (`cod_pessoa`) REFERENCES `tb_pessoa` (`cod_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_comentario_tb_postagem1` FOREIGN KEY (`cod_postagem`) REFERENCES `tb_postagem` (`cod_postagem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comentario`
--

LOCK TABLES `tb_comentario` WRITE;
/*!40000 ALTER TABLE `tb_comentario` DISABLE KEYS */;
INSERT INTO `tb_comentario` VALUES (2,'POXA NEUMAR, VOCÊ FOI MUITO MAL HEIN, PODE PENDURAR AS CHUTEIRAS!!!','2018-06-30 00:00:00',3,1);
/*!40000 ALTER TABLE `tb_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_compartilhamento`
--

DROP TABLE IF EXISTS `tb_compartilhamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_compartilhamento` (
  `cod_compartilhamento` int(11) NOT NULL AUTO_INCREMENT,
  `status_compartilhamento` tinyint(1) NOT NULL,
  `cod_postagem` int(11) NOT NULL,
  `cod_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`cod_compartilhamento`),
  KEY `fk_tb_compartilhamento_tb_postagem1_idx` (`cod_postagem`),
  KEY `fk_tb_compartilhamento_tb_pessoa1_idx` (`cod_pessoa`),
  CONSTRAINT `fk_tb_compartilhamento_tb_pessoa1` FOREIGN KEY (`cod_pessoa`) REFERENCES `tb_pessoa` (`cod_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_compartilhamento_tb_postagem1` FOREIGN KEY (`cod_postagem`) REFERENCES `tb_postagem` (`cod_postagem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_compartilhamento`
--

LOCK TABLES `tb_compartilhamento` WRITE;
/*!40000 ALTER TABLE `tb_compartilhamento` DISABLE KEYS */;
INSERT INTO `tb_compartilhamento` VALUES (1,1,1,3),(2,1,1,4),(3,1,1,7);
/*!40000 ALTER TABLE `tb_compartilhamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_like`
--

DROP TABLE IF EXISTS `tb_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_like` (
  `cod_like` int(11) NOT NULL AUTO_INCREMENT,
  `emotion_like` char(3) NOT NULL COMMENT '1 - :-)\n2 - :-|\n3 - :-(',
  `data_like` datetime NOT NULL,
  `cod_pessoa` int(11) NOT NULL,
  `cod_postagem` int(11) NOT NULL,
  PRIMARY KEY (`cod_like`),
  KEY `fk_tb_like_tb_pessoa1_idx` (`cod_pessoa`),
  KEY `fk_tb_like_tb_postagem1_idx` (`cod_postagem`),
  CONSTRAINT `fk_tb_like_tb_pessoa1` FOREIGN KEY (`cod_pessoa`) REFERENCES `tb_pessoa` (`cod_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_like_tb_postagem1` FOREIGN KEY (`cod_postagem`) REFERENCES `tb_postagem` (`cod_postagem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_like`
--

LOCK TABLES `tb_like` WRITE;
/*!40000 ALTER TABLE `tb_like` DISABLE KEYS */;
INSERT INTO `tb_like` VALUES (1,':-(','2018-06-30 00:00:00',5,1),(2,':-)','2018-07-01 00:00:00',3,1);
/*!40000 ALTER TABLE `tb_like` ENABLE KEYS */;
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
  `email_pessoa` varchar(45) NOT NULL,
  `apelido_pessoa` varchar(45) DEFAULT NULL,
  `idade_pessoa` smallint(3) NOT NULL,
  `nascimento_pessoa` datetime DEFAULT NULL,
  `data_cadastro` date NOT NULL,
  PRIMARY KEY (`cod_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoa`
--

LOCK TABLES `tb_pessoa` WRITE;
/*!40000 ALTER TABLE `tb_pessoa` DISABLE KEYS */;
INSERT INTO `tb_pessoa` VALUES (1,'Neumar','neumar@gmail.com','neumar.jr',22,'1990-03-04 17:53:19','2005-12-27'),(3,'Ricardo Oliveira','rick@gmail.com','rick.panela',32,'1986-06-14 23:30:01','2009-11-13'),(4,'Calrlos','kaka@gmail.com','kaka.malandrinho',29,'1999-12-13 16:00:19','2001-10-05'),(5,'Rogério Ceni','ceni@gmail.com','ceninha',41,'1981-03-04 17:53:19','1985-12-27'),(6,'Paulo Claudio','paulo@gmail.com','paulo.paulada',50,'1970-03-04 17:53:19','2005-12-27'),(7,'Reinaldo Mancini','mancini@gmail.com','mancinao',69,'1930-03-04 17:53:19','2005-12-27');
/*!40000 ALTER TABLE `tb_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_postagem`
--

DROP TABLE IF EXISTS `tb_postagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_postagem` (
  `cod_postagem` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_postagem` varchar(500) NOT NULL,
  `tipo_postagem` varchar(45) DEFAULT NULL,
  `data_postagem` datetime NOT NULL,
  `cod_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`cod_postagem`),
  KEY `fk_tb_postagem_tb_pessoa_idx` (`cod_pessoa`),
  CONSTRAINT `fk_tb_postagem_tb_pessoa` FOREIGN KEY (`cod_pessoa`) REFERENCES `tb_pessoa` (`cod_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_postagem`
--

LOCK TABLES `tb_postagem` WRITE;
/*!40000 ALTER TABLE `tb_postagem` DISABLE KEYS */;
INSERT INTO `tb_postagem` VALUES (1,'Hoje eu não joguei bosta nenhuma. Fui um péssimo futebolista. Mas aguardem, irei melhoras seus mané!','reflexivo','2018-06-30 00:00:00',1);
/*!40000 ALTER TABLE `tb_postagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 22:53:59
