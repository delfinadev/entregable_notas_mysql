CREATE DATABASE  IF NOT EXISTS `notes` 
/*!40100 DEFAULT CHARACTER SET latin1 */;
USE `notes`;

-- MySQL dump 10.14  Distrib 5.5.40, for Win64 (x86)
--
-- Host: localhost    Database: notes
-- ------------------------------------------------------
-- Server version	5.5.40

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

--------------------------
--- TABLA DE NOTAS ----
--------------------------

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `notes_id` int  OT NULL AUTO_INCREMENT,
  `note_title` varchar(100) DEFAULT NULL,
  `note_description` text,
  `creation_date` datetime DEFAULT NULL,
  `last_edited` datetime DEFAULT NULL,
  `boolean_delete` tinyint(1) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

---------------------------
--- REGISTROS DE NOTAS ----
---------------------------

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Lista del super','Huevos, pan, leche', 2021-08-14 21:45:59, 2021-08-14 21:45:59, 1, 3),
(2,'Anime favoritos','Saiki Kusuo No Psi-Nan, Jujutsu Kaisen, Jojos Bizarre Adventure', 2021-07-12 18:10:52, 2021-07-12 18:10:52, 1, 9),
(3,'Libros leídos','1984, Rayuela, The Alchemist', 2021-05-18 14:25:55, 2021-05-18 14:25:55, 1, 5),
(4,'Canciones favoritas','Butter, Dynamite, Boy With Luv, Fire', 2021-07-01 03:22:08, 2021-07-01 03:22:08, 1, 8),
(5,'Sitcoms favoritas','Community, How I Met Your Mother', 2021-02-13 19:57:49, 2021-02-13 19:57:49, 1, 6),
(6,'To-do list','Terminar el curso de DH', 2021-01-30 20:20:01, 2021-01-30 20:20:01, 1, 4),
(7,'Mi cumpleaños','24 de julio', 2021-10-19 16:23:57, 2021-10-19 16:23:57, 1, 7),
(8,'Canción favorita','All Too Well (Taylors Version) (10 Minute Version)', 2021-06-27 03:13:42, 2021-06-27 03:13:42, 1, 2),
(9,'Materias','Analisis Matematico, Algebra', 2021-11-04 01:26:08, 2021-11-04 01:26:08, 1, 1),

/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

-- 10 row(s) affected, 31 warning(s): 1265 Data truncated for column 'note_title' at row 1 1265 Data truncated for column 'creation_date' at row 1 1265 Data truncated for column 'last_edited' at row 1 1265 Data truncated for column 'note_title' at row 2 1265 Data truncated for column 'creation_date' at row 2 1265 Data truncated for column 'last_edited' at row 2 1265 Data truncated for column 'note_title' at row 3 1265 Data truncated for column 'creation_date' at row 3 1265 Data truncated for column 'last_edited' at row 3 1265 Data truncated for column 'note_title' at row 4 1265 Data truncated for column 'creation_date' at row 4 1265 Data truncated for column 'last_edited' at row 4 1265 Data truncated for column 'note_title' at row 5 1265 Data truncated for column 'creation_date' at row 5 1265 Data truncated for column 'last_edited' at row 5 1265 Data truncated for column 'note_title' at row 6 1366 Incorrect string value: '\xC3\xA9 el ...' for column `notes`.`notes`.`note_description` at row 6 1265 Data truncated for column 'creation_date' at row 6 1265 Data truncated for column 'last_edited' at row 6 1265 Data truncated for column 'note_title' at row 7 1265 Data truncated for column 'creation_date' at row 7 1265 Data truncated for column 'last_edited' at row 7 1265 Data truncated for column 'note_title' at row 8 1265 Data truncated for column 'creation_date' at row 8 1265 Data truncated for column 'last_edited' at row 8 1265 Data truncated for column 'note_title' at row 9 1265 Data truncated for column 'creation_date' at row 9 1265 Data truncated for column 'last_edited' at row 9 1265 Data truncated for column 'note_title' at row 10 1265 Data truncated for column 'creation_date' at row 10 1265 Data truncated for column 'last_edited' at row 10 Records: 10  Duplicates: 0  Warnings: 31

--------------------------
--- TABLA DE USUARIOS ----
--------------------------

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

-----------------------------
--- REGISTROS DE USUARIOS----
-----------------------------

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jeff','jeff@gmail.com'), (2,'Britta','britta@gmail.com'), (3,'Abed','abed@gmail.com'),
(4,'Troy','troy@gmail.com'), (5,'Annie','annie@gmail.com'), (6,'Pierce','pierce@gmail.com'), (7,'Shirley','shirley@gmail.com'),
(8,'Chang','benchang@gmail.com'),(9,'Starburns','starburns@gmail.com'), (10,'Dean','deanpelton@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


----------------------------
--- TABLA DE CATEGORÍAS ----
----------------------------

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


-----------------------------------
--- REGISTROS DE DE CATEGORÍAS ----
-----------------------------------


LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Universidad'),
(2,'Trabajo'),(3,'Viajes'),(4,'Películas'),(5,'Música'),(6,'Libros'),
(7,'To-do'),(8,'Backlog'),(9,'Anime'),(10,'Manga');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

-----------------------
--- TABLA DE LOGS  ----
-----------------------

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `log_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` smallint(6) DEFAULT NULL,
  `note_id` smallint(6) DEFAULT NULL,
  `log_description` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--------------------------
--- REGISTROS DE LOGS ----
--------------------------

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,5,6,'Creada'),(2,8,3,'Modificada'),(3,6,2,'Modificada'),
(4,8,7,'Creada'),(5,4,3,'Creada'),(6,5,9,'Creada'),(7,7,2,'Creada'),(8,5,3,'Modificada'),
(9,2,8,'Modificada'),(10,3,2,'Creada');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-30 19:38:47
