-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'South Angelica'),(2,'Mariahshire'),(3,'Lilamouth'),(4,'Streichtown'),(5,'Jorgeland'),(6,'Robertsburgh'),(7,'Schusterchester'),(8,'Nellatown'),(9,'North Mertie'),(10,'East Anabelside'),(11,'Abernathyfort'),(12,'South Karlie'),(13,'East Laurieshire'),(14,'Brendonberg'),(15,'South Twilahaven'),(16,'South Enidburgh'),(17,'Ferryside'),(18,'Lake Toniton'),(19,'New Baronberg'),(20,'Raquelborough'),(21,'Malcolmport'),(22,'Bernierview'),(23,'Bethelport'),(24,'West Tyrel'),(25,'West Benniebury'),(26,'South Morrismouth'),(27,'West Ricardo'),(28,'Hettingerport'),(29,'Hahnmouth'),(30,'Boehmport'),(31,'South Demarco'),(32,'Imaniborough'),(33,'East Zoe'),(34,'Elnaview'),(35,'Port Akeemside'),(36,'Laurieburgh'),(37,'Urbanmouth'),(38,'Porterland'),(39,'Lake Lizeth'),(40,'North Queenieview'),(41,'Braunville'),(42,'Port Chaya'),(43,'Rathmouth'),(44,'Wizaberg'),(45,'East Shanelleside'),(46,'Britneymouth'),(47,'Labadieborough'),(48,'Sauerborough'),(49,'Abernathyfurt'),(50,'North Nicolas'),(51,'O\'Haraberg'),(52,'East Carrieville'),(53,'Lake Edaberg'),(54,'Champlinside'),(55,'Lake Duanemouth'),(56,'North Raphael'),(57,'West Lynn'),(58,'Gastonbury'),(59,'New Shanonbury'),(60,'West Aaliyah'),(61,'North Friedrichbury'),(62,'Lake Gracie'),(63,'Kirlinhaven'),(64,'West Gudrun'),(65,'West Simonechester'),(66,'Ortizshire'),(67,'South Lucioland'),(68,'Lake Maciestad'),(69,'Spencerhaven'),(70,'South Cloyd'),(71,'North Santos'),(72,'East Marlene'),(73,'Leonardoshire'),(74,'East Orvalside'),(75,'Rosemarieshire'),(76,'East Micheleton'),(77,'Port Juneland'),(78,'Lenoraview'),(79,'Robertstown'),(80,'Osborneshire'),(81,'Adamsberg'),(82,'Gildastad'),(83,'Lake Dena'),(84,'North Dalton'),(85,'Harrisstad'),(86,'Altheafurt'),(87,'Lake Malinda'),(88,'East Jovanny'),(89,'Leolamouth'),(90,'Maudetown'),(91,'Brodyville'),(92,'Ginofort'),(93,'Yesseniafort'),(94,'Blockshire'),(95,'West Kiel'),(96,'Lydafurt'),(97,'Neldaview'),(98,'West Freddie'),(99,'East Nadia'),(100,'South Greg');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_license_number` bigint(20) NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` bigint(20) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `driver_license_number` (`driver_license_number`),
  UNIQUE KEY `photo_id` (`photo_id`),
  KEY `first_last_name_idx` (`first_name`,`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'Ken','Abshire',20150365,'F',1285621,'1994-04-08'),(2,'Barrett','Jones',98928290,'M',14901171,'1980-10-04'),(3,'Letitia','Nikolaus',91409925,'F',40726,'2013-05-19'),(4,'Mya','Mosciski',16963103,'M',82810,'1996-09-23'),(5,'Tavares','Heathcote',14268877,'F',3276,'1995-12-27'),(6,'Valerie','Thompson',51586411,'F',286,'2014-02-05'),(7,'Jairo','Glover',17789143,'F',0,'2013-08-09'),(8,'Trystan','Gulgowski',92709088,'F',2946507,'2021-02-05'),(9,'Makenna','Schimmel',46283383,'F',3683318,'2010-07-06'),(10,'Adelia','Steuber',93905487,'M',9,'2015-07-15'),(11,'Flo','Dare',59360114,'M',8380,'1988-03-26'),(12,'Everette','Heller',71795474,'M',2919,'1992-05-01'),(13,'George','Schaefer',63812477,'M',163684156,'1983-06-17'),(14,'Sandra','Macejkovic',73150087,'F',7,'1979-01-06'),(15,'Magnolia','Erdman',27525735,'M',18,'1988-12-25'),(16,'Shane','Torphy',28274139,'F',42049753,'2013-09-04'),(17,'Kip','Maggio',18548530,'M',33196274,'2005-09-03'),(18,'Eino','Luettgen',80954204,'F',2816,'1986-07-24'),(19,'Blaze','Cronin',71575132,'M',761,'1999-05-19'),(20,'Gerda','Koelpin',30879576,'M',55898,'1970-03-26'),(21,'Rachel','Gutkowski',56567997,'M',4047655,'1971-10-26'),(22,'Aurelio','Gottlieb',68770105,'M',315904935,'1993-02-14'),(23,'Humberto','Hodkiewicz',72959585,'F',55,'1980-10-01'),(24,'Malika','Brekke',10673813,'M',4716222,'1983-01-17'),(25,'Gladyce','Spinka',14422590,'F',921295796,'1974-03-10'),(26,'Carlie','Marks',80245469,'M',1773999,'1973-08-29'),(27,'Elouise','Cruickshank',46936165,'F',4,'2018-01-17'),(28,'Jenifer','Koelpin',44548629,'F',85,'1973-05-06'),(29,'Jarod','Wintheiser',83834471,'F',42,'2010-03-06'),(30,'Brando','Gutmann',96851633,'F',3929,'1985-05-03'),(31,'Eli','Wehner',75959296,'F',86824,'2016-11-22'),(32,'Jamey','Boehm',83393484,'M',5,'1998-04-17'),(33,'Jayson','Bailey',23538803,'F',59400000,'2020-03-20'),(34,'Alexane','Daugherty',59626191,'M',220,'1987-12-30'),(35,'Camylle','Hermann',15165259,'M',63149554,'1988-03-13'),(36,'Easton','Zboncak',13640578,'F',3871,'2002-01-09'),(37,'Tad','Olson',33618272,'F',49894316,'1986-06-08'),(38,'Bo','Reinger',48505239,'F',99859,'2015-09-20'),(39,'Vance','Conn',67099876,'F',1103093,'2006-02-15'),(40,'Keaton','Farrell',84882169,'F',779905765,'1972-01-09'),(41,'Melissa','Lebsack',46627828,'F',37615,'1977-09-01'),(42,'Bettye','Bernier',13505600,'M',8,'1987-06-17'),(43,'Audrey','Abshire',45074840,'F',6097754,'1987-09-16'),(44,'Neil','Mitchell',93711279,'F',385747998,'1993-12-31'),(45,'Sadye','McDermott',91492778,'F',989,'1986-02-15'),(46,'Bert','Blick',34179733,'F',347117575,'2008-12-16'),(47,'Chelsie','Kunde',14176642,'M',59667,'2020-05-21'),(48,'Alycia','Becker',95233918,'M',740600,'1990-12-26'),(49,'Karli','Hirthe',89646515,'M',258,'1970-02-20'),(50,'Earnest','Jaskolski',10648956,'M',235,'2000-10-29'),(51,'Adella','Larson',36083367,'F',96,'1988-04-23'),(52,'Jaden','Hegmann',72875393,'M',3,'2016-03-28'),(53,'Derrick','Ward',73272977,'M',71149420,'2021-03-02'),(54,'Jamison','Mueller',62839807,'M',321687,'1997-05-21'),(55,'Terrence','Dicki',80792320,'M',563840004,'1985-10-28'),(56,'Casimir','Von',90912451,'F',331764,'1988-10-05'),(57,'Lyda','Waelchi',76452846,'F',8038244,'2005-03-29'),(58,'Hassan','Price',67563716,'M',74047441,'1988-08-14'),(59,'Lorine','Stoltenberg',25391047,'F',55831,'1979-07-24'),(60,'Hassie','Jaskolski',18604521,'F',932517400,'2018-08-26'),(61,'Era','Collins',71228186,'M',2853,'1975-09-30'),(62,'Augusta','Pouros',39990774,'M',18914645,'1995-11-24'),(63,'Johnnie','Cummerata',42891851,'M',397,'1985-09-20'),(64,'Michale','Wilderman',14648920,'M',45881003,'2011-05-30'),(65,'Norris','Dietrich',74988095,'M',5495867,'1981-03-29'),(66,'Lavonne','Russel',77753342,'M',76,'1975-03-22'),(67,'Emerson','Hilpert',98474072,'M',7233550,'1978-02-07'),(68,'Noemie','Cronin',55529430,'M',4786,'2014-03-07'),(69,'Shany','O\'Kon',85636451,'M',8586,'1992-06-27'),(70,'Patrick','Lindgren',26382523,'M',284,'1983-10-29'),(71,'Blaze','Strosin',98317292,'M',999,'1972-05-27'),(72,'Nikolas','Jaskolski',52574916,'F',379486497,'1992-08-23'),(73,'Aletha','Jacobs',51447293,'M',951837362,'2000-03-03'),(74,'Laron','Keebler',52752670,'M',330,'2006-04-29'),(75,'Sage','Koepp',36199308,'M',960227,'1996-07-01'),(76,'Enola','Nolan',71159495,'M',976863479,'2008-04-10'),(77,'Herman','Hermiston',15386620,'M',1761410,'2002-02-15'),(78,'Rosalinda','Stracke',70368493,'F',41128,'2001-07-01'),(79,'Jimmie','Heaney',71060404,'M',68693266,'2003-06-24'),(80,'Dorothea','Jones',67309807,'M',188628722,'1985-11-16'),(81,'Irma','Swaniawski',17830195,'F',2802,'1982-08-05'),(82,'Xander','Waelchi',20690866,'F',112673519,'2020-07-27'),(83,'Ryann','Schiller',78870073,'M',25417635,'1974-04-24'),(84,'Green','Schimmel',27288388,'F',57794,'1972-06-29'),(85,'Riley','Hermiston',27568973,'M',35429262,'1994-06-18'),(86,'Allison','Koss',86815744,'F',597286,'2001-11-15'),(87,'Hilda','Strosin',29721428,'F',428827192,'1997-04-03'),(88,'Dovie','Luettgen',60791352,'F',62565447,'2005-02-04'),(89,'Dorian','Lehner',18833450,'M',6558497,'1993-07-18'),(90,'Dolly','Rice',73225760,'F',78,'2018-09-11'),(91,'Yessenia','Lynch',80666060,'F',123481279,'1983-03-10'),(92,'Zachery','Tillman',51000804,'M',1309,'1984-08-12'),(93,'Amari','Kuvalis',18717678,'F',777530181,'2017-06-15'),(94,'Brooks','Collins',81480916,'F',770612773,'1979-08-17'),(95,'Alayna','Jacobi',19371735,'F',797128,'1989-01-12'),(96,'Cierra','Bashirian',40220579,'M',356,'2000-12-04'),(97,'Cassidy','Block',52797852,'M',658981,'2022-03-04'),(98,'Nora','Langworth',61110701,'M',916348,'2002-02-13'),(99,'Lourdes','Leuschke',29801315,'M',128567800,'1975-12-04'),(100,'Ellsworth','Bahringer',41489607,'F',9648,'2009-11-01');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers_products`
--

DROP TABLE IF EXISTS `drivers_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers_products` (
  `driver_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  KEY `driver_id` (`driver_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `drivers_products_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `drivers_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers_products`
--

LOCK TABLES `drivers_products` WRITE;
/*!40000 ALTER TABLE `drivers_products` DISABLE KEYS */;
INSERT INTO `drivers_products` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,91),(92,92),(93,93),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),(100,100);
/*!40000 ALTER TABLE `drivers_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recomended_temperature` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Apricots',0),(2,'Apricots',-5),(3,'Apples',12),(4,'Apples',-5),(5,'Pears',-5),(6,'Apricots',0),(7,'Peaches',3),(8,'Peaches',3),(9,'Pears',0),(10,'Peaches',-5),(11,'Apricots',12),(12,'Apples',12),(13,'Pears',0),(14,'Apricots',3),(15,'Apricots',-5),(16,'Apricots',0),(17,'Apricots',-5),(18,'Apples',-5),(19,'Peaches',0),(20,'Apricots',-5),(21,'Apricots',12),(22,'Apples',-5),(23,'Apples',-5),(24,'Peaches',0),(25,'Pears',-5),(26,'Pears',0),(27,'Apricots',3),(28,'Pears',12),(29,'Apples',3),(30,'Peaches',0),(31,'Apricots',0),(32,'Apricots',-5),(33,'Peaches',-5),(34,'Pears',-5),(35,'Peaches',3),(36,'Apricots',0),(37,'Apricots',12),(38,'Apricots',0),(39,'Pears',3),(40,'Pears',0),(41,'Peaches',0),(42,'Apricots',3),(43,'Peaches',0),(44,'Apples',-5),(45,'Peaches',-5),(46,'Apricots',0),(47,'Peaches',12),(48,'Pears',12),(49,'Peaches',-5),(50,'Apples',3),(51,'Pears',-5),(52,'Peaches',3),(53,'Apricots',-5),(54,'Pears',-5),(55,'Pears',12),(56,'Pears',12),(57,'Pears',0),(58,'Apples',3),(59,'Pears',3),(60,'Pears',0),(61,'Apples',0),(62,'Apples',-5),(63,'Peaches',0),(64,'Apples',3),(65,'Pears',3),(66,'Pears',12),(67,'Pears',12),(68,'Peaches',-5),(69,'Apricots',0),(70,'Apples',-5),(71,'Apples',-5),(72,'Peaches',-5),(73,'Peaches',12),(74,'Apples',12),(75,'Apples',-5),(76,'Apricots',0),(77,'Apricots',-5),(78,'Pears',3),(79,'Apples',0),(80,'Apricots',3),(81,'Apricots',0),(82,'Apples',-5),(83,'Pears',3),(84,'Pears',-5),(85,'Peaches',12),(86,'Peaches',3),(87,'Peaches',-5),(88,'Apples',12),(89,'Apricots',12),(90,'Peaches',3),(91,'Apricots',0),(92,'Pears',0),(93,'Apples',-5),(94,'Peaches',12),(95,'Apples',3),(96,'Pears',0),(97,'Apricots',0),(98,'Apples',12),(99,'Apricots',12),(100,'Apricots',-5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reefer_info`
--

DROP TABLE IF EXISTS `reefer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reefer_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reefer_id` bigint(20) unsigned DEFAULT NULL,
  `curr_time` datetime DEFAULT NULL,
  `temperature` int(11) NOT NULL,
  `suction_pressure` int(11) NOT NULL,
  `discharge_pressure` int(11) NOT NULL,
  `hours_counter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reefer_id` (`reefer_id`),
  CONSTRAINT `reefer_info_ibfk_1` FOREIGN KEY (`reefer_id`) REFERENCES `reefers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reefer_info`
--

LOCK TABLES `reefer_info` WRITE;
/*!40000 ALTER TABLE `reefer_info` DISABLE KEYS */;
INSERT INTO `reefer_info` VALUES (1,1,'1984-04-03 00:23:52',12,1,20,18624),(2,2,'1973-02-07 03:52:16',-11,1,22,5159),(3,3,'1980-09-29 11:17:43',-16,1,19,7154),(4,4,'2020-01-29 08:20:40',25,1,24,1203),(5,5,'1975-10-05 15:45:49',20,1,21,5817),(6,6,'2020-01-27 05:48:14',2,1,22,17865),(7,7,'1978-05-14 21:03:34',6,1,20,5314),(8,8,'1982-02-02 12:13:46',4,1,21,9279),(9,9,'1981-05-01 15:13:53',15,1,21,9429),(10,10,'2001-06-27 21:24:00',10,1,21,15069),(11,11,'1993-02-07 17:16:28',-3,1,22,18097),(12,12,'2005-04-27 15:31:35',-6,1,24,2968),(13,13,'1984-07-31 23:09:21',25,1,21,10277),(14,14,'1983-09-14 21:51:55',-1,1,19,16425),(15,15,'2010-08-15 22:07:39',-18,1,24,8478),(16,16,'2021-10-15 17:22:12',-1,1,22,9381),(17,17,'2014-09-16 15:53:26',-11,1,23,8752),(18,18,'2020-04-27 20:08:20',1,1,24,185),(19,19,'2012-05-11 12:30:35',10,1,22,258),(20,20,'1977-06-02 07:45:50',-11,1,19,2262),(21,21,'2019-09-26 21:07:07',18,1,21,16439),(22,22,'1980-07-26 23:00:32',-2,1,23,4690),(23,23,'2018-09-28 22:46:11',23,1,21,17969),(24,24,'2000-11-09 21:23:08',-7,1,24,5815),(25,25,'1995-05-28 10:15:57',12,1,20,2359),(26,26,'2008-07-02 04:00:20',5,1,20,1610),(27,27,'2007-08-06 04:56:45',-17,1,22,9804),(28,28,'1992-08-17 10:10:37',-14,1,19,19793),(29,29,'1974-01-08 09:43:53',-1,1,19,16197),(30,30,'2004-12-08 08:39:03',-1,1,21,7060),(31,31,'2006-01-31 07:49:48',-3,1,24,5980),(32,32,'1989-12-30 06:50:33',7,1,23,7447),(33,33,'1988-10-15 10:23:44',0,1,20,7015),(34,34,'1985-07-12 21:03:00',-3,1,19,3094),(35,35,'2003-06-03 04:22:55',21,1,19,10603),(36,36,'1995-01-22 18:26:50',16,1,21,3186),(37,37,'1993-05-03 09:33:25',4,1,20,17174),(38,38,'1977-10-10 01:14:40',-5,1,23,6750),(39,39,'2004-11-23 05:51:14',1,1,20,15881),(40,40,'1985-11-19 17:27:26',-11,1,20,494),(41,41,'2019-07-20 20:55:47',1,1,19,561),(42,42,'1983-07-02 07:10:05',-4,1,21,6447),(43,43,'2008-01-14 09:02:22',3,1,19,19826),(44,44,'1999-11-16 16:08:52',20,1,24,15012),(45,45,'1974-08-06 09:45:12',18,1,23,3063),(46,46,'2021-05-17 01:14:25',-9,1,22,2474),(47,47,'2012-07-08 16:20:08',22,1,21,16948),(48,48,'2013-12-15 00:28:10',5,1,24,3255),(49,49,'1985-08-19 14:05:37',17,1,19,3963),(50,50,'1990-12-31 08:44:39',-5,1,22,6304),(51,51,'1976-12-05 21:00:58',-10,1,23,1973),(52,52,'1975-07-30 21:27:59',-19,1,20,19117),(53,53,'1999-04-28 08:02:26',-3,1,19,14749),(54,54,'2006-11-07 23:17:19',17,1,22,9946),(55,55,'2016-08-14 14:14:55',15,1,21,18939),(56,56,'1987-09-05 21:23:55',20,1,24,1052),(57,57,'1997-10-04 12:56:24',20,1,22,18100),(58,58,'1975-02-18 06:52:14',7,1,23,9480),(59,59,'1979-03-05 07:38:28',-20,1,23,10184),(60,60,'2017-04-18 21:56:27',3,1,22,4690),(61,61,'2016-03-22 21:11:41',-6,1,22,5292),(62,62,'1995-05-06 08:27:59',2,1,20,8835),(63,63,'1977-05-14 17:29:14',7,1,23,764),(64,64,'1979-09-19 01:10:28',-1,1,22,19029),(65,65,'1990-12-09 06:08:43',-3,1,24,10455),(66,66,'1997-06-18 08:25:46',-4,1,23,431),(67,67,'2016-07-27 08:36:26',16,1,24,1761),(68,68,'2021-09-01 19:04:50',-16,1,19,14300),(69,69,'1976-02-09 01:32:44',-11,1,23,4258),(70,70,'2019-12-25 12:11:46',-11,1,20,19256),(71,71,'2021-09-01 22:23:16',-14,1,20,19194),(72,72,'2013-09-26 14:35:28',8,1,20,6019),(73,73,'2009-12-26 16:55:42',25,1,23,8417),(74,74,'1999-08-12 05:25:02',20,1,22,1014),(75,75,'1981-05-23 13:11:17',9,1,21,12538),(76,76,'2017-03-18 06:18:40',17,1,22,2747),(77,77,'1972-04-20 10:19:26',-6,1,24,480),(78,78,'2011-06-18 09:31:04',0,1,23,13484),(79,79,'2001-03-09 22:40:03',-4,1,21,19481),(80,80,'2012-07-05 07:19:55',9,1,24,1363),(81,81,'1983-12-29 00:58:52',-2,1,24,2932),(82,82,'2012-12-07 01:04:48',9,1,22,15075),(83,83,'1995-08-19 15:35:42',6,1,21,16595),(84,84,'1985-05-31 10:33:08',-3,1,23,14599),(85,85,'1980-01-24 15:17:58',14,1,24,3241),(86,86,'2020-02-05 11:28:36',15,1,23,14593),(87,87,'1977-05-12 20:13:02',-7,1,21,6831),(88,88,'1992-02-14 23:13:38',-19,1,21,2351),(89,89,'1995-07-16 05:33:44',25,1,21,1560),(90,90,'1986-08-04 22:40:12',20,1,21,16932),(91,91,'1979-02-21 21:09:54',-12,1,22,2946),(92,92,'1986-06-01 21:19:34',-11,1,23,12679),(93,93,'2007-03-05 10:11:34',0,1,22,1007),(94,94,'2010-07-20 02:06:51',5,1,22,19847),(95,95,'1989-12-25 06:46:43',0,1,23,10558),(96,96,'1980-02-12 17:27:36',-7,1,24,18773),(97,97,'2006-11-11 10:26:00',-2,1,21,15263),(98,98,'2015-05-04 13:10:43',14,1,21,9873),(99,99,'2014-04-04 04:23:13',-18,1,19,11579),(100,100,'2008-10-02 09:28:54',22,1,23,6753);
/*!40000 ALTER TABLE `reefer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reefers`
--

DROP TABLE IF EXISTS `reefers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reefers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_number` (`serial_number`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reefers`
--

LOCK TABLES `reefers` WRITE;
/*!40000 ALTER TABLE `reefers` DISABLE KEYS */;
INSERT INTO `reefers` VALUES (1,'Carrier',NULL,945007160),(2,'Carrier',NULL,674252180),(3,'Carrier',NULL,497581848),(4,'Carrier',NULL,152251790),(5,'ThermoKing',NULL,841228039),(6,'Carrier',NULL,732522720),(7,'Carrier',NULL,611095258),(8,'Carrier',NULL,717800606),(9,'Carrier',NULL,406233541),(10,'Carrier',NULL,597478088),(11,'Carrier',NULL,201098515),(12,'ThermoKing',NULL,473956789),(13,'ThermoKing',NULL,861505883),(14,'ThermoKing',NULL,322792106),(15,'ThermoKing',NULL,290726313),(16,'ThermoKing',NULL,840124264),(17,'Carrier',NULL,101912028),(18,'ThermoKing',NULL,154572270),(19,'ThermoKing',NULL,862764767),(20,'ThermoKing',NULL,392515991),(21,'ThermoKing',NULL,117313163),(22,'ThermoKing',NULL,877603304),(23,'ThermoKing',NULL,781313878),(24,'ThermoKing',NULL,725368626),(25,'ThermoKing',NULL,972736510),(26,'ThermoKing',NULL,732310804),(27,'ThermoKing',NULL,679141692),(28,'Carrier',NULL,216098869),(29,'Carrier',NULL,991935384),(30,'Carrier',NULL,809094284),(31,'ThermoKing',NULL,696523153),(32,'Carrier',NULL,809915873),(33,'Carrier',NULL,536960329),(34,'ThermoKing',NULL,677560031),(35,'Carrier',NULL,793963607),(36,'ThermoKing',NULL,205286260),(37,'ThermoKing',NULL,282589524),(38,'Carrier',NULL,441742319),(39,'ThermoKing',NULL,168951065),(40,'Carrier',NULL,281933490),(41,'ThermoKing',NULL,916540133),(42,'ThermoKing',NULL,831353936),(43,'ThermoKing',NULL,494647575),(44,'ThermoKing',NULL,768383561),(45,'Carrier',NULL,893040906),(46,'Carrier',NULL,155080046),(47,'ThermoKing',NULL,716910804),(48,'Carrier',NULL,773585635),(49,'Carrier',NULL,681419060),(50,'Carrier',NULL,270861626),(51,'ThermoKing',NULL,691891919),(52,'ThermoKing',NULL,654407787),(53,'ThermoKing',NULL,178891408),(54,'ThermoKing',NULL,111708811),(55,'ThermoKing',NULL,358642190),(56,'ThermoKing',NULL,947543426),(57,'Carrier',NULL,451856460),(58,'Carrier',NULL,247347238),(59,'Carrier',NULL,602648565),(60,'ThermoKing',NULL,914808740),(61,'Carrier',NULL,484117982),(62,'Carrier',NULL,207639485),(63,'Carrier',NULL,275415447),(64,'ThermoKing',NULL,697679367),(65,'ThermoKing',NULL,802832192),(66,'ThermoKing',NULL,949746802),(67,'Carrier',NULL,838200526),(68,'ThermoKing',NULL,350734984),(69,'Carrier',NULL,280999924),(70,'ThermoKing',NULL,369579396),(71,'Carrier',NULL,162388270),(72,'Carrier',NULL,758686578),(73,'Carrier',NULL,309554032),(74,'ThermoKing',NULL,773691242),(75,'Carrier',NULL,465435176),(76,'Carrier',NULL,386369292),(77,'Carrier',NULL,592434648),(78,'ThermoKing',NULL,242155087),(79,'ThermoKing',NULL,685332971),(80,'ThermoKing',NULL,880492454),(81,'ThermoKing',NULL,626666829),(82,'ThermoKing',NULL,784619304),(83,'Carrier',NULL,324756804),(84,'ThermoKing',NULL,927789023),(85,'Carrier',NULL,828744880),(86,'Carrier',NULL,541428266),(87,'Carrier',NULL,998092146),(88,'Carrier',NULL,443298658),(89,'Carrier',NULL,614166615),(90,'Carrier',NULL,472734329),(91,'Carrier',NULL,236894198),(92,'ThermoKing',NULL,938955351),(93,'ThermoKing',NULL,588419770),(94,'Carrier',NULL,515591137),(95,'Carrier',NULL,826544625),(96,'Carrier',NULL,144115660),(97,'Carrier',NULL,174927934),(98,'ThermoKing',NULL,907247939),(99,'ThermoKing',NULL,114096010),(100,'Carrier',NULL,988074107);
/*!40000 ALTER TABLE `reefers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `departure_id` bigint(20) unsigned NOT NULL,
  `destanation_id` bigint(20) unsigned NOT NULL,
  `date` date DEFAULT NULL,
  `driver_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`departure_id`,`destanation_id`),
  KEY `destanation_id` (`destanation_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`departure_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `routes_ibfk_2` FOREIGN KEY (`destanation_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `routes_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,19,'1981-12-06',69),(5,12,'2006-08-08',3),(5,22,'1996-05-02',23),(6,37,'1988-07-29',92),(7,100,'2009-08-16',53),(8,77,'1998-08-17',16),(9,11,'1978-06-23',42),(9,39,'2004-11-14',58),(12,8,'2010-12-07',72),(13,69,'1980-02-13',55),(14,18,'2003-11-29',63),(16,64,'2020-01-24',83),(17,97,'1996-09-03',2),(18,48,'1998-12-29',98),(19,56,'2004-02-16',29),(19,77,'1990-06-01',43),(20,33,'2021-07-26',62),(20,57,'1973-04-09',99),(21,52,'2014-04-01',13),(21,56,'1986-07-31',31),(21,60,'2019-03-10',57),(24,55,'2004-04-28',26),(25,8,'2007-03-05',35),(25,64,'2017-01-13',79),(26,25,'2016-08-19',17),(26,67,'2013-05-20',27),(28,47,'2022-02-17',5),(28,54,'2009-02-26',40),(28,70,'1993-04-11',37),(30,70,'1981-08-13',86),(32,6,'2010-04-22',45),(32,18,'2008-08-02',8),(32,57,'1980-02-20',97),(33,61,'1997-08-13',1),(33,64,'2001-09-02',20),(33,96,'1991-11-13',93),(36,13,'2018-08-15',19),(36,42,'2002-03-22',87),(36,67,'2012-12-04',59),(39,17,'2008-12-21',84),(39,48,'2006-10-02',90),(40,4,'1987-09-17',4),(40,33,'2011-07-07',38),(40,46,'1980-01-03',32),(41,98,'1977-02-13',54),(42,71,'2002-05-16',66),(43,14,'2004-05-07',12),(43,26,'2000-11-06',91),(45,57,'2003-06-16',94),(45,66,'1987-05-29',15),(46,20,'1991-01-16',74),(48,64,'1991-12-31',30),(51,98,'2018-11-07',56),(52,73,'1974-09-18',49),(58,37,'1994-12-21',44),(58,77,'2016-08-10',50),(59,21,'1994-09-19',21),(60,9,'1972-05-24',52),(60,18,'1992-03-27',95),(61,40,'2001-07-10',47),(62,23,'1978-04-19',89),(63,72,'2001-11-25',25),(64,3,'2007-07-28',100),(69,2,'2012-11-24',67),(69,47,'2021-12-07',28),(72,55,'1971-12-10',96),(72,75,'1997-03-20',61),(73,14,'2010-12-16',70),(73,15,'1984-10-01',80),(73,30,'1997-04-12',18),(74,66,'2013-01-17',64),(74,96,'2000-04-15',24),(75,17,'2013-11-05',34),(75,68,'1986-09-24',60),(77,19,'2012-09-04',88),(79,76,'2010-08-13',68),(80,84,'1973-05-01',36),(81,13,'1982-07-10',33),(81,38,'1971-11-20',51),(83,12,'2017-07-26',85),(84,21,'1977-06-25',73),(85,52,'1971-02-11',41),(86,64,'2014-09-22',82),(87,2,'1998-05-04',14),(87,21,'2002-03-04',75),(88,24,'1996-06-30',71),(88,28,'1998-07-03',6),(88,58,'2007-11-16',76),(91,8,'2014-04-21',78),(91,14,'2000-10-24',39),(91,32,'1994-10-16',65),(91,42,'1992-12-26',9),(91,57,'1979-09-17',22),(93,55,'1981-04-03',11),(95,8,'1995-03-19',77),(96,15,'1989-08-24',81),(98,42,'1987-01-15',48),(98,85,'2011-05-27',7),(99,29,'2014-06-22',10),(100,53,'2002-03-08',46);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trailers`
--

DROP TABLE IF EXISTS `trailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trailers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `license_plate` int(11) NOT NULL,
  `reefer_id` bigint(20) unsigned DEFAULT NULL,
  `driver_id` bigint(20) unsigned DEFAULT NULL,
  `truck_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_plate` (`license_plate`),
  KEY `license_plate_idx` (`license_plate`),
  KEY `driver_id` (`driver_id`),
  KEY `truck_id` (`truck_id`),
  KEY `reefer_id` (`reefer_id`),
  CONSTRAINT `trailers_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trailers_ibfk_2` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trailers_ibfk_3` FOREIGN KEY (`reefer_id`) REFERENCES `reefers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailers`
--

LOCK TABLES `trailers` WRITE;
/*!40000 ALTER TABLE `trailers` DISABLE KEYS */;
INSERT INTO `trailers` VALUES (1,159311,1,1,1),(2,958204,2,2,2),(3,100931,3,3,3),(4,328270,4,4,4),(5,637717,5,5,5),(6,742170,6,6,6),(7,379891,7,7,7),(8,543838,8,8,8),(9,326720,9,9,9),(10,285119,10,10,10),(11,564050,11,11,11),(12,315843,12,12,12),(13,680982,13,13,13),(14,627813,14,14,14),(15,627638,15,15,15),(16,343433,16,16,16),(17,637609,17,17,17),(18,469903,18,18,18),(19,774925,19,19,19),(20,110345,20,20,20),(21,111486,21,21,21),(22,957197,22,22,22),(23,314734,23,23,23),(24,543188,24,24,24),(25,762452,25,25,25),(26,312208,26,26,26),(27,370980,27,27,27),(28,409360,28,28,28),(29,227516,29,29,29),(30,550900,30,30,30),(31,615820,31,31,31),(32,910607,32,32,32),(33,404563,33,33,33),(34,998341,34,34,34),(35,209266,35,35,35),(36,964238,36,36,36),(37,437794,37,37,37),(38,411311,38,38,38),(39,199396,39,39,39),(40,198585,40,40,40),(41,772838,41,41,41),(42,616000,42,42,42),(43,885429,43,43,43),(44,413842,44,44,44),(45,589134,45,45,45),(46,368260,46,46,46),(47,393426,47,47,47),(48,988237,48,48,48),(49,914105,49,49,49),(50,885509,50,50,50),(51,914154,51,51,51),(52,150225,52,52,52),(53,669292,53,53,53),(54,211833,54,54,54),(55,223390,55,55,55),(56,732350,56,56,56),(57,787247,57,57,57),(58,502253,58,58,58),(59,471092,59,59,59),(60,628976,60,60,60),(61,484857,61,61,61),(62,162952,62,62,62),(63,491020,63,63,63),(64,840990,64,64,64),(65,953668,65,65,65),(66,398754,66,66,66),(67,781687,67,67,67),(68,796968,68,68,68),(69,987714,69,69,69),(70,798150,70,70,70),(71,515945,71,71,71),(72,392960,72,72,72),(73,997376,73,73,73),(74,842192,74,74,74),(75,821134,75,75,75),(76,926649,76,76,76),(77,330717,77,77,77),(78,603109,78,78,78),(79,817090,79,79,79),(80,556095,80,80,80),(81,626368,81,81,81),(82,810974,82,82,82),(83,892704,83,83,83),(84,684747,84,84,84),(85,158337,85,85,85),(86,912925,86,86,86),(87,813064,87,87,87),(88,472328,88,88,88),(89,422136,89,89,89),(90,490480,90,90,90),(91,989544,91,91,91),(92,430626,92,92,92),(93,795606,93,93,93),(94,748722,94,94,94),(95,691180,95,95,95),(96,963902,96,96,96),(97,346104,97,97,97),(98,507751,98,98,98),(99,910144,99,99,99),(100,804703,100,100,100);
/*!40000 ALTER TABLE `trailers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trucks`
--

DROP TABLE IF EXISTS `trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trucks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_plate` int(11) NOT NULL,
  `mileage` int(11) DEFAULT 0,
  `driver_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_plate` (`license_plate`),
  KEY `license_plate_idx` (`license_plate`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `trucks_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trucks`
--

LOCK TABLES `trucks` WRITE;
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
INSERT INTO `trucks` VALUES (1,'MERCEDES',85905,56778,1),(2,'SCANIA',46568,32955,2),(3,'DAF',34552,105148,3),(4,'SCANIA',83195,36280,4),(5,'SCANIA',92439,196892,5),(6,'DAF',72571,108553,6),(7,'SCANIA',13817,98012,7),(8,'MAN',45365,169226,8),(9,'DAF',53034,195716,9),(10,'SCANIA',70582,158702,10),(11,'MERCEDES',81349,22416,11),(12,'SCANIA',49896,117909,12),(13,'DAF',14266,193875,13),(14,'SCANIA',99952,185579,14),(15,'MAN',57790,139025,15),(16,'DAF',24408,86216,16),(17,'MAN',71602,135140,17),(18,'SCANIA',46115,174683,18),(19,'DAF',36834,168874,19),(20,'DAF',51606,139930,20),(21,'SCANIA',42756,113183,21),(22,'DAF',83689,106751,22),(23,'VOLVO',22975,51141,23),(24,'VOLVO',97649,168204,24),(25,'SCANIA',61174,60905,25),(26,'VOLVO',86224,87479,26),(27,'SCANIA',84755,38417,27),(28,'DAF',91431,63461,28),(29,'MERCEDES',91661,6417,29),(30,'DAF',61627,35410,30),(31,'SCANIA',46687,79356,31),(32,'SCANIA',29907,4145,32),(33,'MAN',10221,193698,33),(34,'VOLVO',65093,68023,34),(35,'SCANIA',71827,104823,35),(36,'DAF',29234,105232,36),(37,'VOLVO',18805,127447,37),(38,'DAF',60651,78540,38),(39,'MAN',98785,150075,39),(40,'DAF',54840,54030,40),(41,'MAN',52611,50924,41),(42,'MAN',70929,112095,42),(43,'MERCEDES',43204,104657,43),(44,'SCANIA',74030,2972,44),(45,'MERCEDES',30390,191879,45),(46,'VOLVO',88585,83239,46),(47,'MERCEDES',23396,66217,47),(48,'DAF',36566,35768,48),(49,'MERCEDES',48612,86504,49),(50,'MAN',27048,12749,50),(51,'SCANIA',92222,186386,51),(52,'VOLVO',19150,172296,52),(53,'VOLVO',68382,56660,53),(54,'DAF',12950,106076,54),(55,'MAN',83795,190430,55),(56,'VOLVO',35141,151353,56),(57,'DAF',73901,112401,57),(58,'MERCEDES',85325,80875,58),(59,'MAN',93318,31691,59),(60,'VOLVO',51801,147554,60),(61,'VOLVO',39864,11793,61),(62,'MAN',78978,150688,62),(63,'MAN',93683,111167,63),(64,'SCANIA',46013,192946,64),(65,'SCANIA',52655,36425,65),(66,'VOLVO',92402,110521,66),(67,'MAN',18303,121896,67),(68,'DAF',65991,85888,68),(69,'MAN',24369,41224,69),(70,'MAN',62850,195004,70),(71,'VOLVO',50980,89599,71),(72,'SCANIA',19696,4306,72),(73,'DAF',50737,80731,73),(74,'MERCEDES',97292,35930,74),(75,'MAN',37346,129714,75),(76,'SCANIA',32187,152481,76),(77,'SCANIA',48211,158793,77),(78,'DAF',14364,161839,78),(79,'MERCEDES',64575,145454,79),(80,'VOLVO',45715,46898,80),(81,'VOLVO',71746,123468,81),(82,'MERCEDES',83933,39888,82),(83,'DAF',24529,133507,83),(84,'DAF',78290,62099,84),(85,'MERCEDES',28520,66141,85),(86,'SCANIA',43525,128901,86),(87,'MERCEDES',54084,48666,87),(88,'MAN',73269,112240,88),(89,'VOLVO',49022,46795,89),(90,'DAF',70080,163773,90),(91,'MAN',36722,16431,91),(92,'VOLVO',80067,50627,92),(93,'SCANIA',25547,67844,93),(94,'MAN',92520,119877,94),(95,'SCANIA',47648,102327,95),(96,'MAN',23913,51180,96),(97,'MAN',29361,135392,97),(98,'MAN',27081,2210,98),(99,'MAN',65589,23834,99),(100,'SCANIA',77383,74679,100);
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-03  7:27:06
