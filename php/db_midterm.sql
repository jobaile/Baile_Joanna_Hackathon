-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: db_columbia
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

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
-- Table structure for table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_color` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_color`
--

LOCK TABLES `tbl_color` WRITE;
/*!40000 ALTER TABLE `tbl_color` DISABLE KEYS */;
INSERT INTO `tbl_color` VALUES (1,'Yellow'),(2,'GRAPHITE'),(3,'BLACK'),(4,'AZUL'),(5,'Collegiate Navy'),(6,'Red Spark'),(7,'PEATMOSS'),(8,'BARK'),(9,'BRIGHT COPPER');
/*!40000 ALTER TABLE `tbl_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product` (
  `ID` int(10) unsigned NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  `product_description` text NOT NULL,
  `product_img` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (1,'MEN’S ALPINE ACTION™ JACKET','$229.99','Next-level warmth and waterproof breathability meet an exquisite cross-dye shell fabric with a rich color and texture—delivering a serious storm-fighting jacket that stands out in the lift line. This technical hooded jacket combines our superior synthetic insulation and a thermal-reflective lining for great heat retention with a high level of breathability, while ski and snowboard ready features like a snap-back powder skirt and removable storm hood elevate your on-hill performance.','image1.jpg'),(2,'Men\'s Watertight™ II Jacket','$99.99','City cool and super warm! With its 550-fill TurboDown insulation, waterproof shell, cool lines, adjustable waist and faux-fur hood, the Barlow Pass keeps you warm, dry and protected in fabulous winter style.','image2.jpg'),(3,'MEN’S ALPINE ACTION™ JACKET','$229.99','Next-level warmth and waterproof breathability meet an exquisite cross-dye shell fabric with a rich color and texture—delivering a serious storm-fighting jacket that stands out in the lift line. This technical hooded jacket combines our superior synthetic insulation and a thermal-reflective lining for great heat retention with a high level of breathability, while ski and snowboard ready features like a snap-back powder skirt and removable storm hood elevate your on-hill performance.','image3.jpg'),(4,'MEN’S BARLOW PASS 550 TURBODOWN™ JACKET','$359.99','Next-level warmth and waterproof breathability meet an exquisite cross-dye shell fabric with a rich color and texture—delivering a serious storm-fighting jacket that stands out in the lift line. This technical hooded jacket combines our superior synthetic insulation and a thermal-reflective lining for great heat retention with a high level of breathability, while ski and snowboard ready features like a snap-back powder skirt and removable storm hood elevate your on-hill performance.','image4.jpg'),(5,'MEN’S PIKE LAKE™ HOODED JACKET','$199.99','Next-level warmth and waterproof breathability meet an exquisite cross-dye shell fabric with a rich color and texture—delivering a serious storm-fighting jacket that stands out in the lift line. This technical hooded jacket combines our superior synthetic insulation and a thermal-reflective lining for great heat retention with a high level of breathability, while ski and snowboard ready features like a snap-back powder skirt and removable storm hood elevate your on-hill performance.','image5.jpg');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_color`
--

DROP TABLE IF EXISTS `tbl_product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product_color` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_color`
--

LOCK TABLES `tbl_product_color` WRITE;
/*!40000 ALTER TABLE `tbl_product_color` DISABLE KEYS */;
INSERT INTO `tbl_product_color` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,3),(6,2,2),(7,2,5),(8,2,6),(9,3,1),(10,3,3),(11,3,4),(12,4,7),(13,4,8),(14,4,9),(15,5,2),(16,5,3),(17,1,1);
/*!40000 ALTER TABLE `tbl_product_color` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-07 20:00:21
