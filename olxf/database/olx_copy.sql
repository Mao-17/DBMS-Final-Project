-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: olx
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `phone` char(10) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_joining` date NOT NULL,
  `role` varchar(25) NOT NULL DEFAULT 'Employee',
  PRIMARY KEY (`phone`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  CONSTRAINT `phoneid` FOREIGN KEY (`phone`) REFERENCES `login` (`phone`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('9031745817','Rylee','Cochran','2019-02-25','Unspecified\r'),('9083817568','Tanner','Compton','2020-01-28','Unspecified\r'),('9097841886','Robin','Underwood','2018-12-08','Employee\r'),('9103864882','Macy','Alford','2020-05-16','Unspecified\r'),('9140682215','Leonard','Galloway','2018-07-16','Employee\r'),('9205185634','Alea','Ware','2019-10-22','Unspecified\r'),('9207086652','Sonya','Clarke','2020-09-03','Employee\r'),('9223175428','Hector','Fisher','2018-07-02','Employee\r'),('9247863354','Ora','Mcclure','2020-07-08','Employee\r'),('9249536647','Ray','Kerr','2019-06-06','Unspecified\r'),('9264826213','Theodore','Brewer','2020-04-30','Unspecified\r'),('9297427334','Ali','Johnson','2020-05-01','Unspecified\r'),('9313018588','Madaline','Vazquez','2020-09-06','Employee\r'),('9328693336','Jemima','Barr','2020-10-26','Unspecified\r'),('9334631955','Emerson','Meyers','2018-07-05','Unspecified\r'),('9337765178','Lara','Burch','2018-05-23','Employee\r'),('9344426455','Fitzgerald','Douglas','2021-01-08','Unspecified\r'),('9365370155','Eric','Frederick','2019-11-10','Employee\r'),('9385766985','Alden','Watson','2019-11-08','Unspecified\r'),('9397922181','Uriel','Martinez','2020-09-22','Employee\r'),('9408175298','Hanae','Barber','2019-07-29','Employee\r'),('9441890711','Grace','Fry','2020-08-27','Employee\r'),('9470876285','Kyle','Chambers','2020-01-25','Employee\r'),('9524411193','Justine','Cervantes','2020-10-30','Unspecified\r'),('9525421543','Nevada','Norman','2020-04-29','Unspecified\r'),('9537058077','Scarlett','Freeman','2020-10-31','Employee\r'),('9551218382','Haley','Norman','2020-09-06','Employee\r'),('9552877552','Keane','O\'Neill','2020-09-29','Unspecified\r'),('9556252481','Nita','Kim','2019-04-13','Employee\r'),('9557461860','Kirestin','Jenkins','2020-12-07','Unspecified\r'),('9560969541','Garth','Pennington','2020-06-28','Unspecified\r'),('9566179716','Elliott','Vinson','2018-03-25','Employee\r'),('9568264626','Kenyon','Vazquez','2019-02-19','Employee\r'),('9574564718','Bryar','Atkinson','2019-11-29','Unspecified\r'),('9617575487','Cynthia','Zamora','2018-09-26','Employee\r'),('9636328273','Ezra','Riggs','2018-06-29','Employee\r'),('9643269276','Sonya','Mercado','2019-09-09','Unspecified\r'),('9671995986','Lenore','Palmer','2019-03-04','Employee\r'),('9717422541','Juliet','Johnson','2019-07-09','Unspecified\r'),('9717691442','Jennifer','Davis','2020-02-01','Unspecified\r'),('9733269888','Jayme','Woodward','2018-09-28','Unspecified\r'),('9733978824','Rhona','Shepard','2021-01-06','Unspecified\r'),('9769435302','Brady','Guy','2018-09-21','Employee\r'),('9780854764','Graham','Lowery','2020-11-29','Employee\r'),('9786139123','Nathaniel','Short','2019-02-14','Employee\r'),('9836927534','Christopher','Vaughn','2020-03-19','Unspecified\r'),('9867613539','Devin','Rowe','2018-04-09','Unspecified\r'),('9884401577','Yoshio','Quinn','2018-09-03','Unspecified\r'),('9915727638','Kibo','Horn','2021-01-03','Employee\r'),('9946282273','Keelie','Morrison','2018-08-10','Unspecified\r');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisement` (
  `adv_id` int NOT NULL,
  `verification_status` enum('Unknown','Rejected','Verified') DEFAULT 'Unknown',
  `adv_title` varchar(50) NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `post_date` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `user_id` char(10) NOT NULL,
  `prdouct_id` int NOT NULL,
  PRIMARY KEY (`adv_id`),
  UNIQUE KEY `adv_id_UNIQUE` (`adv_id`),
  KEY `created_by_idx` (`user_id`) /*!80000 INVISIBLE */,
  KEY `has_idx` (`prdouct_id`) /*!80000 INVISIBLE */,
  KEY `index6` (`user_id`,`adv_id`),
  FULLTEXT KEY `index5` (`adv_title`),
  CONSTRAINT `created_by` FOREIGN KEY (`user_id`) REFERENCES `users` (`phone`),
  CONSTRAINT `has` FOREIGN KEY (`prdouct_id`) REFERENCES `product` (`idproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (1,'Unknown','morbi ut odio cras mi pede','Y','2022-04-22 18:18:00','2022-07-24 08:52:00','9132328837',45),(2,'Verified','gravida nisi at nibh in hac','Y','2022-04-28 19:01:00','2022-05-08 18:08:00','9450061427',29),(3,'Unknown','erat vestibulum sed magna','N','2022-04-24 11:53:00','2022-07-16 17:35:00','9797736171',17),(4,'Verified','molestie lorem quisque ut','Y','2022-04-02 15:28:00','2022-07-15 11:44:00','9586640674',33),(5,'Verified','sapien placerat ante nulla','Y','2022-03-10 09:56:00','2022-05-23 15:54:00','9898614273',42),(6,'Verified','orci vehicula condimentum curabitur','Y','2022-03-08 22:18:00','2022-05-17 23:58:00','9867456663',36),(7,'Verified','augue vestibulum ante ipsum primis in','Y','2022-04-15 01:33:00','2022-05-20 04:15:00','9771339555',38),(8,'Rejected','ultrices libero non mattis pulvinar nulla','N','2022-03-10 22:22:00','2022-07-14 18:54:00','9984457412',12),(9,'Unknown','quisque erat eros viverra eget','Y','2022-03-12 07:01:00','2022-05-06 23:48:00','9776132442',28),(10,'Unknown','leo pellentesque ultrices mattis','N','2022-03-28 17:34:00','2022-04-04 08:29:00','9615882758',2),(11,'Unknown','cras mi pede','N','2022-04-04 14:10:00','2022-04-18 01:33:00','9436652636',16),(12,'Unknown','ut massa quis augue luctus','Y','2022-04-10 05:44:00','2022-04-30 07:36:00','9521184877',23),(13,'Unknown','libero convallis eget eleifend','Y','2022-03-18 21:40:00','2022-05-15 17:37:00','9113634208',34),(14,'Unknown','in sapien iaculis congue vivamus metus','Y','2022-04-14 02:05:00','2022-05-15 21:54:00','9835335356',35),(15,'Verified','accumsan odio curabitur convallis duis','N','2022-03-07 22:09:00','2022-04-03 18:01:00','9615882758',1),(16,'Verified','donec posuere metus vitae ipsum aliquam','Y','2022-03-20 08:36:00','2022-05-23 04:09:00','9436652636',41),(17,'Verified','in sapien iaculis congue','Y','2022-03-04 07:38:00','2022-05-10 23:04:00','9521184877',30),(18,'Unknown','dolor vel est donec odio','Y','2022-04-22 17:24:00','2022-05-14 06:21:00','9113634208',32),(19,'Unknown','interdum venenatis turpis enim blandit mi','Y','2022-03-20 04:31:00','2022-05-03 17:07:00','9835335356',25),(20,'Unknown','interdum mauris non ligula pellentesque','N','2022-04-04 05:37:00','2022-04-10 23:40:00','9617865922',6),(21,'Unknown','purus sit amet nulla','Y','2022-03-29 01:22:00','2022-05-22 12:33:00','9868218176',40),(22,'Unknown','auctor sed tristique in','N','2022-03-17 04:11:00','2022-04-26 23:58:00','9989528254',21),(23,'Unknown','tincidunt ante vel ipsum','N','2022-03-30 05:35:00','2022-04-05 05:35:00','9317811717',3),(24,'Verified','eleifend quam a','Y','2022-03-12 16:53:00','2022-05-24 07:20:00','9261481743',44),(25,'Verified','justo in blandit','N','2022-04-18 20:51:00','2022-04-14 19:48:00','9139623353',10),(26,'Unknown','tellus nisi eu','Y','2022-04-21 15:30:00','2022-04-29 21:46:00','9185557667',22),(27,'Unknown','suspendisse potenti in eleifend','N','2022-03-24 12:21:00','2022-04-17 15:52:00','9513247511',14),(28,'Unknown','pede posuere nonummy integer','N','2022-04-21 08:57:00','2022-04-21 12:20:00','9120152327',19),(29,'Verified','massa quis augue luctus tincidunt','Y','2022-03-02 10:45:00','2022-05-04 22:58:00','9161231259',26),(30,'Verified','ipsum primis in faucibus orci','N','2022-04-02 13:25:00','2022-04-25 20:43:00','9491252693',20),(31,'Verified','tortor risus dapibus augue','Y','2022-04-10 22:35:00','2022-05-24 10:35:00','9776132442',46),(32,'Verified','est phasellus sit','Y','2022-04-05 23:09:00','2022-05-25 11:17:00','9615882758',47),(33,'Rejected','luctus nec molestie sed justo pellentesque','N','2022-04-18 08:01:00','2022-04-13 23:35:00','9436652636',9),(34,'Verified','vulputate elementum nullam varius nulla','N','2022-04-26 06:01:00','2022-04-15 08:10:00','9521184877',11),(35,'Verified','dui nec nisi volutpat','N','2022-03-28 01:21:00','2022-04-16 22:27:00','9113634208',13),(36,'Unknown','lacus morbi sem mauris','Y','2022-04-10 18:49:00','2022-05-18 10:48:00','9835335356',37),(37,'Verified','aliquet ultrices erat tortor','N','2022-03-31 19:50:00','2022-04-08 07:38:00','9393351584',4),(38,'Unknown','dui nec nisi volutpat eleifend','N','2022-04-12 08:29:00','2022-04-10 23:14:00','9831564029',5),(39,'Unknown','dui nec nisi volutpat eleifend','Y','2022-04-06 02:00:00','2022-05-25 23:44:00','9132837735',48),(40,'Verified','consequat varius integer','Y','2022-03-03 13:48:00','2022-05-06 12:13:00','9363781214',27),(41,'Unknown','in quam fringilla','Y','2022-04-20 20:44:00','2022-05-12 22:16:00','9608531128',31),(42,'Unknown','convallis nunc proin at','Y','2022-03-27 04:17:00','2022-05-26 07:25:00','9746380491',50),(43,'Verified','ligula suspendisse ornare','Y','2022-03-08 15:19:00','2022-05-26 00:40:00','9676440383',49),(44,'Rejected','lectus suspendisse potenti in eleifend quam','N','2022-03-06 15:02:00','2022-04-20 22:25:00','9552659477',18),(45,'Verified','integer ac neque duis bibendum','Y','2022-04-28 03:02:00','2022-05-23 23:49:00','9531982995',43),(46,'Unknown','sapien cum sociis natoque','Y','2022-03-22 01:10:00','2022-05-21 21:56:00','9555268183',39),(47,'Unknown','odio curabitur convallis duis','Y','2022-03-20 12:38:00','2022-05-01 11:31:00','9431871313',24),(48,'Unknown','odio elementum eu interdum','N','2022-04-14 15:24:00','2022-04-11 07:39:00','9552436653',7),(49,'Unknown','nunc commodo placerat','N','2022-03-26 08:12:00','2022-04-12 20:59:00','9735569237',8),(50,'Rejected','sapien in sapien iaculis congue vivamus','N','2022-03-03 13:18:00','2022-04-18 00:13:00','9985793436',15);
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `advertisement_BEFORE_INSERT` BEFORE INSERT ON `advertisement` FOR EACH ROW BEGIN
	If `olx`.`recent_date_calc`(new.post_date)<>0 or `olx`.`recent_date_calc`(new.expiry_date)>=0 or datediff(new.post_date,new.expiry_date)>0
    then
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invaild Dates';
    else
    INSERT INTO `olx`.`advertisement`
(`adv_id`,
`verification_status`,
`adv_title`,
`is_active`,
`post_date`,
`expiry_date`,
`user_id`,
`prdouct_id`)
VALUES
(new.adv_id,
new.verification_status,
new.adv_title,
new.is_active,
new.post_date,
new.expiry_date,
new.user_id,
new.prdouct_id);
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `all_products`
--

DROP TABLE IF EXISTS `all_products`;
/*!50001 DROP VIEW IF EXISTS `all_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_products` AS SELECT 
 1 AS `Product_Owner`,
 1 AS `adv_title`,
 1 AS `verification_status`,
 1 AS `description`,
 1 AS `name`,
 1 AS `price`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `area_id` char(6) NOT NULL,
  `area_name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) NOT NULL DEFAULT 'Delhi',
  `country` varchar(45) NOT NULL DEFAULT 'India',
  PRIMARY KEY (`area_id`),
  UNIQUE KEY `area_id_UNIQUE` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES ('120368','Ap #848-2063 Morbi St.','Junagadh','Gujarat','India\r'),('136477','Ap #881-9048 Orci Rd.','Beawar','Rajasthan','India\r'),('157975','610-8299 Cursus Av.','Muzaffarpur','Bihar','India\r'),('161883','798-5414 Ligula Avenue','Delhi','Delhi','India\r'),('163523','655-7902 Cras St.','Morena','Madhya Pradesh','India\r'),('173642','P.O. Box 702, 2612 Semper Rd.','Bettiah','Bihar','India\r'),('194578','836-8249 Venenatis Avenue','Daman','Daman and Diu','India\r'),('212789','835-3152 Congue. St.','Kohima','Nagaland','India\r'),('213681','Ap #897-5821 Ut Rd.','Mango','Jharkhand','India\r'),('215576','6640 Viverra. Avenue','Bally','West Bengal','India\r'),('218287','219-327 Tellus. Av.','Dehradun','Uttarakhand','India\r'),('222487','Ap #130-4700 Non, Road','Itanagar','Arunachal Pradesh','India\r'),('239337','Ap #965-3099 Hendrerit Street','Imphal','Manipur','India\r'),('260436','1210 Egestas Street','Ambala Sadar','Haryana','India\r'),('267313','2209 Enim, Street','Imphal','Manipur','India\r'),('282149','P.O. Box 960, 2916 Consectetuer Av.','Chandigarh','Chandigarh','India\r'),('288059','597-4371 Enim, Avenue','Silchar','Assam','India\r'),('313862','P.O. Box 202, 9667 Fermentum Avenue','Surat','Gujarat','India\r'),('316645','987-4603 Quis, Avenue','Kohima','Nagaland','India\r'),('323516','Ap #928-445 Metus. Ave','Rishra','West Bengal','India\r'),('324386','401-8034 Turpis Street','Daman','Daman and Diu','India\r'),('326418','P.O. Box 608, 2134 Malesuada Street','Kollam','Kerala','India\r'),('332360','Ap #226-4801 Consectetuer Rd.','Itanagar','Arunachal Pradesh','India\r'),('335376','P.O. Box 291, 9984 Ante Street','Guwahati','Assam','India\r'),('341084','P.O. Box 752, 8255 Quam St.','Bahawalnagar','Punjab','India\r'),('364821','Ap #637-4598 Montes, Avenue','Bhiwani','Haryana','India\r'),('373634','293-2965 Aliquam Street','Jamshedpur','Jharkhand','India\r'),('373997','4063 Augue Rd.','Bhagalpur','Bihar','India\r'),('381151','212-1210 Tellus. Ave','Raigarh','Chhattisgarh','India\r'),('386574','Ap #293-1372 Vivamus Rd.','Aizwal','Mizoram','India\r'),('388784','972-1781 Est. St.','Port Blair','Andaman and Nicobar Islands','India\r'),('413134','9471 Cursus Street','Delhi','Delhi','India\r'),('426762','Ap #907-5759 Sed Rd.','Pondicherry','Pondicherry','India\r'),('430115','Ap #222-3981 Id, Av.','Raurkela','Odisha','India\r'),('436747','Ap #435-3003 In St.','Daman','Daman and Diu','India\r'),('436947','Ap #514-564 Nisl. Avenue','Shillong','Meghalaya','India\r'),('437875','P.O. Box 876, 1950 Tincidunt Av.','Chandigarh','Chandigarh','India\r'),('445351','264-8421 At Ave','Imphal','Manipur','India\r'),('446250','Ap #126-3835 At St.','Port Blair','Andaman and Nicobar Islands','India\r'),('450372','508-4651 Semper St.','Aizwal','Mizoram','India\r'),('450845','Ap #402-6313 Luctus Rd.','Itanagar','Arunachal Pradesh','India\r'),('454054','Ap #901-9546 Eros Street','Panjim','Goa','India\r'),('466855','7301 Ante Rd.','Silvassa','Dadra and Nagar Haveli','India\r'),('482877','750-3923 Convallis Ave','Itanagar','Arunachal Pradesh','India\r'),('485219','Ap #355-8009 Nisl Road','Delhi','Delhi','India\r'),('487835','989-533 Ut Rd.','Imphal','Manipur','India\r'),('494191','P.O. Box 663, 8968 Consequat, St.','Itanagar','Arunachal Pradesh','India\r'),('516256','Ap #143-945 Enim St.','South Dum Dum','West Bengal','India\r'),('516304','444-6952 Justo Road','Valparai','Tamil Nadu','India\r'),('528203','Ap #347-3459 Donec Rd.','Gangtok','Sikkim','India\r'),('537836','P.O. Box 660, 2989 Nibh. Ave','Ajmer','Rajasthan','India\r'),('545768','108-793 Nec Avenue','Cuddapah','Andhra Pradesh','India\r'),('547813','715-4260 Enim Road','Daman','Daman and Diu','India\r'),('555189','Ap #847-6871 Id Avenue','Rewa','Madhya Pradesh','India\r'),('559774','P.O. Box 512, 141 Orci, Avenue','Bangalore','Karnataka','India\r'),('564256','471-9411 Mauris Rd.','Satara','Maharastra','India\r'),('574864','Ap #472-4822 In Av.','Shillong','Meghalaya','India\r'),('577558','597-2546 Eget, Avenue','Gangtok','Sikkim','India\r'),('584074','Ap #775-6289 Elementum Rd.','Belgaum','Karnataka','India\r'),('595444','3502 Aliquam Av.','Pali','Rajasthan','India\r'),('598148','Ap #936-6942 Ut Avenue','Bidar','Karnataka','India\r'),('606226','970-8158 Sed St.','Bidar','Karnataka','India\r'),('617783','905-5208 Cursus Ave','Kavaratti','Lakshadweep','India\r'),('623772','211-5430 Nullam Rd.','Yamuna Nagar','Haryana','India\r'),('633497','713-2384 In Rd.','Imphal','Manipur','India\r'),('635462','Ap #640-6176 Ipsum. Rd.','Cuttack','Odisha','India\r'),('636657','Ap #864-7747 Augue Road','Cuttack','Odisha','India\r'),('637738','Ap #869-5278 Dictum Avenue','Pali','Rajasthan','India\r'),('653286','P.O. Box 853, 9452 Duis Rd.','Purulia','Jharkhand','India\r'),('653371','574-5702 At Rd.','Bhubaneswar','Odisha','India\r'),('686966','Ap #816-7064 Adipiscing Rd.','Chandigarh','Chandigarh','India\r'),('688208','P.O. Box 762, 9857 Odio. Rd.','Panjim','Goa','India\r'),('700753','Ap #308-2888 Pellentesque Rd.','Shillong','Meghalaya','India\r'),('702685','387-1324 Risus Street','Hassan','Karnataka','India\r'),('712186','P.O. Box 191, 8184 Consequat Rd.','Pondicherry','Pondicherry','India\r'),('713224','416-123 Fusce Street','Tuticorin','Tamil Nadu','India\r'),('715352','261-8875 Vel Street','Panjim','Goa','India\r'),('722258','769-4764 Facilisis Avenue','Aizwal','Mizoram','India\r'),('723367','152-6467 Vivamus St.','Daman','Daman and Diu','India\r'),('729541','222-9405 Nec St.','Bhiwandi','Maharastra','India\r'),('746316','736-1068 Condimentum. St.','Jammu','Jammu and Kashmir','India\r'),('753831','929-9703 Dolor. Rd.','Chittoor','Andhra Pradesh','India\r'),('779057','284-6877 Nec, St.','Shillong','Meghalaya','India\r'),('788411','755-146 Sociis Av.','Kollam','Kerala','India\r'),('797639','355-4216 Aliquet Avenue','Agartala','Tripura','India\r'),('802352','Ap #405-8362 Sodales Avenue','Nadiad','Gujarat','India\r'),('803849','Ap #624-1785 Risus. Street','Dabgram','West Bengal','India\r'),('813513','880-8913 Euismod St.','Silvassa','Dadra and Nagar Haveli','India\r'),('813712','569-887 Egestas. Avenue','Srinagar','Jammu and Kashmir','India\r'),('814675','P.O. Box 965, 3089 Nonummy Ave','Dhanbad','Jharkhand','India\r'),('816167','P.O. Box 646, 4069 Bibendum St.','Mango','Jharkhand','India\r'),('842121','Ap #176-3524 Tellus, Av.','Itanagar','Arunachal Pradesh','India\r'),('872964','P.O. Box 416, 851 Sed Road','Shillong','Meghalaya','India\r'),('875163','Ap #359-6162 Orci. Avenue','Chandigarh','Chandigarh','India\r'),('879173','Ap #774-6054 Eu Ave','Chandigarh','Chandigarh','India\r'),('880312','633-5403 Non, Road','Chishtian Mandi','Punjab','India\r'),('886265','154-7703 Ultrices. Rd.','Gangtok','Sikkim','India\r'),('888101','886-1369 Magnis Rd.','Shillong','Meghalaya','India\r'),('916641','Ap #142-9811 Velit Ave','Silchar','Assam','India\r'),('943744','721-4004 Pellentesque St.','Brahmapur','Odisha','India\r');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `idbooks` int NOT NULL,
  `catid` int DEFAULT '1',
  `author` varchar(45) NOT NULL,
  `year_of_publication` year DEFAULT NULL,
  `condition` varchar(45) NOT NULL,
  PRIMARY KEY (`idbooks`),
  KEY `catidbook_idx` (`catid`),
  KEY `index3` (`author`) USING BTREE,
  CONSTRAINT `catidbook` FOREIGN KEY (`catid`) REFERENCES `category` (`idcategory`) ON UPDATE CASCADE,
  CONSTRAINT `prodid_book` FOREIGN KEY (`idbooks`) REFERENCES `product` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (3,1,'Aleece Avramchik',1998,'Good\r'),(4,1,'Floyd Simonutti',1998,'Readable\r'),(12,1,'Horatio Percy',2011,'Unknown\r'),(17,1,'Ellis Jamson',2003,'Unknown\r'),(18,1,'Fedora Allon',2001,'Unknown\r'),(22,1,'Batholomew Hallatt',2001,'Good\r'),(28,1,'Mathias Britcher',1985,'Good\r'),(30,1,'Deanna Bradburn',2005,'Good\r'),(31,1,'Darnell Gascoyne',1987,'Unknown\r'),(36,1,'Annalise Climson',2006,'Good\r'),(37,1,'Flore Gomersal',2007,'Readable\r'),(44,1,'Malory Seneschal',1992,'Readable\r'),(47,1,'Jarrod O\'Kynsillaghe',2012,'Readable\r');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id_cars` int NOT NULL,
  `catid` int DEFAULT '5',
  `manufacturer` varchar(45) NOT NULL,
  `year_of_purchase` year NOT NULL,
  `model_name` varchar(45) NOT NULL,
  `fuel` enum('Diesel','CNG','Hybrid','Petrol','Electric') NOT NULL DEFAULT 'Petrol',
  `distance_covered` int NOT NULL,
  PRIMARY KEY (`id_cars`),
  KEY `catidcar_idx` (`catid`) /*!80000 INVISIBLE */,
  KEY `index3` (`manufacturer`) USING BTREE,
  CONSTRAINT `catidcar` FOREIGN KEY (`catid`) REFERENCES `category` (`idcategory`) ON UPDATE CASCADE,
  CONSTRAINT `prodid_car` FOREIGN KEY (`id_cars`) REFERENCES `product` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (2,5,'Pontiac',1968,'LeMans','CNG',35732),(15,5,'Honda',1992,'Accord','Diesel',191638),(24,5,'Ford',2006,'F150','Petrol',138164),(25,5,'Mitsubishi',1985,'Pajero','Diesel',42063),(26,5,'Pontiac',1988,'Grand Am','CNG',164289),(38,5,'Pontiac',2003,'Vibe','Petrol',142290),(40,5,'Mercedes-Benz',2012,'M-Class','Petrol',96489),(41,5,'Maserati',1990,'430','CNG',28796),(42,5,'Volvo',2012,'C30','Hybrid',184625),(43,5,'Mercedes-Benz',1993,'SL-Class','Petrol',168519),(49,5,'Lincoln',2011,'Navigator','CNG',106451);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cars_BEFORE_INSERT` BEFORE INSERT ON `cars` FOR EACH ROW BEGIN
	if New.distance_covered<0
    then SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invaild Distance';
    delete from advertisement where advertisement.prdouct_id=New.id_cars;
    delete from product where product.id_product=New.id_cars;
    else
    INSERT INTO `olx`.`cars`
(`id_cars`,
`catid`,
`manufacturer`,
`year_of_purchase`,
`model_name`,
`fuel`,
`distance_covered`)
VALUES
(new.id_cars,
'5',
new.manufacturer,
new.year_of_purchase,
new.model_name,
new.fuel,
new.distance_covered);
end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cars_BEFORE_UPDATE` BEFORE UPDATE ON `cars` FOR EACH ROW BEGIN
	if New.distance_covered<0
    then SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invaild Distance';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `idcategory` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategory`),
  UNIQUE KEY `idcategory_UNIQUE` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Books\r'),(2,'Gadgets\r'),(3,'Electronic & Appliances\r'),(4,'Two-wheelers\r'),(5,'Cars\r');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electronics`
--

DROP TABLE IF EXISTS `electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electronics` (
  `id_electronics` int NOT NULL,
  `catid` int DEFAULT '3',
  `manufacturer` varchar(45) NOT NULL,
  `year_of_purchase` year NOT NULL,
  `model_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_electronics`),
  KEY `catidelec_idx` (`catid`) /*!80000 INVISIBLE */,
  KEY `index3` (`manufacturer`),
  CONSTRAINT `catidelec` FOREIGN KEY (`catid`) REFERENCES `category` (`idcategory`) ON UPDATE CASCADE,
  CONSTRAINT `prodid_electronics` FOREIGN KEY (`id_electronics`) REFERENCES `product` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronics`
--

LOCK TABLES `electronics` WRITE;
/*!40000 ALTER TABLE `electronics` DISABLE KEYS */;
INSERT INTO `electronics` VALUES (1,3,'Skynoodle',2017,'Mat Lam Tam\r'),(5,3,'Fivechat',2021,'Bitwolf\r'),(8,3,'Blogpad',2020,'Sub-Ex\r'),(11,3,'Reallinks',2018,'Voltsillam\r'),(14,3,'Avamm',2020,'Tres-Zap\r'),(19,3,'Twitternation',2019,'Konklab\r'),(21,3,'Kanoodle',2019,'Job\r'),(23,3,'Blogspan',2021,'Tresom\r'),(33,3,'Zoomdog',2021,'Tresom\r'),(39,3,'Omba',2017,'Domainer\r'),(45,3,'Dynava',2017,'Job\r');
/*!40000 ALTER TABLE `electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadget`
--

DROP TABLE IF EXISTS `gadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gadget` (
  `id_gadget` int NOT NULL,
  `catid` int DEFAULT '2',
  `manufacturer` varchar(45) NOT NULL,
  `year_of_purchase` year NOT NULL,
  `model_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_gadget`),
  KEY `catidb_idx` (`catid`),
  KEY `index3` (`manufacturer`),
  CONSTRAINT `catidb` FOREIGN KEY (`catid`) REFERENCES `category` (`idcategory`) ON UPDATE CASCADE,
  CONSTRAINT `prodid_gadget` FOREIGN KEY (`id_gadget`) REFERENCES `product` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadget`
--

LOCK TABLES `gadget` WRITE;
/*!40000 ALTER TABLE `gadget` DISABLE KEYS */;
INSERT INTO `gadget` VALUES (16,2,'Riffpedia',2017,'Gembucket\r'),(27,2,'Oyope',2020,'Matsoft\r'),(32,2,'Shufflebeat',2017,'Stim\r'),(46,2,'Dabfeed',2018,'Duobam\r'),(48,2,'BlogXS',2018,'Cardguard\r'),(50,2,'Shuffledrive',2017,'Alphazap\r');
/*!40000 ALTER TABLE `gadget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `img_no` int NOT NULL,
  `product_id` int NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`img_no`,`product_id`),
  KEY `prodid_idx` (`product_id`),
  KEY `index3` (`product_id`,`img_no`),
  CONSTRAINT `prodid` FOREIGN KEY (`product_id`) REFERENCES `product` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'http://dummyimage.com/217x100.png/cc0000/ffffff\r'),(1,2,'http://dummyimage.com/109x100.png/5fa2dd/ffffff\r'),(1,3,'http://dummyimage.com/213x100.png/dddddd/000000\r'),(1,4,'http://dummyimage.com/226x100.png/dddddd/000000\r'),(1,5,'http://dummyimage.com/241x100.png/cc0000/ffffff\r'),(1,6,'http://dummyimage.com/229x100.png/cc0000/ffffff\r'),(1,7,'http://dummyimage.com/145x100.png/cc0000/ffffff\r'),(1,8,'http://dummyimage.com/106x100.png/ff4444/ffffff\r'),(1,9,'http://dummyimage.com/238x100.png/ff4444/ffffff\r'),(1,10,'http://dummyimage.com/201x100.png/dddddd/000000\r'),(1,11,'http://dummyimage.com/191x100.png/cc0000/ffffff\r'),(1,12,'http://dummyimage.com/238x100.png/ff4444/ffffff\r'),(1,13,'http://dummyimage.com/236x100.png/5fa2dd/ffffff\r'),(1,14,'http://dummyimage.com/245x100.png/cc0000/ffffff\r'),(1,15,'http://dummyimage.com/157x100.png/ff4444/ffffff\r'),(1,16,'http://dummyimage.com/219x100.png/cc0000/ffffff\r'),(1,17,'http://dummyimage.com/231x100.png/ff4444/ffffff\r'),(1,18,'http://dummyimage.com/249x100.png/5fa2dd/ffffff\r'),(1,19,'http://dummyimage.com/240x100.png/cc0000/ffffff\r'),(1,20,'http://dummyimage.com/212x100.png/dddddd/000000\r'),(1,21,'http://dummyimage.com/181x100.png/dddddd/000000\r'),(1,22,'http://dummyimage.com/134x100.png/ff4444/ffffff\r'),(1,23,'http://dummyimage.com/231x100.png/dddddd/000000\r'),(1,24,'http://dummyimage.com/204x100.png/ff4444/ffffff\r'),(1,25,'http://dummyimage.com/243x100.png/ff4444/ffffff\r'),(1,26,'http://dummyimage.com/181x100.png/cc0000/ffffff\r'),(1,27,'http://dummyimage.com/178x100.png/ff4444/ffffff\r'),(1,28,'http://dummyimage.com/229x100.png/cc0000/ffffff\r'),(1,29,'http://dummyimage.com/146x100.png/5fa2dd/ffffff\r'),(1,30,'http://dummyimage.com/241x100.png/ff4444/ffffff\r'),(1,31,'http://dummyimage.com/232x100.png/ff4444/ffffff\r'),(1,32,'http://dummyimage.com/216x100.png/cc0000/ffffff\r'),(1,33,'http://dummyimage.com/224x100.png/5fa2dd/ffffff\r'),(1,34,'http://dummyimage.com/187x100.png/5fa2dd/ffffff\r'),(1,35,'http://dummyimage.com/111x100.png/cc0000/ffffff\r'),(1,36,'http://dummyimage.com/128x100.png/dddddd/000000\r'),(1,37,'http://dummyimage.com/245x100.png/ff4444/ffffff\r'),(1,38,'http://dummyimage.com/193x100.png/5fa2dd/ffffff\r'),(1,39,'http://dummyimage.com/171x100.png/5fa2dd/ffffff\r'),(1,40,'http://dummyimage.com/228x100.png/cc0000/ffffff\r'),(1,41,'http://dummyimage.com/198x100.png/cc0000/ffffff\r'),(1,42,'http://dummyimage.com/225x100.png/cc0000/ffffff\r'),(1,43,'http://dummyimage.com/130x100.png/5fa2dd/ffffff\r'),(1,44,'http://dummyimage.com/149x100.png/cc0000/ffffff\r'),(1,45,'http://dummyimage.com/244x100.png/cc0000/ffffff\r'),(1,46,'http://dummyimage.com/129x100.png/5fa2dd/ffffff\r'),(1,47,'http://dummyimage.com/171x100.png/5fa2dd/ffffff\r'),(1,48,'http://dummyimage.com/133x100.png/ff4444/ffffff\r'),(1,49,'http://dummyimage.com/107x100.png/cc0000/ffffff\r'),(1,50,'http://dummyimage.com/222x100.png/5fa2dd/ffffff\r'),(2,5,'http://dummyimage.com/222x100.png/5fa2dd/ffffff\r'),(2,6,'http://dummyimage.com/199x100.png/5fa2dd/ffffff\r'),(2,8,'http://dummyimage.com/101x100.png/5fa2dd/ffffff\r'),(2,9,'http://dummyimage.com/169x100.png/cc0000/ffffff\r'),(2,10,'http://dummyimage.com/184x100.png/5fa2dd/ffffff\r'),(2,11,'http://dummyimage.com/171x100.png/dddddd/000000\r'),(2,12,'http://dummyimage.com/222x100.png/ff4444/ffffff\r'),(2,15,'http://dummyimage.com/140x100.png/5fa2dd/ffffff\r'),(2,16,'http://dummyimage.com/139x100.png/ff4444/ffffff\r'),(2,17,'http://dummyimage.com/105x100.png/cc0000/ffffff\r'),(2,18,'http://dummyimage.com/189x100.png/cc0000/ffffff\r'),(2,19,'http://dummyimage.com/178x100.png/5fa2dd/ffffff\r'),(2,21,'http://dummyimage.com/100x100.png/dddddd/000000\r'),(2,22,'http://dummyimage.com/105x100.png/cc0000/ffffff\r'),(2,23,'http://dummyimage.com/223x100.png/5fa2dd/ffffff\r'),(2,24,'http://dummyimage.com/162x100.png/5fa2dd/ffffff\r'),(2,25,'http://dummyimage.com/171x100.png/dddddd/000000\r'),(2,26,'http://dummyimage.com/161x100.png/ff4444/ffffff\r'),(2,30,'http://dummyimage.com/241x100.png/ff4444/ffffff\r'),(2,32,'http://dummyimage.com/167x100.png/dddddd/000000\r'),(2,33,'http://dummyimage.com/178x100.png/cc0000/ffffff\r'),(2,34,'http://dummyimage.com/119x100.png/5fa2dd/ffffff\r'),(2,37,'http://dummyimage.com/194x100.png/ff4444/ffffff\r'),(2,39,'http://dummyimage.com/101x100.png/ff4444/ffffff\r'),(2,40,'http://dummyimage.com/210x100.png/5fa2dd/ffffff\r'),(2,41,'http://dummyimage.com/192x100.png/ff4444/ffffff\r'),(2,42,'http://dummyimage.com/132x100.png/5fa2dd/ffffff\r'),(2,43,'http://dummyimage.com/122x100.png/dddddd/000000\r'),(2,45,'http://dummyimage.com/139x100.png/cc0000/ffffff\r'),(2,47,'http://dummyimage.com/188x100.png/cc0000/ffffff\r'),(2,50,'http://dummyimage.com/150x100.png/5fa2dd/ffffff\r'),(3,10,'http://dummyimage.com/180x100.png/ff4444/ffffff\r'),(3,12,'http://dummyimage.com/198x100.png/dddddd/000000\r'),(3,16,'http://dummyimage.com/135x100.png/ff4444/ffffff\r'),(3,18,'http://dummyimage.com/179x100.png/cc0000/ffffff\r'),(3,19,'http://dummyimage.com/163x100.png/5fa2dd/ffffff\r'),(3,22,'http://dummyimage.com/105x100.png/5fa2dd/ffffff\r'),(3,23,'http://dummyimage.com/195x100.png/ff4444/ffffff\r'),(3,24,'http://dummyimage.com/144x100.png/ff4444/ffffff\r'),(3,25,'http://dummyimage.com/168x100.png/dddddd/000000\r'),(3,26,'http://dummyimage.com/111x100.png/dddddd/000000\r'),(3,30,'http://dummyimage.com/208x100.png/dddddd/000000\r'),(3,33,'http://dummyimage.com/162x100.png/cc0000/ffffff\r'),(3,37,'http://dummyimage.com/156x100.png/ff4444/ffffff\r'),(3,40,'http://dummyimage.com/164x100.png/5fa2dd/ffffff\r'),(3,41,'http://dummyimage.com/111x100.png/ff4444/ffffff\r'),(4,12,'http://dummyimage.com/120x100.png/5fa2dd/ffffff\r'),(4,18,'http://dummyimage.com/158x100.png/cc0000/ffffff\r'),(4,30,'http://dummyimage.com/177x100.png/ff4444/ffffff\r'),(5,30,'http://dummyimage.com/105x100.png/ff4444/ffffff\r');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `phone` char(10) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`phone`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('9012473368','icorwood4q@unesco.org','bGkOIIXMh\r'),('9013765566','jcoughan7l@walmart.com','uYZynoohjO0e\r'),('9014482677','ralbanbt@bbc.co.uk','kugzRQa\r'),('9016262740','dbankesa1@netlog.com','0WAYfOWRI\r'),('9016656950','mwelbrock3f@netlog.com','G7NjA1GZM\r'),('9020136653','ncappell9j@webeden.co.uk','t4BUb5CSv15\r'),('9031745817','gvineyc@behance.net','YqyGhRq0nNl\r'),('9031751348','rhalston11@cmu.edu','8YHagddo\r'),('9039157321','lsowte79@zdnet.com','e0pocl2k\r'),('9045986318','bkorneichikbd@prlog.org','00C4hyOSFj78\r'),('9052252037','mmackett48@vkontakte.ru','VrC7YcqTEnY\r'),('9055483764','rassitera4@cbsnews.com','SbioDAeLOZ\r'),('9062250842','jalabone9z@yale.edu','V2yuDEAwjbP\r'),('9069850482','hcarlick2p@netvibes.com','bY3mD9D9I\r'),('9070637821','kdreghorn63@cbsnews.com','DrFCh2aB2\r'),('9071784358','iskelcher84@cmu.edu','TJnw7W\r'),('9073152782','wdudmarsh3r@slashdot.org','i4a70LtqCpz\r'),('9074404112','omaevela7h@google.co.uk','bF7cKBUo\r'),('9075734103','rknutsen3q@1688.com','JVcB2Z\r'),('9083241131','cpieroniaf@jugem.jp','whkitAjcm\r'),('9083526410','eseabrightbk@smh.com.au','WCjVdOIL\r'),('9083817568','rmebsh@jiathis.com','TEOfymZdv8t\r'),('9085225159','llaterza8s@china.com.cn','sU6B6kr8Rj\r'),('9085405864','cdellocr@hostgator.com','smIdYHb6bQN\r'),('9089158615','sbuckberry8k@icq.com','GpB9jWzoOcS\r'),('9096923688','hlinner4g@cnn.com','I2j7xt5\r'),('9097841886','oandresen10@fema.gov','kX811jyOW\r'),('9101201728','rfearnall5c@list-manage.com','EMJXukFnMDS0\r'),('9103864882','vhardingtonp@latimes.com','d0C5nlf8r\r'),('9104719660','oblowing9r@fastcompany.com','OmLEES6H2y\r'),('9106546586','edavidowsky7b@flickr.com','gU959d\r'),('9108575011','vdurakat@nymag.com','mzuQ7mpOa\r'),('9109254122','rlepickb8@reverbnation.com','uaGDcV\r'),('9110868523','amcmillamci@artisteer.com','K7aHOQ3Ki8\r'),('9111328522','pdunridge25@house.gov','uzvph6cCSub\r'),('9113634208','locurranec@twitter.com','koABRSb3U\r'),('9115978134','fmaleck7p@ezinearticles.com','a2Nbd5N\r'),('9117021836','imcilriachq@is.gd','p0awM6Bb1\r'),('9119173172','ksouthwood13@hp.com','1jsTA82F5\r'),('9120152327','rbarnhillm@latimes.com','bXmaAO\r'),('9120736673','mshellcross8a@networkadvertising.org','dhd2dnk\r'),('9122136116','mpercifull2k@soup.io','lCPnnY3vXBt\r'),('9123672559','ostollenb9@domainmarket.com','iXTrgyoG2\r'),('9125672815','tsrutton42@theguardian.com','R3sYJe\r'),('9125719532','tburgess20@discuz.net','jOWAWuW4zRt\r'),('9127348371','zlambertazziaa@fotki.com','pm6CM9qa4\r'),('9127869896','bleathlay3c@altervista.org','FD6DH90\r'),('9128228124','rhackworth59@gov.uk','kCdkBreXn\r'),('9128525251','dadamsen7t@arizona.edu','I4ERgVjLoz\r'),('9128652818','mstapyltonc1@engadget.com','ky1eZf4ue\r'),('9132328837','ugirdwood0@example.com','vfBTCMn\r'),('9132837735','gstopforddk@instagram.com','eEayKaekZtgh\r'),('9134772637','cstraffon5n@angelfire.com','9IpXqKWV2z\r'),('9136748938','mtrain7z@epa.gov','MbQaMDRwIIL\r'),('9138267166','hchallicum6x@nbcnews.com','QjGXMyO9UhLQ\r'),('9139623353','mmoncarrj@sogou.com','qWcXmNt5GX\r'),('9140682215','mtownes13@google.com.hk','W7sTfMI\r'),('9141098173','bwestripas@wikimedia.org','djTl8K23\r'),('9143238421','gteasey1q@nifty.com','V1unMl\r'),('9145313712','pciardo68@disqus.com','RCpOYou3\r'),('9147331562','bnarramored0@chron.com','IiXZcFc8E7NL\r'),('9148612283','mhartman6q@sohu.com','pyazn7gY2iOF\r'),('9148867853','dautry9o@printfriendly.com','lQgImc37iiOk\r'),('9149121882','ostannion2f@amazon.co.uk','bXwVvVlJBC3H\r'),('9151863756','ibaugham3w@surveymonkey.com','1i1EcOIBJ\r'),('9152381723','vtribell7v@usa.gov','Nb1qM7IlINo\r'),('9152487921','jdavisai@walmart.com','7qHFR5qk\r'),('9153238114','laupol60@salon.com','4kpopfo\r'),('9154242156','nmoncaster49@yellowbook.com','RO2PMr1jp2rO\r'),('9154416842','wrollingda@booking.com','eCEwkM7cI6\r'),('9154623154','ddicey7n@newsvine.com','rqNCyF8yt\r'),('9155611846','dtuthercp@wikipedia.org','LsEtBYgPi\r'),('9156777518','dlagesae@baidu.com','ZNrfPXJFuS\r'),('9160621183','cmcilhatton8t@tuttocitta.it','VIAY9IN\r'),('9161231259','tlohrensenn@accuweather.com','MYjp37sGJOs\r'),('9162647278','telcottbc@4shared.com','4Pe5hXlj\r'),('9165037813','opearsoncd@vk.com','JKCzrL7Vmq\r'),('9166316665','cmessom2c@goodreads.com','JNXtl6z7sFt3\r'),('9166877619','jtranter2t@cnbc.com','az2o8uLoa\r'),('9168613222','mmenguy1u@1688.com','0y3W2zKp6lqk\r'),('9169778589','thyslop9v@lycos.com','tzBNtCXtcF\r'),('9173760274','rgush7f@umn.edu','1qf22QvF\r'),('9175477973','cmabbett35@npr.org','OIbR3XSe\r'),('9176877242','jcolquyte5t@pinterest.com','PWXh8qom7HT\r'),('9176942028','eyoselevitch9b@usa.gov','8AaTI07\r'),('9182156674','scollihole9w@mysql.com','Uc1rL3ZgmIs\r'),('9182581867','mwilsdon8z@wikipedia.org','sbjryg\r'),('9184649862','acasoa6@angelfire.com','ryjDPpL\r'),('9185270459','gstruijsr@clickbank.net','JvqPilTE2\r'),('9185557667','rchesnutk@360.cn','ZHDkoU0gg\r'),('9186112358','pplease2q@nydailynews.com','sQRFHBjK\r'),('9187232758','hdimmnebb@google.com.hk','DiK0iYuvDk\r'),('9187441373','wbugbyb6@ihg.com','sGNiQyHC\r'),('9191824772','gettritch93@un.org','P9hMeewMEoKF\r'),('9193161842','cwiltonby@sohu.com','oZLSZwxMWMQZ\r'),('9193684499','hhawket96@unblog.fr','TX6jNVtjU\r'),('9194440624','wgrimstead1p@loc.gov','0qVqx3stfW\r'),('9195514542','rhun1s@rambler.ru','igF7h3\r'),('9198263234','gdouty8y@typepad.com','lpwbI7g5h\r'),('9202684552','nfavillbi@pinterest.com','d0tMV5mGWmlc\r'),('9204859642','bfernyhougha9@mit.edu','2g9tgCAw\r'),('9205185634','neccleston18@who.int','QUFv7Q4\r'),('9206193678','aegglestonaz@multiply.com','lkprOPbQ\r'),('9207086652','phuskinson1a@phpbb.com','HG3tJwQ436\r'),('9207138110','fdunv@yellowpages.com','ImLE3JPd5d\r'),('9218974315','cgirardc9@hibu.com','3OLsB83\r'),('9220272498','gaird87@slashdot.org','nN21X8l\r'),('9222359568','alambole5o@tumblr.com','964GuZgs5tCc\r'),('9223175428','opiddlesdenm@ed.gov','oTRCORAm4e\r'),('9223435349','acleall5l@topsy.com','UVMd5Pic\r'),('9227229506','bizencg@yandex.ru','F92CWPi\r'),('9229631852','hnorths@soup.io','JDBBGhj77QBF\r'),('9231581408','tyoungman15@uiuc.edu','yDdxkEvY\r'),('9232777980','aelgy77@imdb.com','RrWxJ5a\r'),('9233078216','cgalletley62@free.fr','dQITkOr\r'),('9236581227','mcatford2n@reverbnation.com','qjP62d5cYl\r'),('9236975073','ppeterc8@mit.edu','oJZZ9cGzeYI\r'),('9237431752','elamar71@1688.com','ijzWGrPOoaD\r'),('9237818061','cberic1j@indiegogo.com','gKnDY2UJi\r'),('9240506164','tkirkbybr@npr.org','rt96LC\r'),('9241643368','sduxburybe@arizona.edu','GUmnVQ0\r'),('9241671578','coverstreet26@uol.com.br','i1levS\r'),('9244795967','reat29@last.fm','ONkZJqv2\r'),('9246134185','vzeplind6@vk.com','b6nUbxxKJg4r\r'),('9247002621','oattride45@cocolog-nifty.com','lETYpF5\r'),('9247296241','tboorman8b@accuweather.com','ap6s3bG\r'),('9247863354','vhunnywell6@illinois.edu','qB6rr1u\r'),('9249536647','igonnelv@etsy.com','K6BS2u3N\r'),('9252563358','emaha2v@360.cn','8reFzg7\r'),('9255172181','cjoslin36@fotki.com','OMonwcW\r'),('9255473388','hhumbera8@merriam-webster.com','A3zMBpDF\r'),('9256415434','fyegoshincm@earthlink.net','Uot5hMYDOf\r'),('9256961055','jbrackpool50@msn.com','clnr1e\r'),('9261481743','cleali@shop-pro.jp','7Gt006sQ\r'),('9264826213','lhartford3@gravatar.com','a0dBVtXX\r'),('9265421589','fcoffeltc2@naver.com','IeC9wbP\r'),('9266752726','wcartan32@youtu.be','c3ecvu2\r'),('9272112468','citzkovitchbx@paginegialle.it','OZFkKOn\r'),('9272315722','dgatecliff5x@twitter.com','RI1jRJZNGK\r'),('9278285145','mloveguard22@yelp.com','enUdLwOZn\r'),('9282765841','bstrettell3e@smh.com.au','AJAzZZuaUXe\r'),('9283082382','cduffett92@ucla.edu','7eK4wxMg\r'),('9284651574','aleemingbv@alibaba.com','QmZTKiq\r'),('9285852892','crollobo@independent.co.uk','ksfPPd3\r'),('9287121282','omilthorpe31@ucoz.ru','Tbe7tpMJpyU\r'),('9292425034','jcraxford3j@pinterest.com','7SNYF9Dn\r'),('9293825241','milson80@who.int','9brJ2B\r'),('9295973895','lduffellap@paypal.com','ogvTmmg\r'),('9297121166','jsrawley6j@google.de','ujmGAzF\r'),('9297427334','esmyther@cyberchimps.com','FJ6XIKH6z5K\r'),('9303962272','bkennford4x@dailymail.co.uk','E9ihoIs\r'),('9305274861','lcholtondf@dion.ne.jp','dgjQpfv\r'),('9307501778','icurmi2o@blinklist.com','s24j2Zk2U\r'),('9309612977','wgheerhaert41@taobao.com','FvXg6c2Sq\r'),('9313018588','fbischoff1c@cnet.com','oGjq6EUpD\r'),('9313385366','ayearn9y@xing.com','eSRfEjZEB\r'),('9315642024','callday1l@google.fr','9sTDohGx\r'),('9317811717','rnearsh@edublogs.org','L4l5zoV69sv\r'),('9317818411','kstoney5m@barnesandnoble.com','3yLQ9OZgZ9\r'),('9318506351','ashemelt8r@wired.com','iXS9dF\r'),('9318595218','emylesz@pbs.org','orFphT67XM\r'),('9324680466','jengledowau@deviantart.com','ak0mfao\r'),('9326567673','blorentzencz@dailymail.co.uk','D52jOiwD3\r'),('9327289129','lspurriar19@apple.com','8A0EmDBP\r'),('9328693336','gsanzio11@nifty.com','dhxWfdEFW\r'),('9330124844','rbrimmacombec7@foxnews.com','mWdEJq\r'),('9332465514','vocullen4c@dagondesign.com','2Ao6bgcSX\r'),('9333186992','bomeara2b@ucla.edu','kd6IyIBq5S\r'),('9334286664','fcolvillec5@forbes.com','lfuAlI\r'),('9334410444','ggiscken1n@theatlantic.com','Yclo3f\r'),('9334631955','sdelahay16@yelp.com','SFRlMgiKXp6B\r'),('9335561546','sandrejevic70@sciencedaily.com','ov6CW50F\r'),('9336363892','ntunny1y@marriott.com','tKSI0LRU5\r'),('9337765178','spickless0@t-online.de','XtWSNoB\r'),('9338426239','flowrance61@wp.com','o3i5kMw99S\r'),('9341520632','twroughton4d@unesco.org','hqLErGz\r'),('9344426455','mbradshawn@imgur.com','NQAZvmWlmd1\r'),('9344822022','vdelacourt9d@wikispaces.com','jdO5K4ssUee\r'),('9346415581','kmiko2e@unesco.org','NiJdpoK\r'),('9351162654','sstillwell5s@admin.ch','HuSwsiPN6\r'),('9351354753','mmcinnes8j@free.fr','Gv2md4M6Qj0\r'),('9351355802','emolden8q@hostgator.com','WIzQd6\r'),('9352233753','hpetrakovbp@fda.gov','G30A9Hs5X\r'),('9353096149','lmcaughtrie7d@japanpost.jp','fAc96Bq\r'),('9355434910','neslemont7s@tinypic.com','ZhLKUGUP\r'),('9355986434','kbresner89@google.cn','9v60ReQAj3f\r'),('9356118328','emarkushkinav@photobucket.com','UKtJsOO\r'),('9363781214','cdobesondl@jigsy.com','Vj1xTV8HV\r'),('9364468215','mhafnerd8@washingtonpost.com','fQXpss4\r'),('9365370155','dmcswani@flavors.me','Ln97xDgMjY\r'),('9365814885','gbirchill6a@oracle.com','evWtIoZo3d8q\r'),('9368001282','amatveyev9t@webnode.com','8fwrK5wR7j\r'),('9368428182','sgilders81@devhub.com','snOzxXePHA9\r'),('9371574577','igarmons9k@elegantthemes.com','Rymcgaff2Rt0\r'),('9371934439','vskurrayad@java.com','nGTqPnJgs\r'),('9373716841','wfaill7i@va.gov','w1O5wFDO\r'),('9374392722','mbeadnall86@photobucket.com','NEH6yi\r'),('9377883897','rdurman8p@china.com.cn','P1UDzv\r'),('9378401821','thulburd7x@sbwire.com','kKZVyT\r'),('9385512942','nwasbey85@hubpages.com','KDckILjRD\r'),('9385638614','rcorcut98@moonfruit.com','jgsB3sFa\r'),('9385766985','kstrelitzl@ifeng.com','RAqsENb\r'),('9386442135','rmccall95@cbsnews.com','JBRvf4ZOA0\r'),('9386535911','apaulich2l@tumblr.com','AEaQMvgv\r'),('9388577125','lgreeson8c@sbwire.com','Iy3y6axZW\r'),('9393351584','rboissierdi@nymag.com','THxBsV\r'),('9397922181','kalfonsettik@bluehost.com','fIMEcX6ESN\r'),('9404953656','fbarbrick4t@twitpic.com','Q9V8vIq\r'),('9408175298','wduffittf@ox.ac.uk','Z0tZMR\r'),('9411524692','crawlind5@tripadvisor.com','ArHQou\r'),('9414607489','kkraft6w@mapquest.com','roiD5fTYRq\r'),('9415173648','mmytton5a@tiny.cc','T8vkm51\r'),('9415843364','fbulluck56@etsy.com','13J1Hct\r'),('9416238806','delsipbj@amazon.com','bINMjqN\r'),('9416758436','gegre1z@newyorker.com','qg3yE7Lc47T\r'),('9418431961','blebosse1i@unesco.org','xvadnI9\r'),('9423028076','vdezamora8o@google.nl','loYQqJKRtsn3\r'),('9425064419','tcesconi3m@salon.com','j5qGColPH\r'),('9427656856','lkhristoforov4h@hhs.gov','sWRE8iZpM\r'),('9428650384','klytton9a@booking.com','th2mLYnYM\r'),('9429635766','acogin46@smugmug.com','L7dWRR\r'),('9431871313','imaffinids@soundcloud.com','zVErmYB\r'),('9433271275','echallenderak@hostgator.com','hTMrRZWQW4\r'),('9433642180','ejanicki2d@domainmarket.com','jA9Rl9\r'),('9435527525','aelleton16@uol.com.br','59cL4vLlvQeE\r'),('9435837215','dmatts5r@webnode.com','XXftib\r'),('9436527515','bfransseni4a@engadget.com','BgHAWOCoA3m\r'),('9436652636','idowrya@google.pl','uF6Sc4p\r'),('9437609231','wmcnickle3k@bandcamp.com','KaIgaNTL\r'),('9437873153','wbeaganab@shinystat.com','GFsPbaaLkF\r'),('9437987841','granald55@tumblr.com','UfrdRXGR\r'),('9439712547','nfranchyonoky@usda.gov','BF7fQu\r'),('9441512838','nblenkiron2m@mlb.com','B6viQkSa14\r'),('9441890711','fhelm5@sphinn.com','eq0wcWb0AuKe\r'),('9442813668','cpancast2u@netvibes.com','KEUgoUY7IuV\r'),('9445855625','jdeclerqam@is.gd','NWOsJKGJOX\r'),('9446092721','afautley9g@hugedomains.com','R7nQBRr\r'),('9447455869','lchoffincx@ow.ly','UFfvXoshc\r'),('9448857345','nbowell4k@yandex.ru','T2DctHZ\r'),('9450061427','lemilien1@redcross.org','RRhFhrl\r'),('9451567440','jmalyan66@tuttocitta.it','hHHGnK7MA\r'),('9454641726','rmuldownie72@springer.com','fuEWJb\r'),('9454973913','agrovier8g@cbc.ca','uThCox\r'),('9456507381','mweighell4b@biblegateway.com','CEklmA7xFM\r'),('9458354225','wmcgrathcq@mysql.com','bs0kXh8\r'),('9460112813','cbodycombe34@spotify.com','0VGlc2hw\r'),('9461547579','fswateridgebh@feedburner.com','38RlwDk\r'),('9465185840','touldred4e@wufoo.com','IJqEHVGZgB1\r'),('9470876285','cacton9@google.fr','2qPYXd0k6O3R\r'),('9473774082','bcroot4n@icq.com','XfNEkVoDe\r'),('9476391165','ameersdc@amazon.com','NbsXWEL\r'),('9476588351','klympany4m@foxnews.com','9bAxANhpfn\r'),('9478225075','aleathlay33@friendfeed.com','5r5kv9d\r'),('9478531938','jfoltin54@blogs.com','vpGePz0\r'),('9478631535','cocaine73@state.gov','jrZAK9erYYJT\r'),('9484086055','agauchax@chronoengine.com','F8NPws\r'),('9484122338','theimann1m@usa.gov','Kq0a2pn\r'),('9487867545','khatherleigh52@scientificamerican.com','CweZFJ9\r'),('9491252693','fbrufordo@ucoz.com','Ys4bmhF5vVf\r'),('9492095252','cchrystal88@pagesperso-orange.fr','Bmzs4skMZ3\r'),('9494129745','fmilsom5h@hugedomains.com','tPrTIx\r'),('9500272247','byearsley5q@boston.com','cEq5wss\r'),('9503542362','cbarkess8e@ihg.com','6vuWsroXk2R\r'),('9509118114','sbythway5i@elpais.com','v1ZKNN4Q7t\r'),('9511117343','hmacafee2i@nyu.edu','5GvIeKs\r'),('9511805211','dbea3u@paypal.com','L05Ry2lXl\r'),('9513247511','irowesl@photobucket.com','7s7JGx6rR\r'),('9518224676','lmottley2z@hugedomains.com','2Jp8G4GZ\r'),('9521184877','emabbittb@harvard.edu','UvPtc7\r'),('9523253155','bsturley30@alexa.com','2y2keprRfgL0\r'),('9523936466','lnortunen21@cbslocal.com','q0qDEyyGBMwy\r'),('9524411193','dbeasantw@blinklist.com','1kXyMYka2\r'),('9524650065','dfishleigh3v@howstuffworks.com','IbewxSNa\r'),('9525421543','tmullender1d@lycos.com','1mAerirK\r'),('9526361175','tcrassweller3a@de.vu','v1Z6n5Z\r'),('9530623417','cfulbrook6v@marriott.com','aVcNzSkuyqDH\r'),('9531159528','ksheardowncu@bing.com','KbrXyk\r'),('9531518828','hharbidge7j@xrea.com','b0kZGjr\r'),('9531982995','fmanachdq@nifty.com','NPG5D98Q\r'),('9532494761','ldegg2s@whitehouse.gov','r8N0djFhnc\r'),('9532827285','lhammand74@ted.com','xFtlKnwW\r'),('9534117785','sscollandb@edublogs.org','ijfoV6\r'),('9537058077','rlindegardy@stanford.edu','CclNgMVBa\r'),('9537647867','ptooker1w@hugedomains.com','SwwgyxPd\r'),('9540213521','kadamovitch9u@adobe.com','nDQAPAn\r'),('9544067418','mshearme1r@list-manage.com','MWtga1\r'),('9544514343','ovanthoog6u@slashdot.org','rA7GXeq0\r'),('9544637260','sjacques5y@eepurl.com','gSk6AnW5\r'),('9547141492','kbolzmanna3@thetimes.co.uk','6l6tbXXtbZA\r'),('9550558241','ffilderyac@ucsd.edu','JGnvtww\r'),('9551218382','rzaczek14@cmu.edu','XHzVHwXQls\r'),('9552436653','nboshelldt@cpanel.net','5ElVE9\r'),('9552659477','jshackesbydp@scribd.com','K4j1J0\r'),('9552782132','dseymour53@cocolog-nifty.com','GttxBWr1FQr\r'),('9552877552','ktoftsd@photobucket.com','BGa8D0RUVQ\r'),('9553884354','rcrocroft12@blogger.com','npB7M1GG\r'),('9555232258','hjedrzejewskia7@t-online.de','hJkp0gAmC8C\r'),('9555268183','kstoyelldr@bizjournals.com','I4ayhDQ7BYN\r'),('9556252481','crummings15@thetimes.co.uk','gxvulNZpdtcF\r'),('9556465101','etyer78@marketwatch.com','mzzGtx\r'),('9557461860','tnealey4@slideshare.net','60PGwU\r'),('9559620402','msheard2j@wufoo.com','ocPmvW\r'),('9560969541','kdillintono@nsw.gov.au','BnkPVwblO\r'),('9561629214','rgidden17@odnoklassniki.ru','71e3NhWI7\r'),('9562178276','helenerc6@moonfruit.com','506mWxQQGTL\r'),('9563114189','sseale5w@eventbrite.com','Xu9tKEioDL\r'),('9563451451','dstowte3y@hao123.com','ICwGTp99AY\r'),('9565005890','nshanksct@stumbleupon.com','bBNWawuQU\r'),('9566179716','ncartine@booking.com','K97ObtQw\r'),('9566273850','bspurnier8d@360.cn','7Ic01P\r'),('9568264626','lfruish19@latimes.com','N4f1yRRtp\r'),('9569152316','tgobel6m@bloomberg.com','n1L9dk\r'),('9574564718','dbastistini1@so-net.ne.jp','qvUSes6PGfDe\r'),('9575069848','paudiss58@gizmodo.com','oLQriHINl1bg\r'),('9575562515','ahender6h@amazon.co.uk','O9B0riNo\r'),('9578655329','apringell6k@nasa.gov','j343EspPY\r'),('9579967622','wbruneton2g@uiuc.edu','sqwzbJiq\r'),('9580655266','panniwellx@oracle.com','eJRgJZl\r'),('9581775461','astiff3t@samsung.com','NhOZbC1pX\r'),('9584558674','whorrodaw@reference.com','Jgo514CmtmgE\r'),('9586640674','rpicardo3@vistaprint.com','cMyQRZ24c\r'),('9587142554','nwinsleyb5@usa.gov','Dh0O1L7XDL\r'),('9588475884','cbeldham5z@dailymotion.com','4I2qV3\r'),('9588640416','nastall2a@nymag.com','VF6kdlDOjc\r'),('9590194431','locarrolch@microsoft.com','AXD6a7kme\r'),('9595048843','sdifriscoc3@clickbank.net','38VTD6Vp\r'),('9602147719','hroxburch1d@usnews.com','22QejdXjD\r'),('9602274960','rvasilikal@photobucket.com','QEkk7kyM\r'),('9608531128','tdrainsdm@blogspot.com','1umC6gdZJDCa\r'),('9613153367','ttailby5p@1und1.de','6TOnqew02kTe\r'),('9614458756','adelcastello6g@chronoengine.com','H6ZpcFBjcueM\r'),('9615574688','slapisht@merriam-webster.com','u5yqnlOLI\r'),('9615882758','jreeveley9@eventbrite.com','rnuWtIKou2VU\r'),('9617575487','fluardj@goodreads.com','Ieuti4k\r'),('9617865922','mmartensene@geocities.jp','wqR9MH\r'),('9622842795','zwildblood6c@github.io','d4fvGE0Llvg\r'),('9623669231','broache2x@discuz.net','F6rKFA7iFEu\r'),('9624147814','ksizey28@xing.com','yCBYlCDAWC\r'),('9624487867','bmcentegart27@sphinn.com','oxbtwm\r'),('9626668584','ceaglen3p@washingtonpost.com','qktLii\r'),('9626741198','dellacombe9i@w3.org','vmXU4L9qTv1m\r'),('9628584826','hfullylove8m@xinhuanet.com','FldIiOKSl\r'),('9630340080','kleflochcs@skype.com','t4kgtUOyFe\r'),('9631413625','ccrocroft9q@sfgate.com','sSWOp5u\r'),('9632772436','cdunnan4j@com.com','SoxdIV\r'),('9634427183','lviccary7e@lycos.com','sLqtDSYO\r'),('9636328273','earrighix@walmart.com','5w9k90\r'),('9637365584','acaban69@house.gov','VCHpYR\r'),('9637816007','jtossellcv@amazon.co.jp','85IchhyXDU9\r'),('9637875569','aiannitti18@chicagotribune.com','MPGjQ4PfQ\r'),('9642713224','bnovak1h@deliciousdays.com','eta5mr2ufMB\r'),('9642918178','kjoubert4l@auda.org.au','r28nmoLT2vi\r'),('9643048922','bcattenachcf@multiply.com','YujyRpUO4xI3\r'),('9643269276','sevamy17@columbia.edu','NGS64r\r'),('9643704158','cmcmenamy8f@mysql.com','f7huMAIm\r'),('9644277878','bfewingsbl@cloudflare.com','jokC63C\r'),('9645761373','lhamshere6z@springer.com','LusassvKYdk\r'),('9645783773','lakroydd4@usatoday.com','UtksYC\r'),('9646767184','nmacvey5b@theatlantic.com','m3NMGFHt8VIs\r'),('9647393308','sfrisela2@netlog.com','peT1DII\r'),('9649391037','dmaccaullaj@technorati.com','qB8UJIeVYw\r'),('9651886259','cdumke7a@cdc.gov','yiwgMnWs\r'),('9652768221','tdmitrovic3g@about.com','sE5qWZ\r'),('9653437233','bcastagnonebs@wp.com','fopftZ8ApS\r'),('9654175493','cvatinide@usda.gov','0WmJz2MO\r'),('9656685933','ppigott76@disqus.com','Ru8lGG\r'),('9658473575','ascrane4w@yellowbook.com','lrfjvao\r'),('9660166053','bkemble8h@freewebs.com','vvishcO1gi0W\r'),('9663314043','gmacmaster38@google.fr','llYUynh\r'),('9665685572','bkencottag@harvard.edu','WCYlCZY\r'),('9665755584','tavent6f@sourceforge.net','KBtnFg0\r'),('9666891426','tblondenca@mac.com','sF6Hye3bhfW\r'),('9667787428','mbourtoumieuxdh@hp.com','BoDMBCny\r'),('9669752348','hplace1v@squarespace.com','396v42wAV\r'),('9671154030','pkerss14@arizona.edu','DhXaXL\r'),('9671284039','cbonafant4i@wordpress.com','GZ562y0ko3Jq\r'),('9671995986','htommaseo12@weibo.com','KUPiIATiN\r'),('9673249370','rmacafee6y@gmpg.org','Dj368SjVUlv\r'),('9675629367','mbonnickb1@google.com.au','BHUoGk6CvZDM\r'),('9675963272','cturban43@ftc.gov','4iOdSmWYh\r'),('9676440383','jfustdo@phoca.cz','V3obJq1i5iQD\r'),('9677475540','achalker23@infoseek.co.jp','xAoUqq7\r'),('9680378529','vstonhouse5g@cbsnews.com','T2SaWlkw\r'),('9681711999','emechic10@blog.com','YOYtrO\r'),('9688486997','kwarham94@symantec.com','9UlLdNRW\r'),('9689168012','bpetto91@shinystat.com','F9JTCrTaYJG\r'),('9698024954','gphilipson67@themeforest.net','Vu68dz\r'),('9698260431','nrigmondbq@prnewswire.com','V3v8cr2eA6\r'),('9704816473','sedds6s@cocolog-nifty.com','5Y0T9e\r'),('9705277811','hedge24@altervista.org','TFhsm0gHrM7Z\r'),('9711375532','cmacpake1e@wsj.com','n7rku7tOtJ8f\r'),('9711756247','goosthoutdevreec0@wix.com','7lPUtI\r'),('9713445776','falexsandrovich7m@dion.ne.jp','TjVca0r6\r'),('9714200432','sbrockieao@gravatar.com','PgazQFLvI\r'),('9716504318','spleasancea0@unblog.fr','sUowKe0FZc\r'),('9716631557','sebenezer7g@google.co.uk','976FM10sDvl\r'),('9717422541','bberfordu@wikimedia.org','xnchBDVcPo\r'),('9717539429','garstingall3z@e-recht24.de','uuZNfqB4q2i\r'),('9717691442','nchern8@tiny.cc','zPHdgU7n9\r'),('9718036142','amellcc@japanpost.jp','8v5twAHQ\r'),('9722377747','rmckenzie3d@soup.io','ppvJEIbO\r'),('9723436988','cfernyhough7c@studiopress.com','tIT9WnE\r'),('9723518963','cgravatt7w@dedecms.com','wih1TQHiM\r'),('9724109677','dstubbert9c@senate.gov','d7FtPVQfNp1k\r'),('9724573473','fglenn7r@live.com','Ndg3DhgFm0\r'),('9729749798','dmonery7q@fda.gov','hiIabw0zSDz\r'),('9730712130','mterbeek7k@csmonitor.com','zqHcrS0hHS\r'),('9733269888','mtoppes1b@mac.com','5uceYnm\r'),('9733978824','wjudkinss@admin.ch','tao9ryLTyDqi\r'),('9735569237','gmccritchiedu@ftc.gov','SQ8QDiHZWYT\r'),('9738360111','mdimitrie3h@tmall.com','lytw4avLqR\r'),('9741842707','ustarten9h@arizona.edu','434JkRWRlv\r'),('9742146886','kbenian3x@flavors.me','nWIzuO\r'),('9743635159','sspere1t@cam.ac.uk','v67P2eURSx\r'),('9746054126','dhedin4u@deviantart.com','FPa24iCkM\r'),('9746380491','wthreadgolddn@virginia.edu','GiD6hi3cerPv\r'),('9746445742','nfayers3s@boston.com','LKJIfF\r'),('9746543025','rportal3l@dailymail.co.uk','EtUWGTB\r'),('9751375227','isimonellip@e-recht24.de','Th3yet\r'),('9751513098','jhamblyck@typepad.com','zE22TPj\r'),('9751532824','agatus39@google.com.au','HQfPKqAwH\r'),('9751656643','rlittlecote8w@istockphoto.com','CavxOUt\r'),('9754378488','mpenwarden8l@dyndns.org','BGOjXoMmvI\r'),('9754716572','cminkind9@sourceforge.net','l3JboLOvv\r'),('9755011615','lbootymanbf@washington.edu','EJIHlQAMpGN\r'),('9757495921','ewortley9e@geocities.com','kwLYrUPMT\r'),('9758255652','tcawkillba@dot.gov','amCdNcunJWz\r'),('9761930117','mhannabusar@clickbank.net','NRjqQae0Ll\r'),('9762462518','sdoogue3b@about.com','NBxEh6jOg\r'),('9763503042','gdantonan@altervista.org','Dz1sdYpK\r'),('9763828440','mhaighd3@unc.edu','5SXSzzv\r'),('9769304548','alaurencecb@digg.com','BYhtHOSDqP\r'),('9769435302','vtupman2@cdbaby.com','NVXnOTVzH4m\r'),('9769995795','kbroyb2@wikispaces.com','F5LpdaS5pl\r'),('9771339555','cfansy6@etsy.com','YfO1vyMRNy\r'),('9771377585','ycudde2y@who.int','1bFcKprv5a\r'),('9773766073','ledgecumbe6d@pcworld.com','6ItJr5V\r'),('9773880116','rsebring6i@cnet.com','NSfUWNnNa\r'),('9775375734','dlewtey1k@blinklist.com','BqnmaWDDVh\r'),('9776132442','opiola8@nhs.uk','6GngzE\r'),('9778727626','svenediktov1b@telegraph.co.uk','W2AcoM65\r'),('9780854764','jmooneyz@wix.com','WV0bMyq\r'),('9781567001','mmerida6b@fastcompany.com','DsYg37\r'),('9782366457','vrule40@upenn.edu','c1vWnmha\r'),('9784621158','ldombrell37@tripadvisor.com','XqLym0\r'),('9786139123','dstanhopeb@apache.org','OLRSOZj2Q\r'),('9787506526','smacounw@jiathis.com','WLpcukPpAYLW\r'),('9789531264','mgyles3i@wunderground.com','lS1Xqnw2Mx\r'),('9795112876','pbaytrop7o@nytimes.com','Fbz532NZ\r'),('9796847112','atomashovd7@linkedin.com','W8czp2sraAZk\r'),('9797663944','agatesb4@ox.ac.uk','znOItkmCB\r'),('9797736171','bbettinson2@nymag.com','NHF6UdQb0\r'),('9801172102','amcparlandb7@bigcartel.com','1zPtZiO\r'),('9805777723','cmingotti5d@gnu.org','SNX6v8CjS\r'),('9806153616','acordelettece@mtv.com','auazrejER\r'),('9815253725','jabrashkin4s@fastcompany.com','lRg2hSwkP0\r'),('9818198461','zjeskins9p@odnoklassniki.ru','Svzc0VSewpd\r'),('9819518326','sseamenaq@devhub.com','T542ts0KP\r'),('9826468935','vlehmann82@weibo.com','At6Pej6Q10w\r'),('9827458643','asanham90@barnesandnoble.com','GgxvJ2TTw44p\r'),('9828737278','njaniszewskib0@omniture.com','rP9FxVvVNnR\r'),('9828969827','eswapp9n@bigcartel.com','pIL8jdkUDGD\r'),('9831564029','dliptrotdj@smugmug.com','c8LJ9RsZ\r'),('9831656671','afratson4p@elegantthemes.com','8mrIQZVY\r'),('9832149107','trainfordbz@ifeng.com','T7TGqdEt\r'),('9834693558','csimu@paypal.com','ut8B5gR\r'),('9835046149','tbergeb3@dedecms.com','jPF8vpv\r'),('9835335356','pdignamd@zimbio.com','fmIBqMMssF\r'),('9836716256','jdwightcn@com.com','cmuXLcDWTfL\r'),('9836801433','apiatekbw@pbs.org','ItuyaeCu\r'),('9836927534','jharkinsa@nps.gov','fsNmvT\r'),('9837514232','mstocky6e@go.com','XPCZi6f\r'),('9837550133','kaughtie2r@mysql.com','bBfF4HZNCszI\r'),('9837888981','mbulgencl@baidu.com','ELwhUs\r'),('9837921658','edunkinson8n@ameblo.jp','qYQ2MGrji\r'),('9838262562','candriolli8i@flickr.com','JHgLkyf\r'),('9838455720','hprozescky5k@xinhuanet.com','7g2HUcCcf7h9\r'),('9839475484','acumberbu@jugem.jp','4NHGspk\r'),('9844804458','jtremellier6n@skype.com','HY0wVJu3\r'),('9847263812','alabden3o@icq.com','HbIkbH\r'),('9848381164','abegginic4@usa.gov','7XTOieJ\r'),('9848476595','bpurkins9f@goodreads.com','FXACkldn\r'),('9850145782','pripley3n@fda.gov','vaF4enf6\r'),('9851565224','ncockrambg@va.gov','WvLu0G2Rn7\r'),('9852156571','narchibould5u@cmu.edu','qQgiGLCap4j0\r'),('9853023450','bdobble6l@stanford.edu','RjqisMA\r'),('9855249127','lmicheu9l@wix.com','EzFY4zzdGZe\r'),('9858334503','candreassondd@ox.ac.uk','dmWAF6V2ayO\r'),('9858958684','kfickling4f@globo.com','EkHMR8J1\r'),('9859384750','lstebbingsd2@wisc.edu','hVR8eEhSfisq\r'),('9862467822','dgravenor1a@baidu.com','x5p4lhnIs\r'),('9866988603','mblasl9s@rakuten.co.jp','Uvy1xobIC9qT\r'),('9867456663','zgornar5@mtv.com','tqzssFLHwWSs\r'),('9867613539','hgeall7@friendfeed.com','zWAduvZzrLvg\r'),('9868218176','rhaskellf@xinhuanet.com','tIbgxRTfDOdV\r'),('9868481046','gmaracw@behance.net','oMmnnyOqYLv2\r'),('9869196375','gjanew65@walmart.com','5f6LRO\r'),('9870566478','rbread47@posterous.com','cfgIqw2b7LBZ\r'),('9870802261','amereweather4y@engadget.com','ar0pKs\r'),('9871163813','alugden5v@samsung.com','yf0Rnhw\r'),('9872027931','sdrayton1g@dell.com','Yj5jidObYtkj\r'),('9872534735','mphippin4z@infoseek.co.jp','dT0slW\r'),('9876183897','rmarchandco@weebly.com','QUSfesoOy\r'),('9879221723','skilmurry9m@tripod.com','7x5Zwc6\r'),('9879870282','walbarez75@admin.ch','FHpIe5jLvkXy\r'),('9881068866','jarchdeaconbn@army.mil','5AIRMpgWq\r'),('9882253992','mpickle99@usatoday.com','qSQr0entoI\r'),('9883037062','lpython8u@phpbb.com','gjZMS4m\r'),('9883413294','vpaulus9x@issuu.com','j70ZiMuXaat\r'),('9884401577','mallberryt@fastcompany.com','ikhoPqFLHw\r'),('9884713733','gsmallman6r@blog.com','f7MO1l2Xzxx\r'),('9885533963','ajina1f@indiatimes.com','JPDh4O1Ww4\r'),('9885995366','wblindtd1@tumblr.com','EFQNlSw\r'),('9888434359','ehoudmont64@columbia.edu','Bnz8q8mB\r'),('9889963721','stideswell6p@admin.ch','LI5A7uLwkCnN\r'),('9890118834','tlochead2w@comsenz.com','mV2n2tuY\r'),('9891332950','gfayter7y@unesco.org','lOyo6X5ufG9\r'),('9894049255','aeisikovitshay@elegantthemes.com','23pSDpjlxv\r'),('9898614273','mwoltman4@drupal.org','jzgkIhWxERYO\r'),('9899651867','fdunsterah@privacy.gov.au','Z5GiAqM3j8kD\r'),('9913987533','abunclark2h@tamu.edu','sD2Xzy8\r'),('9915727638','rgerkensg@privacy.gov.au','d1w0m26\r'),('9918431455','hdunthorn1x@fc2.com','FO0fmOXEZo\r'),('9921454974','ebulleyn7u@mit.edu','E2Isz0XNwB7U\r'),('9927386762','hdaouse4v@utexas.edu','WmIInr2MJi1h\r'),('9930358373','scoonandg@cdc.gov','1w6Vzf3fP9hH\r'),('9938313815','mfudger8x@ebay.com','dpxPu9bvQgSz\r'),('9942114991','gawty8v@goo.gl','2GtuCuf\r'),('9943596568','ekeasy5f@msn.com','sRquq50zV\r'),('9944841185','econers57@dmoz.org','Cs1YqxJvo1\r'),('9944877463','tfarnon5e@behance.net','jI35bwy\r'),('9946282273','anovotnaq@prlog.org','03AOcBNeCL\r'),('9947284577','mhubner1o@ihg.com','NGzBrrJDDCw\r'),('9951424956','tmayzes44@thetimes.co.uk','Gn7GEOfU\r'),('9953072238','rtippetts1c@wordpress.com','1pQYqy\r'),('9958825341','lpaliaa5@earthlink.net','X1vRXfW\r'),('9959408588','csanchescj@blog.com','Qa62Z2\r'),('9964266527','fbreffit4o@stumbleupon.com','9eQBqqiZ6D\r'),('9965215844','lpowner97@cnet.com','iwGNP43s0NW9\r'),('9965844779','bbellardcy@howstuffworks.com','DVTIaTMiE3r\r'),('9966134173','rrawetbm@youku.com','gn7mq5\r'),('9969433852','jmckeaveney6o@dyndns.org','8Vjetu3\r'),('9971374678','jrivallant4r@gravatar.com','lBymWIQRpz\r'),('9978445006','dcalterone83@wiley.com','JK1Scjq\r'),('9978515081','scurnnokk5j@newsvine.com','m1Lb1X\r'),('9984457412','dquadri7@timesonline.co.uk','OprjokMKY0pd\r'),('9985793436','hdabeldv@people.com.cn','S9z21E6X\r'),('9989528254','cseldong@naver.com','M2JjMO2vFRo\r'),('9992373113','gseymour6t@senate.gov','yZvI4V7ywztV\r'),('9995723159','ttourle51@list-manage.com','ypL6Fkfgfn\r');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `login_BEFORE_INSERT` BEFORE INSERT ON `login` FOR EACH ROW BEGIN
	IF NEW.phone not in (Select l.phone from login as l where NEW.phone=l.phone Or New.email=l.email)
    then insert into `olx`.`login`(phone,email,`password`) values (New.phone,new.email,new.`password`);
    ElSE 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User With given Email or Phone No. Already Exists'; END if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `sender_id` char(10) NOT NULL,
  `reciever_id` char(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT 'Hello',
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`sender_id`,`reciever_id`,`timestamp`),
  KEY `rec_phone_idx` (`reciever_id`),
  KEY `index3` (`sender_id`,`reciever_id`),
  CONSTRAINT `rec_phone` FOREIGN KEY (`reciever_id`) REFERENCES `users` (`phone`),
  CONSTRAINT `send_phone` FOREIGN KEY (`sender_id`) REFERENCES `users` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('9012473368','9586640674','93211.00','2022-04-27 18:20:06'),('9113634208','9161231259','suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae','2022-02-23 22:08:00'),('9113634208','9185557667','faucibus orci luctus et ultrices posuere cubilia curae donec pharetra','2022-02-21 09:27:00'),('9120152327','9113634208','dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi','2022-02-12 04:17:00'),('9120152327','9317811717','iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus','2022-02-09 17:00:00'),('9120152327','9989528254','lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet','2022-02-26 12:10:00'),('9139623353','9615882758','sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at','2022-02-21 16:37:00'),('9139623353','9617865922','mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet','2022-02-04 04:19:00'),('9139623353','9835335356','nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh','2022-02-15 10:20:00'),('9161231259','9261481743','mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient','2022-02-07 00:23:00'),('9161231259','9317811717','nisi at nibh in hac habitasse platea dictumst aliquam augue','2022-02-25 05:58:00'),('9161231259','9615882758','quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi','2022-02-17 02:46:00'),('9185557667','9436652636','potenti in eleifend quam a odio in hac habitasse platea','2022-02-16 17:12:00'),('9185557667','9617865922','pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac','2022-02-03 11:43:00'),('9185557667','9868218176','justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit','2022-02-08 17:42:00'),('9261481743','9317811717','felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in','2022-02-11 04:06:00'),('9261481743','9835335356','aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales','2022-02-07 02:35:00'),('9261481743','9835335356','adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien','2022-02-14 15:50:00'),('9261481743','9835335356','non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris','2022-02-20 11:29:00'),('9317811717','9113634208','tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum','2022-02-22 07:52:00'),('9317811717','9113634208','fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed','2022-02-24 22:55:00'),('9317811717','9989528254','sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus','2022-02-17 09:02:00'),('9436652636','9513247511','metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna','2022-02-03 23:04:00'),('9491252693','9139623353','pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci','2022-02-23 11:54:00'),('9491252693','9261481743','eu sapien cursus vestibulum proin eu mi nulla ac enim','2022-02-05 18:26:00'),('9491252693','9436652636','nec dui luctus rutrum nulla tellus in sagittis dui vel nisl','2022-02-05 19:18:00'),('9513247511','9521184877','nulla ac enim in tempor turpis nec euismod scelerisque quam','2022-02-03 04:25:00'),('9513247511','9868218176','sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum','2022-02-09 14:42:00'),('9513247511','9989528254','at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque','2022-02-25 23:43:00'),('9521184877','9120152327','quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi','2022-02-18 15:33:00'),('9615882758','9113634208','quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea','2022-02-17 15:29:00'),('9615882758','9185557667','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec','2022-02-14 13:23:00'),('9617865922','9161231259','tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum','2022-02-10 23:03:00'),('9617865922','9436652636','nisi at nibh in hac habitasse platea dictumst aliquam augue quam','2022-02-04 22:25:00'),('9617865922','9615882758','scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc','2022-02-11 09:43:00'),('9617865922','9835335356','velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla','2022-02-22 20:06:00'),('9776132442','9139623353','nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at','2022-02-24 00:02:00'),('9776132442','9521184877','nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in','2022-02-24 12:25:00'),('9776132442','9835335356','hello buddy','2022-02-02 20:41:00'),('9835335356','9120152327','velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat','2022-02-15 17:08:00'),('9835335356','9491252693','nec dui luctus rutrum nulla tellus in sagittis dui vel','2022-02-24 09:46:00'),('9835335356','9513247511','id consequat in consequat ut nulla sed accumsan felis ut at dolor quis','2022-02-10 14:59:00'),('9835335356','9615882758','dapibus duis at velit eu est congue elementum in hac habitasse platea','2022-02-06 07:13:00'),('9835335356','9776132442','morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum','2022-02-02 21:41:00'),('9835335356','9776132442','pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit','2022-02-26 07:32:00'),('9835335356','9835335356','nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at','2022-02-12 16:31:00'),('9868218176','9436652636','semper rutrum nulla nunc purus phasellus in felis donec semper sapien a','2022-02-22 22:14:00'),('9868218176','9491252693','ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar','2022-02-23 23:10:00'),('9868218176','9521184877','leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac','2022-02-13 21:58:00'),('9868218176','9617865922','tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis','2022-02-21 16:28:00'),('9989528254','9521184877','nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam','2022-02-24 04:50:00'),('9989528254','9868218176','felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar','2022-02-02 12:45:00');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prodmonthlycount`
--

DROP TABLE IF EXISTS `prodmonthlycount`;
/*!50001 DROP VIEW IF EXISTS `prodmonthlycount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prodmonthlycount` AS SELECT 
 1 AS `Month`,
 1 AS `Ads Posted`,
 1 AS `Category`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idproduct` int NOT NULL AUTO_INCREMENT,
  `description` varchar(250) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `category_id` int NOT NULL,
  `area_id` char(6) NOT NULL,
  PRIMARY KEY (`idproduct`),
  UNIQUE KEY `idproduct_UNIQUE` (`idproduct`),
  KEY `prod_area_idx` (`area_id`),
  KEY `categroy_idx` (`category_id`) /*!80000 INVISIBLE */,
  KEY `index5` (`price`),
  CONSTRAINT `categroy` FOREIGN KEY (`category_id`) REFERENCES `category` (`idcategory`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prod_area` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus',7415.00,3,'120368'),(2,'sapien quis libero nullam sit amet turpis elementum ligula vehicula',84976.00,5,'316645'),(3,'dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus',15752.00,1,'485219'),(4,'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede',14392.00,1,'163523'),(5,'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer',84600.00,3,'872964'),(6,'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus',11509.00,4,'487835'),(7,'tortor quis turpis sed ante vivamus tortor duis mattis egestas',9854.00,4,'466855'),(8,'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem',69568.00,3,'584074'),(9,'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis',58721.00,4,'161883'),(10,'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst',98832.00,4,'516304'),(11,'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor',43602.00,3,'803849'),(12,'maecenas tristique est et tempus semper est quam pharetra magna ac consequat',40448.00,1,'446250'),(13,'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet',49999.00,4,'686966'),(14,'mattis egestas metus aenean fermentum donec ut mauris eget massa',76894.00,3,'267313'),(15,'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare',35591.00,5,'516304'),(16,'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem',43806.00,2,'803849'),(17,'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede',68099.00,1,'446250'),(18,'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec',18004.00,1,'686966'),(19,'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur',30824.00,3,'267313'),(20,'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed',31853.00,4,'341084'),(21,'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum',41504.00,3,'653371'),(22,'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget',96606.00,1,'173642'),(23,'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam',34025.00,3,'454054'),(24,'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum',78840.00,5,'842121'),(25,'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus',73837.00,5,'574864'),(26,'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus',35182.00,5,'813513'),(27,'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at',12828.00,2,'879173'),(28,'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec',13360.00,1,'606226'),(29,'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl',99913.00,4,'813712'),(30,'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero',39121.00,1,'545768'),(31,'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis',83280.00,1,'161883'),(32,'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum',78300.00,2,'516304'),(33,'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in',93212.00,3,'803849'),(34,'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed',15074.00,4,'446250'),(35,'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec',42104.00,4,'686966'),(36,'lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer',23351.00,1,'267313'),(37,'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl',34319.00,1,'388784'),(38,'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia',61271.00,5,'617783'),(39,'vestibulum ante ipsum primis in faucibus orci luctus et ultrices',11050.00,3,'364821'),(40,'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat',95216.00,5,'880312'),(41,'at nunc commodo placerat praesent blandit nam nulla integer pede',94013.00,5,'516256'),(42,'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum',85460.00,5,'381151'),(43,'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia',13897.00,5,'288059'),(44,'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat',64042.00,1,'386574'),(45,'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique',82616.00,3,'537836'),(46,'mi integer ac neque duis bibendum morbi non quam nec dui',34362.00,2,'445351'),(47,'magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus',76106.00,1,'797639'),(48,'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus',5730.00,2,'413134'),(49,'gravida sem praesent id massa id nisl venenatis lacinia aenean',37761.00,5,'260436'),(50,'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra',54671.00,2,'702685');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_BEFORE_INSERT_1` BEFORE INSERT ON `product` FOR EACH ROW BEGIN
	if New.price<0
    then SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invaild Price';
    else
    INSERT INTO `olx`.`product`
(`idproduct`,
`description`,
`price`,
`category_id`,
`area_id`)
VALUES
(new.idproduct,
new.description,
new.price,
new.category_id,
new.area_id);
end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_BEFORE_UPDATE` BEFORE UPDATE ON `product` FOR EACH ROW BEGIN
	if New.price<0
    then SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invaild Price';
    end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `product_view`
--

DROP TABLE IF EXISTS `product_view`;
/*!50001 DROP VIEW IF EXISTS `product_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_view` AS SELECT 
 1 AS `AD ID`,
 1 AS `Title`,
 1 AS `Price`,
 1 AS `Area`,
 1 AS `Uploaded (days ago)`,
 1 AS `Cover Image`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productadvs`
--

DROP TABLE IF EXISTS `productadvs`;
/*!50001 DROP VIEW IF EXISTS `productadvs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productadvs` AS SELECT 
 1 AS `Product_Owner`,
 1 AS `adv_title`,
 1 AS `verification_status`,
 1 AS `description`,
 1 AS `name`,
 1 AS `price`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `buyer_id` char(10) NOT NULL,
  `product_id` int NOT NULL,
  `date_of_sale` varchar(45) NOT NULL,
  PRIMARY KEY (`buyer_id`,`product_id`),
  KEY `productid_idx` (`product_id`),
  CONSTRAINT `buyer_id` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`phone`),
  CONSTRAINT `productid` FOREIGN KEY (`product_id`) REFERENCES `product` (`idproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES ('9014482677',10,'2022-02-13 19:48\r:00'),('9615882758',21,'2022-02-25 23:58\r:00'),('9711756247',4,'2022-02-04 07:38\r:00'),('9797736171',2,'2022-01-29 17:35\r:00'),('9836801433',17,'2022-02-12 17:35\r:00');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `two_wheeler`
--

DROP TABLE IF EXISTS `two_wheeler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `two_wheeler` (
  `id_two_wheeler` int NOT NULL,
  `catid` int DEFAULT '4',
  `manufacturer` varchar(45) NOT NULL,
  `year_of_purchase` year NOT NULL,
  `model_name` varchar(45) NOT NULL,
  `distance_covered` int NOT NULL,
  PRIMARY KEY (`id_two_wheeler`),
  KEY `catidtw_idx` (`catid`),
  KEY `index3` (`manufacturer`),
  CONSTRAINT `catidtw` FOREIGN KEY (`catid`) REFERENCES `category` (`idcategory`) ON UPDATE CASCADE,
  CONSTRAINT `prodid_tw` FOREIGN KEY (`id_two_wheeler`) REFERENCES `product` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `two_wheeler`
--

LOCK TABLES `two_wheeler` WRITE;
/*!40000 ALTER TABLE `two_wheeler` DISABLE KEYS */;
INSERT INTO `two_wheeler` VALUES (6,4,'Langworth, Friesen and Abbott',2021,'Tacoma',41798),(7,4,'Effertz, Rohan and Zboncak',2017,'Odyssey',4815),(9,4,'Schoen-Kerluke',2021,'E-Series',42444),(10,4,'Swift, White and Kuphal',2019,'Corsica',63489),(13,4,'Kilback, Rowe and Altenwerth',2018,'Nitro',92306),(20,4,'Corkery-Heller',2019,'SL-Class',58715),(29,4,'McDermott-Cole',2019,'MPV',55165),(34,4,'McGlynn LLC',2018,'Aspire',47176),(35,4,'Kuhn Group',2017,'911',84226);
/*!40000 ALTER TABLE `two_wheeler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `phone` char(10) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `pref_language` enum('English','Hindi') NOT NULL DEFAULT 'English',
  `joining_date` date NOT NULL,
  `privacy` enum('Enabled','Disabled') NOT NULL DEFAULT 'Disabled',
  `Status` enum('Blocked','Unknown','Verified') DEFAULT 'Unknown',
  `area_id` char(6) NOT NULL DEFAULT '000000',
  PRIMARY KEY (`phone`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  KEY `area_idx` (`area_id`),
  CONSTRAINT `phone` FOREIGN KEY (`phone`) REFERENCES `login` (`phone`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('9012473368','Iris','Drake','Hindi','2020-01-21','Enabled','Verified','537836'),('9013765566','Abel','Vinson','English','2019-05-27','Enabled','Unknown','218287'),('9014482677','Connor','Greer','English','2019-12-29','Enabled','Blocked','316645'),('9016262740','Illiana','Potts','English','2019-11-21','Disabled','Unknown','653286'),('9016656950','Elijah','Mayer','English','2019-08-17','Enabled','Blocked','813712'),('9020136653','Zelenia','Boone','English','2019-07-31','Disabled','Blocked','313862'),('9031751348','Orson','Bray','English','2020-08-30','Disabled','Verified','332360'),('9039157321','Lenore','Saunders','Hindi','2019-07-04','Enabled','Blocked','606226'),('9045986318','George','Leach','Hindi','2020-01-29','Disabled','Verified','313862'),('9052252037','Linda','Sharp','Hindi','2020-06-23','Enabled','Unknown','875163'),('9055483764','Herman','Carr','English','2021-01-26','Enabled','Blocked','364821'),('9062250842','Farrah','Shields','English','2020-10-20','Enabled','Verified','633497'),('9069850482','Jolie','Perry','Hindi','2019-08-28','Enabled','Verified','623772'),('9070637821','Owen','Sweeney','Hindi','2019-09-02','Disabled','Verified','574864'),('9071784358','Elaine','Perry','Hindi','2019-09-09','Enabled','Unknown','555189'),('9073152782','Hayes','Vance','English','2020-03-12','Enabled','Blocked','715352'),('9074404112','Rina','Leblanc','Hindi','2019-07-02','Enabled','Unknown','943744'),('9075734103','Madaline','Beck','English','2019-02-12','Disabled','Verified','218287'),('9083241131','Isaiah','Singleton','Hindi','2019-11-13','Enabled','Verified','516304'),('9083526410','Silas','Mason','Hindi','2020-04-09','Disabled','Unknown','779057'),('9085225159','Gretchen','Caldwell','English','2021-02-11','Enabled','Unknown','577558'),('9085405864','Ronan','Rios','English','2019-03-16','Disabled','Verified','715352'),('9089158615','Sean','Preston','English','2020-01-08','Enabled','Blocked','386574'),('9096923688','Farrah','Hernandez','English','2020-02-26','Disabled','Unknown','430115'),('9101201728','Harlan','Justice','English','2019-05-24','Disabled','Blocked','888101'),('9104719660','India','Sargent','Hindi','2020-04-01','Enabled','Verified','436947'),('9106546586','Nathaniel','Diaz','English','2020-04-04','Enabled','Verified','545768'),('9108575011','Kermit','Higgins','English','2019-08-01','Enabled','Verified','813712'),('9109254122','Xandra','Knight','English','2019-02-17','Disabled','Unknown','323516'),('9110868523','Isaiah','Melton','English','2019-08-07','Enabled','Unknown','215576'),('9111328522','Rudyard','Webb','Hindi','2020-09-22','Disabled','Blocked','577558'),('9113634208','Zeph','Joyner','Hindi','2020-10-05','Disabled','Blocked','686966'),('9115978134','Urielle','Finch','English','2020-10-23','Disabled','Blocked','323516'),('9117021836','Drake','Clarke','English','2019-09-02','Enabled','Blocked','215576'),('9119173172','Charles','Talley','English','2020-08-21','Disabled','Unknown','916641'),('9120152327','Francesca','Meyers','English','2020-11-01','Enabled','Blocked','606226'),('9120736673','Hanna','Schultz','Hindi','2019-07-04','Enabled','Blocked','633497'),('9122136116','Kitra','Gardner','English','2021-01-14','Disabled','Blocked','888101'),('9123672559','Asher','Blevins','English','2019-03-26','Disabled','Unknown','916641'),('9125672815','Rahim','Lamb','English','2020-11-05','Enabled','Unknown','722258'),('9125719532','September','Cobb','English','2019-12-21','Disabled','Blocked','797639'),('9127348371','Genevieve','Barker','English','2020-01-06','Enabled','Blocked','872964'),('9127869896','Uriah','Wilder','English','2020-01-22','Disabled','Unknown','813513'),('9128228124','Malachi','Olson','English','2020-10-20','Enabled','Blocked','373634'),('9128525251','Raven','Peters','English','2019-09-08','Disabled','Verified','136477'),('9128652818','Charde','Hammond','English','2021-01-07','Enabled','Unknown','516304'),('9132328837','Yasir','Park','English','2020-11-17','Disabled','Unknown','120368'),('9132837735','Thane','Garner','English','2019-06-29','Enabled','Blocked','364821'),('9134772637','Lacey','Aguilar','English','2020-04-19','Disabled','Verified','163523'),('9136748938','Odessa','Larsen','Hindi','2019-11-16','Disabled','Blocked','157975'),('9138267166','Leigh','Sargent','Hindi','2019-09-13','Enabled','Unknown','803849'),('9139623353','Sopoline','Craft','Hindi','2021-01-17','Enabled','Blocked','574864'),('9141098173','Karly','Hays','Hindi','2020-12-23','Enabled','Unknown','606226'),('9143238421','Kelsey','Buckley','Hindi','2019-03-17','Enabled','Unknown','388784'),('9145313712','Bertha','Burgess','English','2021-01-03','Enabled','Verified','545768'),('9147331562','Fay','Fulton','Hindi','2020-11-14','Disabled','Blocked','547813'),('9148612283','Marsden','Ward','Hindi','2020-06-15','Disabled','Verified','163523'),('9148867853','Kaye','Mcintyre','English','2020-11-10','Disabled','Unknown','157975'),('9149121882','Francesca','Castaneda','English','2019-10-03','Enabled','Verified','564256'),('9151863756','Donna','Thornton','Hindi','2019-09-18','Disabled','Verified','222487'),('9152381723','Gretchen','Clark','Hindi','2019-11-01','Disabled','Verified','547813'),('9152487921','Elaine','Whitley','Hindi','2020-10-12','Disabled','Unknown','686966'),('9153238114','Wing','Armstrong','Hindi','2020-05-11','Enabled','Blocked','173642'),('9154242156','Linus','Gallagher','English','2020-02-02','Enabled','Blocked','555189'),('9154416842','Roth','Delgado','English','2020-05-09','Enabled','Verified','598148'),('9154623154','Robert','Price','Hindi','2019-06-29','Disabled','Verified','482877'),('9155611846','Vera','Wiggins','Hindi','2020-08-13','Enabled','Unknown','239337'),('9156777518','Ulric','Rios','English','2020-09-01','Disabled','Blocked','161883'),('9160621183','Heidi','Livingston','Hindi','2021-01-29','Disabled','Verified','712186'),('9161231259','Uriel','Kirkland','English','2019-07-14','Enabled','Unknown','813712'),('9162647278','Martena','Wilkins','English','2021-02-07','Enabled','Blocked','136477'),('9165037813','Vladimir','Wood','Hindi','2019-11-14','Enabled','Blocked','879173'),('9166316665','Scott','Oliver','English','2019-08-25','Disabled','Verified','324386'),('9166877619','Jason','Brooks','Hindi','2020-04-28','Disabled','Blocked','316645'),('9168613222','Xantha','Mcmahon','English','2021-01-31','Disabled','Blocked','516256'),('9169778589','Brenna','Calderon','English','2019-09-14','Enabled','Unknown','426762'),('9173760274','Nina','Mueller','English','2019-08-24','Enabled','Verified','528203'),('9175477973','Justin','Mcmahon','Hindi','2020-04-24','Disabled','Unknown','267313'),('9176877242','Aileen','Hopkins','Hindi','2019-07-06','Enabled','Verified','516304'),('9176942028','Christen','Curry','Hindi','2019-04-02','Enabled','Verified','559774'),('9182156674','Melinda','Roy','English','2020-08-23','Disabled','Blocked','729541'),('9182581867','Sade','Downs','English','2020-11-08','Enabled','Unknown','324386'),('9184649862','Gage','Roth','Hindi','2020-05-23','Disabled','Unknown','120368'),('9185270459','Rafael','Roth','English','2019-02-19','Disabled','Blocked','494191'),('9185557667','Ashton','Bright','Hindi','2021-01-03','Enabled','Verified','813513'),('9186112358','Shaeleigh','Harvey','Hindi','2020-04-15','Disabled','Verified','326418'),('9187232758','Jillian','Fuentes','English','2020-08-11','Enabled','Blocked','700753'),('9187441373','Ulysses','Robles','English','2019-03-07','Disabled','Unknown','482877'),('9191824772','Felicia','Bender','Hindi','2021-02-14','Enabled','Verified','753831'),('9193161842','Laura','Kramer','Hindi','2021-02-01','Enabled','Blocked','466855'),('9193684499','Nichole','Stein','English','2020-05-19','Enabled','Blocked','816167'),('9194440624','Melodie','Thompson','English','2020-06-03','Disabled','Verified','653286'),('9195514542','Alma','Nunez','Hindi','2019-07-03','Disabled','Verified','364821'),('9198263234','Brielle','Robles','English','2019-09-07','Disabled','Blocked','713224'),('9202684552','Hayden','Pacheco','Hindi','2020-07-01','Disabled','Unknown','157975'),('9204859642','Amery','Stevens','Hindi','2020-06-02','Disabled','Unknown','163523'),('9206193678','Macon','Lewis','Hindi','2019-02-24','Enabled','Unknown','450372'),('9207138110','Erica','Mccall','English','2020-11-01','Disabled','Verified','637738'),('9218974315','Wyatt','Matthews','English','2021-01-02','Enabled','Verified','454054'),('9220272498','Delilah','French','English','2019-07-05','Disabled','Unknown','729541'),('9222359568','Alexandra','Franks','Hindi','2019-07-13','Disabled','Verified','872964'),('9223435349','Vance','Conway','English','2020-02-07','Enabled','Unknown','316645'),('9227229506','Caesar','Daniel','English','2019-02-24','Enabled','Blocked','545768'),('9229631852','Tatum','Carter','Hindi','2019-07-29','Enabled','Unknown','528203'),('9231581408','Fatima','Garrison','English','2020-07-25','Disabled','Blocked','700753'),('9232777980','Heather','Sampson','Hindi','2020-02-06','Enabled','Blocked','813513'),('9233078216','Mark','Duran','English','2019-06-17','Disabled','Unknown','842121'),('9236581227','Rebecca','Petty','Hindi','2019-08-12','Enabled','Verified','213681'),('9236975073','Plato','Hatfield','English','2019-09-17','Disabled','Unknown','173642'),('9237431752','Megan','Coffey','Hindi','2020-04-23','Disabled','Blocked','341084'),('9237818061','Rama','Mcpherson','Hindi','2021-02-11','Disabled','Blocked','426762'),('9240506164','Rhea','Lyons','English','2019-10-30','Enabled','Verified','636657'),('9241643368','Iola','Ingram','Hindi','2019-03-07','Disabled','Blocked','547813'),('9241671578','Lucius','Smith','Hindi','2019-09-09','Disabled','Verified','712186'),('9244795967','Lucy','Murphy','Hindi','2021-02-07','Enabled','Blocked','723367'),('9246134185','Thaddeus','Rojas','Hindi','2020-04-23','Enabled','Blocked','779057'),('9247002621','Geoffrey','Ramirez','Hindi','2019-03-11','Disabled','Unknown','335376'),('9247296241','Keane','Maynard','Hindi','2020-07-29','Enabled','Verified','430115'),('9252563358','Lane','Sheppard','English','2020-06-29','Disabled','Verified','163523'),('9255172181','Shelby','Rasmussen','English','2020-06-29','Enabled','Verified','341084'),('9255473388','Amos','Lowe','English','2020-05-21','Enabled','Unknown','485219'),('9256415434','Rylee','Floyd','English','2020-09-21','Enabled','Verified','943744'),('9256961055','Miranda','Decker','English','2020-03-09','Disabled','Blocked','194578'),('9261481743','Beau','Byers','Hindi','2020-12-29','Disabled','Blocked','842121'),('9265421589','Uta','Hoover','Hindi','2019-06-08','Disabled','Unknown','803849'),('9266752726','Bruno','Hyde','Hindi','2019-09-23','Enabled','Unknown','803849'),('9272112468','Ulysses','Jefferson','Hindi','2020-11-17','Disabled','Verified','487835'),('9272315722','Kato','Hampton','Hindi','2020-09-28','Enabled','Verified','267313'),('9278285145','Hunter','Coffey','Hindi','2019-12-31','Enabled','Blocked','260436'),('9282765841','Fiona','Jacobson','English','2019-05-06','Disabled','Blocked','606226'),('9283082382','Lilah','Merritt','English','2019-12-09','Disabled','Verified','564256'),('9284651574','Sybil','Vargas','Hindi','2021-01-13','Disabled','Verified','163523'),('9285852892','Hanna','Vincent','English','2019-08-16','Disabled','Verified','598148'),('9287121282','Barry','Cortez','English','2020-08-18','Enabled','Unknown','516304'),('9292425034','Rahim','Jarvis','Hindi','2020-08-24','Disabled','Blocked','494191'),('9293825241','Colton','Valencia','Hindi','2019-09-01','Disabled','Unknown','335376'),('9295973895','Avye','Hurley','English','2020-03-17','Enabled','Unknown','574864'),('9297121166','Lilah','Perry','English','2019-05-19','Disabled','Blocked','715352'),('9303962272','Kiona','Vance','English','2019-03-05','Enabled','Blocked','577558'),('9305274861','Ciaran','Brewer','Hindi','2020-07-10','Disabled','Verified','633497'),('9307501778','Eleanor','Cervantes','Hindi','2020-07-27','Enabled','Unknown','559774'),('9309612977','Illana','Gilliam','English','2020-06-15','Enabled','Unknown','788411'),('9313385366','Xyla','Schneider','Hindi','2020-10-10','Enabled','Blocked','212789'),('9315642024','Maggie','Sims','English','2020-01-19','Enabled','Blocked','636657'),('9317811717','Gemma','Mack','English','2019-06-20','Disabled','Verified','454054'),('9317818411','Aaron','Irwin','English','2020-04-19','Enabled','Verified','485219'),('9318506351','Laurel','Castro','Hindi','2021-01-20','Disabled','Blocked','373997'),('9318595218','Sean','Walters','Hindi','2020-02-22','Disabled','Verified','715352'),('9324680466','Kiona','Holmes','English','2020-10-23','Enabled','Unknown','545768'),('9326567673','Phillip','Solis','Hindi','2020-10-02','Enabled','Unknown','313862'),('9327289129','Kamal','Harvey','English','2020-09-06','Enabled','Verified','788411'),('9330124844','Freya','Nielsen','Hindi','2020-09-12','Enabled','Verified','653371'),('9332465514','Madeline','Wallace','Hindi','2020-07-03','Enabled','Verified','729541'),('9333186992','Patricia','Huffman','English','2019-08-22','Enabled','Verified','713224'),('9334286664','Ignacia','Nolan','English','2020-06-16','Enabled','Unknown','267313'),('9334410444','Hashim','Cox','Hindi','2021-01-06','Disabled','Blocked','633497'),('9335561546','George','Malone','Hindi','2019-08-08','Enabled','Blocked','267313'),('9336363892','Quamar','Hewitt','English','2019-08-25','Enabled','Verified','537836'),('9338426239','Wang','Hodges','English','2019-06-29','Disabled','Verified','454054'),('9341520632','Deacon','Tyson','Hindi','2020-11-08','Disabled','Blocked','636657'),('9344822022','Lewis','Huber','English','2019-07-24','Enabled','Verified','326418'),('9346415581','Vladimir','Rowe','Hindi','2019-07-06','Disabled','Verified','688208'),('9351162654','Ignatius','Turner','Hindi','2020-08-25','Disabled','Verified','161883'),('9351354753','Stephen','Sweet','English','2019-09-13','Disabled','Blocked','288059'),('9351355802','Elijah','Haynes','English','2019-10-10','Disabled','Verified','702685'),('9352233753','Unity','Hale','Hindi','2019-05-07','Enabled','Verified','426762'),('9353096149','Alice','Walters','Hindi','2019-04-30','Disabled','Unknown','215576'),('9355434910','Petra','Huffman','English','2020-11-28','Enabled','Unknown','700753'),('9355986434','Karyn','Anthony','English','2019-02-18','Disabled','Verified','212789'),('9356118328','Ivory','Villarreal','Hindi','2019-10-25','Enabled','Unknown','436747'),('9363781214','Nehru','Hudson','English','2020-06-18','Disabled','Verified','880312'),('9364468215','Flynn','Matthews','English','2020-02-14','Enabled','Verified','875163'),('9365814885','Abraham','Contreras','English','2020-10-01','Disabled','Unknown','215576'),('9368001282','Rajah','Acosta','Hindi','2019-04-11','Disabled','Unknown','555189'),('9368428182','Pandora','Oliver','English','2019-03-05','Enabled','Verified','779057'),('9371574577','Yeo','Schneider','Hindi','2019-05-01','Disabled','Verified','547813'),('9371934439','Macy','Hanson','Hindi','2019-12-02','Enabled','Verified','584074'),('9373716841','Kaye','Koch','English','2020-12-25','Disabled','Unknown','637738'),('9374392722','Shana','Richard','English','2019-09-09','Enabled','Unknown','426762'),('9377883897','Roanna','Cash','Hindi','2020-09-01','Enabled','Verified','260436'),('9378401821','Avye','Chapman','English','2019-05-19','Disabled','Unknown','722258'),('9385512942','Denise','Pollard','English','2019-12-09','Disabled','Verified','598148'),('9385638614','Wing','Whitney','English','2020-01-21','Enabled','Unknown','282149'),('9386442135','Catherine','Branch','Hindi','2019-05-12','Enabled','Unknown','450845'),('9386535911','Colt','Avery','Hindi','2019-05-19','Disabled','Blocked','282149'),('9388577125','Phillip','Mcneil','English','2020-07-19','Disabled','Unknown','653286'),('9393351584','Marshall','Rogers','Hindi','2020-07-23','Disabled','Blocked','388784'),('9404953656','Lydia','Shepherd','Hindi','2019-09-11','Enabled','Verified','413134'),('9411524692','Belle','Black','English','2020-06-16','Enabled','Verified','335376'),('9414607489','Dante','Sargent','Hindi','2019-09-07','Enabled','Blocked','516304'),('9415173648','Isaiah','Mathews','English','2020-10-03','Disabled','Verified','450845'),('9415843364','Driscoll','Sutton','English','2019-06-15','Enabled','Blocked','688208'),('9416238806','Beverly','Oneal','Hindi','2020-06-23','Enabled','Blocked','335376'),('9416758436','Keane','Hinton','English','2019-08-22','Disabled','Unknown','445351'),('9418431961','Martena','Hicks','English','2019-03-09','Disabled','Unknown','598148'),('9423028076','Armand','Bowman','Hindi','2020-01-09','Disabled','Verified','413134'),('9425064419','Sawyer','York','English','2020-05-11','Disabled','Unknown','943744'),('9427656856','Jack','Barr','English','2020-06-09','Disabled','Unknown','653286'),('9428650384','Odette','Morton','Hindi','2021-01-25','Enabled','Unknown','213681'),('9429635766','Karina','Bowers','Hindi','2019-04-07','Enabled','Unknown','779057'),('9431871313','Indigo','Swanson','Hindi','2019-07-10','Enabled','Blocked','797639'),('9433271275','Colby','Kemp','Hindi','2021-01-08','Disabled','Verified','341084'),('9433642180','Gage','Lowery','Hindi','2019-09-18','Enabled','Blocked','814675'),('9435527525','Solomon','Fowler','English','2019-12-11','Disabled','Blocked','136477'),('9435837215','Joel','Mcfadden','English','2021-01-03','Enabled','Unknown','584074'),('9436527515','Cherokee','Wyatt','Hindi','2021-01-04','Disabled','Verified','598148'),('9436652636','Alvin','Heath','English','2020-02-06','Disabled','Verified','803849'),('9437609231','Matthew','Henson','Hindi','2019-06-23','Enabled','Verified','528203'),('9437873153','April','Cleveland','Hindi','2020-01-06','Enabled','Blocked','487835'),('9437987841','Gavin','Hewitt','Hindi','2019-11-11','Enabled','Unknown','814675'),('9439712547','Bevis','Bright','English','2019-06-29','Enabled','Blocked','218287'),('9441512838','Hedy','Cooke','English','2021-01-25','Enabled','Unknown','886265'),('9442813668','Malcolm','Albert','Hindi','2019-05-31','Disabled','Blocked','485219'),('9445855625','Dillon','Bailey','Hindi','2019-10-12','Enabled','Unknown','173642'),('9446092721','Odysseus','Britt','Hindi','2020-02-26','Disabled','Verified','222487'),('9447455869','Ginger','Townsend','Hindi','2020-10-31','Enabled','Unknown','700753'),('9448857345','Emi','Wiley','English','2019-10-23','Enabled','Verified','364821'),('9450061427','Bruce','Hammond','Hindi','2020-08-30','Enabled','Verified','316645'),('9451567440','Sacha','Bass','English','2019-12-13','Enabled','Blocked','606226'),('9454641726','Lareina','Scott','Hindi','2019-09-25','Enabled','Blocked','653371'),('9454973913','Stone','Marquez','English','2019-07-19','Enabled','Unknown','880312'),('9456507381','Cole','Sykes','English','2020-10-23','Enabled','Blocked','426762'),('9458354225','Daniel','Cross','English','2020-12-06','Enabled','Unknown','218287'),('9460112813','Forrest','Dyer','English','2020-12-07','Enabled','Blocked','686966'),('9461547579','Tanek','Parsons','Hindi','2020-03-09','Enabled','Verified','802352'),('9465185840','Porter','Jackson','Hindi','2019-06-08','Enabled','Blocked','212789'),('9473774082','Elijah','Nixon','English','2020-03-21','Enabled','Unknown','381151'),('9476391165','Vladimir','Nash','English','2020-12-06','Enabled','Blocked','729541'),('9476588351','Coby','Hoover','English','2021-02-15','Enabled','Verified','516256'),('9478225075','Seth','Kennedy','Hindi','2019-02-15','Enabled','Unknown','446250'),('9478531938','Elaine','Stafford','Hindi','2020-06-10','Disabled','Verified','324386'),('9478631535','Mari','Calhoun','English','2020-02-12','Enabled','Unknown','173642'),('9484086055','Hiram','Branch','English','2019-11-14','Disabled','Verified','494191'),('9484122338','Solomon','O\'donnell','English','2020-09-12','Disabled','Verified','212789'),('9487867545','Arsenio','Mathis','Hindi','2019-06-10','Disabled','Unknown','595444'),('9491252693','Zenia','Bean','Hindi','2019-11-30','Enabled','Unknown','545768'),('9492095252','Evangeline','Benson','English','2019-04-04','Disabled','Blocked','636657'),('9494129745','Cairo','Henry','Hindi','2020-02-14','Enabled','Unknown','623772'),('9500272247','Quemby','Simmons','English','2021-01-01','Enabled','Unknown','466855'),('9503542362','Daria','Welch','English','2020-02-17','Enabled','Blocked','617783'),('9509118114','Emerson','Duffy','Hindi','2019-08-20','Disabled','Unknown','326418'),('9511117343','Nomlanga','Cline','Hindi','2019-09-19','Enabled','Blocked','450845'),('9511805211','Matthew','Skinner','Hindi','2020-10-13','Enabled','Unknown','323516'),('9513247511','Dexter','Garcia','English','2020-05-24','Enabled','Unknown','879173'),('9518224676','Derek','Nunez','Hindi','2019-12-29','Disabled','Blocked','584074'),('9521184877','Sara','Riley','Hindi','2020-03-14','Disabled','Verified','446250'),('9523253155','Orlando','Benson','Hindi','2019-04-15','Disabled','Verified','161883'),('9523936466','Ifeoma','Pate','English','2020-05-12','Disabled','Verified','413134'),('9524650065','Phoebe','Johns','English','2019-02-20','Disabled','Verified','916641'),('9526361175','Gisela','Kent','English','2020-11-10','Disabled','Blocked','842121'),('9530623417','Allen','Alvarez','English','2019-06-25','Disabled','Verified','161883'),('9531159528','Tamekah','Pruitt','English','2019-07-26','Enabled','Unknown','323516'),('9531518828','Wylie','Wooten','Hindi','2020-07-06','Enabled','Verified','635462'),('9531982995','Chloe','Romero','English','2020-08-31','Disabled','Blocked','537836'),('9532494761','Tatiana','Calderon','English','2020-07-05','Enabled','Blocked','120368'),('9532827285','Kim','Dudley','Hindi','2019-11-28','Enabled','Unknown','454054'),('9534117785','Marny','Saunders','Hindi','2019-08-05','Enabled','Verified','426762'),('9537647867','Lunea','Mcpherson','Hindi','2020-05-30','Enabled','Blocked','288059'),('9540213521','Beau','Mcdowell','Hindi','2020-03-26','Enabled','Blocked','598148'),('9544067418','Ramona','Preston','Hindi','2019-05-31','Disabled','Blocked','617783'),('9544514343','Ocean','Duran','Hindi','2021-01-02','Disabled','Blocked','584074'),('9544637260','Octavia','Reyes','Hindi','2019-04-04','Enabled','Blocked','341084'),('9547141492','Giselle','Booth','Hindi','2020-09-11','Disabled','Verified','617783'),('9550558241','Chaim','Wooten','English','2019-08-21','Disabled','Blocked','466855'),('9552436653','Cheryl','Sharp','Hindi','2019-12-04','Disabled','Unknown','413134'),('9552659477','Jordan','Sanchez','English','2019-04-20','Enabled','Unknown','386574'),('9552782132','Abigail','Hall','English','2020-02-29','Enabled','Blocked','713224'),('9553884354','Charity','Stone','Hindi','2019-06-15','Disabled','Verified','323516'),('9555232258','Randall','Lane','Hindi','2019-04-30','Enabled','Verified','316645'),('9555268183','Linda','Ball','English','2020-08-20','Disabled','Verified','445351'),('9556465101','Cyrus','Lloyd','Hindi','2019-12-08','Disabled','Verified','879173'),('9559620402','Driscoll','Holder','English','2020-10-06','Disabled','Blocked','816167'),('9561629214','Kiona','Mathews','English','2019-10-13','Disabled','Blocked','313862'),('9562178276','Sonya','Mcintyre','Hindi','2019-11-18','Enabled','Unknown','341084'),('9563114189','Fleur','Witt','Hindi','2020-02-07','Disabled','Unknown','686966'),('9563451451','Thaddeus','Garrison','Hindi','2020-06-13','Disabled','Unknown','136477'),('9565005890','Jeanette','Berg','English','2020-09-23','Disabled','Unknown','332360'),('9566273850','Catherine','Fuentes','Hindi','2020-02-24','Disabled','Blocked','388784'),('9569152316','Rooney','Camacho','English','2020-10-14','Disabled','Blocked','323516'),('9575069848','Chester','Santos','Hindi','2021-01-16','Disabled','Unknown','753831'),('9575562515','Leigh','Emerson','English','2019-06-05','Enabled','Verified','239337'),('9578655329','Quinlan','Tucker','Hindi','2019-04-29','Enabled','Blocked','482877'),('9579967622','Kelsey','Rocha','English','2021-01-22','Disabled','Verified','753831'),('9580655266','Nyssa','Lynn','Hindi','2021-01-26','Disabled','Unknown','239337'),('9581775461','Donovan','Morse','English','2019-07-08','Disabled','Blocked','332360'),('9584558674','Margaret','Hernandez','Hindi','2020-07-25','Enabled','Verified','215576'),('9586640674','Mohammad','Rush','English','2021-01-14','Disabled','Verified','163523'),('9587142554','Nell','Harmon','English','2020-03-10','Disabled','Unknown','715352'),('9588475884','Hiram','Hartman','English','2019-03-03','Enabled','Blocked','653371'),('9588640416','Sarah','Faulkner','Hindi','2019-03-13','Enabled','Verified','595444'),('9590194431','Iris','Duncan','Hindi','2020-06-17','Enabled','Verified','436747'),('9595048843','Barbara','Brewer','Hindi','2020-10-17','Disabled','Unknown','446250'),('9602147719','Oscar','Hahn','Hindi','2019-09-23','Disabled','Verified','335376'),('9602274960','Bryar','Gibson','English','2019-05-10','Disabled','Unknown','653371'),('9608531128','Beck','Clements','English','2020-09-15','Disabled','Verified','516256'),('9613153367','Vincent','Whitfield','Hindi','2020-07-29','Disabled','Verified','487835'),('9614458756','Reed','Castro','Hindi','2020-09-23','Enabled','Unknown','635462'),('9615574688','Alexis','Stein','Hindi','2019-10-29','Enabled','Blocked','450372'),('9615882758','Graham','Coleman','English','2020-11-16','Enabled','Verified','516304'),('9617865922','Astra','Kent','Hindi','2020-03-31','Enabled','Blocked','341084'),('9622842795','Baxter','Mcclain','Hindi','2019-06-30','Disabled','Verified','528203'),('9623669231','Tarik','Fields','English','2020-01-16','Enabled','Blocked','487835'),('9624147814','Leigh','Schneider','English','2019-07-12','Enabled','Verified','194578'),('9624487867','Gary','Freeman','English','2019-08-04','Enabled','Verified','437875'),('9626668584','Cameran','Spence','English','2020-02-16','Disabled','Unknown','239337'),('9626741198','Lacy','Stokes','English','2019-09-25','Enabled','Verified','136477'),('9628584826','Cleo','Ortiz','Hindi','2020-05-05','Enabled','Blocked','445351'),('9630340080','Eliana','Mcknight','English','2019-12-02','Enabled','Blocked','482877'),('9631413625','Amelia','Houston','Hindi','2019-11-25','Enabled','Verified','779057'),('9632772436','Ima','Christian','Hindi','2019-09-18','Enabled','Blocked','617783'),('9634427183','Elmo','Duran','Hindi','2020-09-10','Disabled','Blocked','494191'),('9637365584','Quentin','Kemp','English','2020-03-13','Disabled','Blocked','436747'),('9637816007','Illana','Guzman','Hindi','2020-04-16','Disabled','Verified','916641'),('9637875569','Dante','Carpenter','English','2019-05-03','Disabled','Verified','547813'),('9642713224','Wayne','Rodriquez','Hindi','2021-01-27','Disabled','Blocked','555189'),('9642918178','Melanie','Brock','Hindi','2021-01-18','Enabled','Unknown','880312'),('9643048922','Ahmed','Small','English','2020-03-17','Disabled','Blocked','813712'),('9643704158','Carolyn','Walters','Hindi','2020-04-03','Enabled','Blocked','364821'),('9644277878','William','Barber','English','2019-10-25','Disabled','Unknown','436947'),('9645761373','Orla','Carr','Hindi','2019-08-25','Enabled','Unknown','686966'),('9645783773','Virginia','Hopper','Hindi','2020-01-19','Enabled','Verified','157975'),('9646767184','Urielle','Mcgee','English','2020-10-30','Disabled','Verified','816167'),('9647393308','Damian','Skinner','Hindi','2019-03-08','Enabled','Verified','388784'),('9649391037','Tatiana','Mayer','English','2021-01-12','Disabled','Unknown','267313'),('9651886259','Leroy','Huber','Hindi','2019-09-15','Enabled','Verified','813712'),('9652768221','Graham','Lane','English','2020-01-12','Enabled','Blocked','545768'),('9653437233','Nash','Lester','English','2019-02-22','Disabled','Blocked','120368'),('9654175493','Vaughan','Rice','English','2020-10-18','Disabled','Unknown','212789'),('9656685933','Quamar','Walker','Hindi','2020-10-26','Enabled','Verified','574864'),('9658473575','Kimberley','Kirby','English','2019-10-26','Enabled','Blocked','373997'),('9660166053','Quinn','Wise','Hindi','2019-09-02','Enabled','Blocked','516256'),('9663314043','Sharon','Emerson','Hindi','2021-01-19','Disabled','Verified','173642'),('9665685572','Bertha','Garcia','Hindi','2019-06-05','Disabled','Verified','803849'),('9665755584','Quynn','Dillon','Hindi','2019-09-08','Enabled','Blocked','637738'),('9666891426','Blake','Langley','Hindi','2019-05-17','Enabled','Unknown','842121'),('9667787428','Daphne','Hall','English','2019-12-15','Disabled','Verified','653286'),('9669752348','Chanda','Goodman','Hindi','2019-04-13','Disabled','Verified','381151'),('9671154030','Madeline','Bush','Hindi','2019-06-28','Disabled','Blocked','222487'),('9671284039','Virginia','Pugh','English','2019-04-08','Disabled','Unknown','388784'),('9673249370','Bevis','Stephenson','Hindi','2019-09-22','Enabled','Blocked','446250'),('9675629367','Paul','Mills','Hindi','2020-11-18','Enabled','Unknown','637738'),('9675963272','Margaret','Knapp','English','2020-09-09','Disabled','Verified','802352'),('9676440383','Summer','Chapman','Hindi','2019-10-22','Enabled','Unknown','288059'),('9677475540','Christen','Copeland','Hindi','2020-08-18','Enabled','Unknown','702685'),('9680378529','Galvin','Wilkinson','English','2019-11-03','Disabled','Blocked','559774'),('9681711999','Tanya','Mann','Hindi','2020-12-20','Disabled','Blocked','482877'),('9688486997','Lionel','Gates','English','2019-12-30','Disabled','Blocked','373634'),('9689168012','Katell','Trujillo','Hindi','2020-06-30','Disabled','Verified','688208'),('9698024954','Grady','Farmer','English','2020-08-20','Enabled','Blocked','813712'),('9698260431','Noble','Ortega','English','2019-12-07','Enabled','Verified','729541'),('9704816473','Cain','Brooks','English','2019-03-22','Disabled','Unknown','487835'),('9705277811','Darryl','Colon','English','2019-05-25','Enabled','Verified','373997'),('9711375532','Dacey','Aguilar','English','2021-01-09','Disabled','Verified','779057'),('9711756247','Zoe','Browning','Hindi','2019-08-13','Enabled','Verified','161883'),('9713445776','Ishmael','Osborn','Hindi','2020-01-08','Disabled','Verified','715352'),('9714200432','Garrison','O\'donnell','Hindi','2019-10-10','Disabled','Unknown','842121'),('9716504318','Alfonso','Hartman','English','2019-09-24','Enabled','Unknown','430115'),('9716631557','Raja','Alford','English','2019-06-10','Enabled','Blocked','450372'),('9717539429','Kameko','Collins','English','2020-05-20','Enabled','Blocked','313862'),('9718036142','Malik','Case','English','2020-06-11','Enabled','Unknown','813513'),('9722377747','Kirsten','Brooks','English','2019-06-04','Enabled','Blocked','879173'),('9723436988','Shea','Duran','English','2019-12-16','Disabled','Blocked','436747'),('9723518963','Cleo','Snow','English','2019-12-28','Disabled','Verified','788411'),('9724109677','Raymond','Fields','Hindi','2020-09-21','Enabled','Unknown','623772'),('9724573473','Hector','Branch','English','2020-10-31','Disabled','Verified','222487'),('9729749798','Jorden','Lancaster','English','2019-10-17','Enabled','Unknown','916641'),('9730712130','Keely','Burnett','English','2019-06-11','Enabled','Verified','239337'),('9735569237','Eugenia','Kirby','Hindi','2019-11-07','Disabled','Verified','260436'),('9738360111','Hollee','House','English','2019-08-20','Enabled','Blocked','436747'),('9741842707','Whilemina','Parker','Hindi','2019-02-06','Enabled','Unknown','700753'),('9742146886','Marsden','Bush','English','2020-01-21','Disabled','Blocked','700753'),('9743635159','Thor','Dillon','Hindi','2019-10-26','Enabled','Blocked','880312'),('9746054126','Gavin','Burns','Hindi','2019-03-10','Disabled','Verified','260436'),('9746380491','Patricia','Moses','English','2019-05-25','Disabled','Blocked','381151'),('9746445742','Maxwell','Finch','Hindi','2019-12-13','Enabled','Blocked','482877'),('9746543025','Laurel','Bartlett','English','2020-01-08','Disabled','Blocked','450372'),('9751375227','Jolie','Knox','English','2019-10-07','Disabled','Unknown','436747'),('9751513098','Yael','Chambers','Hindi','2020-09-16','Enabled','Blocked','528203'),('9751532824','Keaton','Duran','Hindi','2020-07-15','Enabled','Verified','454054'),('9751656643','Ciara','French','Hindi','2019-10-06','Enabled','Blocked','723367'),('9754378488','Skyler','Massey','Hindi','2020-05-13','Disabled','Verified','537836'),('9754716572','Erasmus','Mays','English','2020-12-31','Disabled','Verified','555189'),('9755011615','Xandra','Blake','Hindi','2020-01-29','Disabled','Unknown','788411'),('9757495921','Kirk','Anthony','Hindi','2020-06-08','Disabled','Blocked','746316'),('9758255652','Alfonso','House','Hindi','2019-08-28','Enabled','Blocked','222487'),('9761930117','Geoffrey','Browning','Hindi','2019-11-27','Disabled','Blocked','879173'),('9762462518','Hasad','Winters','English','2020-06-29','Enabled','Unknown','574864'),('9763503042','Vivian','Hoover','English','2020-11-14','Disabled','Unknown','454054'),('9763828440','Selma','Cruz','Hindi','2020-03-03','Enabled','Verified','802352'),('9769304548','Henry','Little','English','2021-01-08','Disabled','Blocked','574864'),('9769995795','Rhonda','Underwood','Hindi','2019-09-02','Enabled','Blocked','635462'),('9771339555','Cameran','Thomas','Hindi','2019-04-28','Disabled','Verified','466855'),('9771377585','Lucas','Barr','English','2019-06-18','Disabled','Verified','466855'),('9773766073','Connor','Swanson','English','2020-11-11','Disabled','Blocked','450372'),('9773880116','Levi','Hampton','English','2020-03-18','Disabled','Blocked','218287'),('9775375734','Caleb','Cortez','Hindi','2019-11-10','Disabled','Unknown','729541'),('9776132442','Derek','Carver','English','2020-07-10','Enabled','Blocked','161883'),('9778727626','Diana','Mcdonald','Hindi','2020-08-08','Enabled','Verified','802352'),('9781567001','Hope','Todd','Hindi','2019-03-26','Disabled','Blocked','494191'),('9782366457','Carol','Griffith','Hindi','2019-09-28','Enabled','Verified','547813'),('9784621158','Mikayla','Ray','Hindi','2020-07-13','Enabled','Unknown','653371'),('9787506526','Hamilton','Larson','Hindi','2020-06-16','Disabled','Blocked','635462'),('9789531264','Joshua','Steele','English','2019-06-13','Enabled','Blocked','215576'),('9795112876','Oren','Randolph','Hindi','2020-10-19','Disabled','Unknown','332360'),('9796847112','Suki','Barber','Hindi','2020-01-31','Enabled','Unknown','436947'),('9797663944','Ora','Herrera','Hindi','2019-12-04','Enabled','Blocked','218287'),('9797736171','Barclay','Alexander','English','2020-02-17','Disabled','Unknown','485219'),('9801172102','William','Carey','Hindi','2020-03-16','Disabled','Unknown','332360'),('9805777723','Galvin','Andrews','Hindi','2020-06-17','Enabled','Unknown','282149'),('9806153616','Quinn','Nelson','Hindi','2020-05-19','Disabled','Unknown','606226'),('9815253725','Yardley','O\'donnell','Hindi','2020-05-30','Enabled','Unknown','797639'),('9818198461','William','Zimmerman','English','2019-07-25','Disabled','Blocked','335376'),('9819518326','Octavius','Lynn','English','2020-01-23','Disabled','Unknown','813513'),('9826468935','Whoopi','Sanchez','Hindi','2019-07-19','Enabled','Unknown','436947'),('9827458643','September','Savage','Hindi','2019-09-23','Disabled','Unknown','814675'),('9828737278','Timothy','Jones','Hindi','2020-01-24','Enabled','Verified','943744'),('9828969827','Clementine','Lyons','Hindi','2020-02-13','Disabled','Unknown','802352'),('9831564029','Arthur','Kane','Hindi','2019-12-30','Enabled','Unknown','617783'),('9831656671','Jana','Bradford','English','2019-12-25','Disabled','Unknown','386574'),('9832149107','Emma','Patton','English','2020-12-08','Enabled','Blocked','584074'),('9834693558','Laurel','Collier','Hindi','2020-05-04','Disabled','Blocked','943744'),('9835046149','Hall','Diaz','Hindi','2020-03-04','Enabled','Blocked','239337'),('9835335356','Davis','Nixon','English','2020-01-23','Disabled','Verified','267313'),('9836716256','Malik','Moon','English','2019-08-04','Disabled','Unknown','637738'),('9836801433','Erica','Maynard','Hindi','2020-08-10','Enabled','Blocked','872964'),('9837514232','Wallace','Sawyer','English','2019-05-01','Disabled','Unknown','943744'),('9837550133','Jade','Morales','English','2019-08-03','Disabled','Unknown','746316'),('9837888981','Caldwell','Gross','Hindi','2019-09-18','Enabled','Blocked','450372'),('9837921658','Irene','Castro','Hindi','2020-06-22','Enabled','Unknown','797639'),('9838262562','Debra','Parsons','Hindi','2020-01-16','Disabled','Blocked','381151'),('9838455720','Celeste','Serrano','English','2019-09-21','Disabled','Unknown','120368'),('9839475484','Nissim','Lindsay','English','2020-10-21','Disabled','Unknown','485219'),('9844804458','Doris','Franco','English','2019-11-06','Enabled','Blocked','120368'),('9847263812','Heidi','Kemp','English','2021-02-01','Disabled','Verified','635462'),('9848381164','Daquan','Caldwell','English','2020-09-04','Enabled','Verified','686966'),('9848476595','Nero','Reed','English','2021-01-24','Disabled','Unknown','916641'),('9850145782','Hadassah','Walters','English','2020-06-26','Disabled','Blocked','637738'),('9851565224','Jelani','Kline','Hindi','2020-09-23','Enabled','Verified','722258'),('9852156571','Jelani','Ferguson','English','2020-11-10','Disabled','Verified','803849'),('9853023450','Allen','Vaughn','Hindi','2020-11-27','Enabled','Verified','332360'),('9855249127','Florence','Santiago','English','2020-04-11','Enabled','Blocked','788411'),('9858334503','Sybil','Frost','English','2020-12-26','Disabled','Blocked','636657'),('9858958684','Simone','Weaver','English','2020-03-22','Disabled','Verified','633497'),('9859384750','Paul','Clayton','English','2020-09-19','Disabled','Unknown','722258'),('9862467822','Orson','Rich','Hindi','2021-01-01','Disabled','Verified','722258'),('9866988603','Evangeline','Perry','English','2020-08-18','Disabled','Blocked','875163'),('9867456663','Wyoming','Waters','Hindi','2019-11-08','Enabled','Unknown','487835'),('9868218176','Lacy','Salinas','Hindi','2020-04-23','Disabled','Unknown','653371'),('9868481046','Leah','Flynn','English','2019-12-11','Enabled','Unknown','222487'),('9869196375','Phoebe','Johns','Hindi','2020-09-09','Enabled','Unknown','879173'),('9870566478','Coby','Weber','English','2020-01-12','Enabled','Unknown','436947'),('9870802261','Wynter','Heath','Hindi','2019-02-27','Disabled','Verified','712186'),('9871163813','Slade','Dillard','English','2020-06-18','Enabled','Blocked','446250'),('9872027931','Karen','Mcdonald','English','2020-10-13','Enabled','Verified','875163'),('9872534735','Odette','Rojas','English','2020-05-11','Enabled','Blocked','437875'),('9876183897','Madaline','Browning','English','2020-08-09','Enabled','Unknown','635462'),('9879221723','Gannon','Carver','English','2019-03-18','Enabled','Verified','722258'),('9879870282','Trevor','Cruz','Hindi','2020-12-11','Disabled','Blocked','842121'),('9881068866','Chantale','Chang','Hindi','2019-11-25','Enabled','Unknown','555189'),('9882253992','Anastasia','Saunders','English','2019-10-19','Enabled','Verified','886265'),('9883037062','Gary','Booth','English','2020-07-06','Enabled','Blocked','437875'),('9883413294','Glenna','Watts','English','2020-06-25','Disabled','Unknown','636657'),('9884713733','Dean','Griffin','English','2019-11-19','Enabled','Blocked','872964'),('9885533963','Abigail','Graham','Hindi','2020-12-18','Enabled','Verified','436947'),('9885995366','Gareth','Rocha','English','2020-10-10','Disabled','Blocked','788411'),('9888434359','Kato','Cotton','English','2019-08-31','Disabled','Blocked','813513'),('9889963721','Tyler','Coffey','Hindi','2019-03-26','Enabled','Unknown','485219'),('9890118834','Adrienne','Suarez','English','2020-09-18','Enabled','Blocked','872964'),('9891332950','Wyatt','Charles','English','2020-12-23','Enabled','Verified','802352'),('9894049255','Zane','Gates','Hindi','2020-09-24','Disabled','Blocked','528203'),('9898614273','Burke','Cortez','Hindi','2019-09-04','Enabled','Verified','872964'),('9899651867','Levi','Olsen','Hindi','2020-01-12','Enabled','Verified','446250'),('9913987533','Alan','Wall','English','2019-11-29','Enabled','Verified','373634'),('9918431455','Faith','Dennis','Hindi','2019-06-12','Disabled','Verified','386574'),('9921454974','Robert','Mccall','English','2019-02-08','Enabled','Blocked','313862'),('9927386762','Evelyn','Frederick','English','2020-06-03','Disabled','Verified','702685'),('9930358373','Lois','Hart','Hindi','2020-04-22','Disabled','Unknown','430115'),('9938313815','Winifred','Blair','English','2020-05-15','Enabled','Verified','595444'),('9942114991','Haley','Chen','English','2020-08-31','Disabled','Verified','194578'),('9943596568','Merritt','Palmer','Hindi','2020-04-18','Disabled','Unknown','213681'),('9944841185','Jin','Tucker','Hindi','2021-01-28','Enabled','Verified','564256'),('9944877463','Macey','Hartman','Hindi','2019-12-20','Disabled','Unknown','886265'),('9947284577','Roth','Morales','English','2020-05-06','Disabled','Verified','430115'),('9951424956','Genevieve','Burks','Hindi','2019-10-08','Disabled','Unknown','157975'),('9953072238','Leonard','Sampson','Hindi','2020-03-05','Enabled','Blocked','157975'),('9958825341','Grady','Noel','English','2019-12-27','Enabled','Unknown','880312'),('9959408588','Cooper','Boyd','Hindi','2019-09-03','Enabled','Unknown','494191'),('9964266527','Ariana','Patel','Hindi','2019-06-16','Disabled','Unknown','288059'),('9965215844','Theodore','Mcneil','English','2019-11-24','Disabled','Blocked','888101'),('9965844779','Matthew','Jimenez','Hindi','2019-03-25','Enabled','Verified','136477'),('9966134173','Julie','Mcintyre','English','2019-04-08','Disabled','Unknown','875163'),('9969433852','Alvin','Hammond','Hindi','2020-06-23','Enabled','Blocked','316645'),('9971374678','Kieran','Russo','Hindi','2020-01-29','Enabled','Blocked','445351'),('9978445006','Alika','Crane','English','2020-10-25','Disabled','Verified','875163'),('9978515081','Lacota','Bell','Hindi','2019-10-31','Disabled','Verified','746316'),('9984457412','Vernon','Livingston','Hindi','2019-03-01','Enabled','Blocked','584074'),('9985793436','Laurel','Mayer','Hindi','2020-08-08','Enabled','Unknown','702685'),('9989528254','MacKenzie','Hale','English','2019-10-11','Disabled','Blocked','173642'),('9992373113','Veronica','Vasquez','English','2020-04-13','Enabled','Unknown','466855'),('9995723159','Rafael','Pittman','Hindi','2019-06-02','Disabled','Unknown','723367');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `all_products`
--
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `make offer`(IN offer_price INT,IN buyer CHAR(10),in adid int, OUT response int)
    READS SQL DATA
BEGIN
     declare product_price int; 
     select p.price into product_price
     from product as p where p.idproduct in (select ad.prdouct_id from advertisement as ad where ad.adv_id=adid);
	 IF(offer_price>=(product_price*0.7) and offer_price<=(product_price*1.3)) then select '1' into response;
     else select '-1' into response;
     end if;
end$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `recent_date_calc`(datev Datetime ) RETURNS int
    DETERMINISTIC
BEGIN 
	DECLARE dayago int;
		set dayago=DATEDIFF(NOW(),datev);
    	return dayago;
END$$
DELIMITER ;


/*!50001 DROP VIEW IF EXISTS `all_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_products` AS select concat(`u`.`first_name`,' ',`u`.`last_name`) AS `Product_Owner`,`ad`.`adv_title` AS `adv_title`,`ad`.`verification_status` AS `verification_status`,`p`.`description` AS `description`,`cat`.`name` AS `name`,`p`.`price` AS `price`,`ad`.`is_active` AS `is_active` from (((`product` `p` join `advertisement` `ad`) join `users` `u`) join `category` `cat`) where ((`p`.`idproduct` = `ad`.`prdouct_id`) and (`ad`.`user_id` = `u`.`phone`) and (`p`.`category_id` = `cat`.`idcategory`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prodmonthlycount`
--

/*!50001 DROP VIEW IF EXISTS `prodmonthlycount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prodmonthlycount` AS select month(`a`.`post_date`) AS `Month`,count(0) AS `Ads Posted`,`c`.`name` AS `Category` from ((`advertisement` `a` join `product` `p`) join `category` `c`) where ((`a`.`prdouct_id` = `p`.`idproduct`) and (`c`.`idcategory` = `p`.`category_id`)) group by `c`.`name`,month(`a`.`post_date`) order by `Month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_view`
--

/*!50001 DROP VIEW IF EXISTS `product_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_view` AS select `adv`.`adv_id` AS `AD ID`,`adv`.`adv_title` AS `Title`,`p`.`price` AS `Price`,concat(`ar`.`city`,', ',`ar`.`state`) AS `Area`,`recent_date_calc`(`adv`.`post_date`) AS `Uploaded (days ago)`,`i`.`image` AS `Cover Image` from ((((`advertisement` `adv` join `product` `p`) join `area` `ar`) join `users` `u`) join `images` `i`) where ((`adv`.`prdouct_id` = `p`.`idproduct`) and (`u`.`phone` = `adv`.`user_id`) and (`i`.`product_id` = `p`.`idproduct`) and (`i`.`img_no` = 1) and (`u`.`area_id` = `ar`.`area_id`)) order by `recent_date_calc`(`adv`.`post_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productadvs`
--

/*!50001 DROP VIEW IF EXISTS `productadvs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productadvs` AS select concat(`u`.`first_name`,' ',`u`.`last_name`) AS `Product_Owner`,`ad`.`adv_title` AS `adv_title`,`ad`.`verification_status` AS `verification_status`,`p`.`description` AS `description`,`c`.`name` AS `name`,`p`.`price` AS `price`,`ad`.`is_active` AS `is_active` from (((`product` `p` join `advertisement` `ad`) join `users` `u`) join `category` `c`) where ((`p`.`idproduct` = `ad`.`prdouct_id`) and (`ad`.`user_id` = `u`.`phone`)) */;
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

-- Dump completed on 2022-05-01 17:09:48