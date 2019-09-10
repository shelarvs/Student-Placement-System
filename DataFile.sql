-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: StudentPlacementData
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `c_Name` varchar(50) DEFAULT NULL,
  `c_Email` varchar(50) NOT NULL,
  `c_Company_type` varchar(20) DEFAULT NULL,
  `c_ESTB_year` varchar(20) DEFAULT NULL,
  `c_Address` varchar(100) DEFAULT NULL,
  `c_Technology` varchar(50) DEFAULT NULL,
  `c_CEO_name` varchar(20) DEFAULT NULL,
  `c_About` varchar(1000) DEFAULT NULL,
  `c_Password` varchar(50) DEFAULT NULL,
  `package` varchar(20) DEFAULT NULL,
  `c_Contact_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`c_Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('Thinksprout Designs','shelar@gmail.com','Product Based','2017','Pune','JSP','Kshitij Ved','Hello all','123','1,20,000','9028470100');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_temp`
--

DROP TABLE IF EXISTS `company_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_temp` (
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_temp`
--

LOCK TABLES `company_temp` WRITE;
/*!40000 ALTER TABLE `company_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `Email` varchar(50) DEFAULT NULL,
  `Message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifyStaff`
--

DROP TABLE IF EXISTS `notifyStaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifyStaff` (
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifyStaff`
--

LOCK TABLES `notifyStaff` WRITE;
/*!40000 ALTER TABLE `notifyStaff` DISABLE KEYS */;
INSERT INTO `notifyStaff` VALUES ('sutar@gmail.com');
/*!40000 ALTER TABLE `notifyStaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placed`
--

DROP TABLE IF EXISTS `placed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placed` (
  `Email` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `PRN` varchar(50) DEFAULT NULL,
  `Eligibility_no` varchar(50) DEFAULT NULL,
  `Mobile` varchar(50) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `date_data` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placed`
--

LOCK TABLES `placed` WRITE;
/*!40000 ALTER TABLE `placed` DISABLE KEYS */;
INSERT INTO `placed` VALUES ('shelar@gmail.com','Viraj Shelar','456','789','9028470100','Thinksprout Designs','1,20,000','2018-19');
/*!40000 ALTER TABLE `placed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_Id` varchar(20) DEFAULT NULL,
  `staff_Name` varchar(50) DEFAULT NULL,
  `staff_Email` varchar(50) NOT NULL,
  `staff_Password` varchar(50) DEFAULT NULL,
  `staff_Contact_no` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`staff_Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('123','Kshitij Manoj Ved','ved@gmail.com','123','9960684332');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_temp`
--

DROP TABLE IF EXISTS `staff_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_temp` (
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_temp`
--

LOCK TABLES `staff_temp` WRITE;
/*!40000 ALTER TABLE `staff_temp` DISABLE KEYS */;
INSERT INTO `staff_temp` VALUES ('ved@gmail.com');
/*!40000 ALTER TABLE `staff_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `Name` varchar(50) DEFAULT NULL,
  `Roll_no` varchar(20) DEFAULT NULL,
  `PRN` varchar(20) DEFAULT NULL,
  `Eligibility_no` varchar(20) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Shift` varchar(30) DEFAULT NULL,
  `Native_place` varchar(20) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Live_back` int(10) DEFAULT NULL,
  `Dead_back` int(10) DEFAULT NULL,
  `SSC` varchar(20) DEFAULT NULL,
  `HSC` varchar(20) DEFAULT NULL,
  `Diploma` varchar(20) DEFAULT NULL,
  `eng_sem1` varchar(10) DEFAULT NULL,
  `eng_sem2` varchar(10) DEFAULT NULL,
  `eng_sem3` varchar(10) DEFAULT NULL,
  `eng_sem4` varchar(10) DEFAULT NULL,
  `eng_sem5` varchar(10) DEFAULT NULL,
  `eng_sem6` varchar(10) DEFAULT NULL,
  `IMG_SSC` blob,
  `IMG_HSC` blob,
  `IMG_Diploma` blob,
  `IMG_Extra_activity` blob,
  `IMG_Aadhar_card` blob,
  `IMG_photo` blob,
  `Mobile_no` varchar(30) DEFAULT NULL,
  `aadhar_number` varchar(50) DEFAULT NULL,
  `SGPA` varchar(30) DEFAULT NULL,
  `Year` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_temp`
--

DROP TABLE IF EXISTS `student_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_temp` (
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_temp`
--

LOCK TABLES `student_temp` WRITE;
/*!40000 ALTER TABLE `student_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_eli_student`
--

DROP TABLE IF EXISTS `view_eli_student`;
/*!50001 DROP VIEW IF EXISTS `view_eli_student`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_eli_student` AS SELECT 
 1 AS `PRN`,
 1 AS `Eligibility_no`,
 1 AS `Name`,
 1 AS `Email`,
 1 AS `Mobile_no`,
 1 AS `SGPA`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_eli_student`
--

/*!50001 DROP VIEW IF EXISTS `view_eli_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_eli_student` AS select `student`.`PRN` AS `PRN`,`student`.`Eligibility_no` AS `Eligibility_no`,`student`.`Name` AS `Name`,`student`.`Email` AS `Email`,`student`.`Mobile_no` AS `Mobile_no`,`student`.`SGPA` AS `SGPA` from `student` */;
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

-- Dump completed on 2018-10-28 22:58:53
