-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: fashion
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `Certifications`
--

DROP TABLE IF EXISTS `Certifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Certifications` (
  `CertificationID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Description` mediumtext NOT NULL,
  `Rating` int NOT NULL,
  PRIMARY KEY (`CertificationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Certifications`
--

LOCK TABLES `Certifications` WRITE;
/*!40000 ALTER TABLE `Certifications` DISABLE KEYS */;
INSERT INTO `Certifications` VALUES (1,'Global Organic Textile Standard (GOTS)','Comprehensive criteria covering organic status and social responsibility. Ensures textiles are organic and ethically produced.',9),(2,'Fair Trade Certified','Focuses on fair wages, safe conditions, and community development. Promotes equitable trade and improved livelihoods.',8),(3,'OEKO-TEX Standard 100','Tests for harmful substances in textiles. Ensures consumer safety regarding chemical exposure.',7),(4,'Bluesign Certified','Stringent standards for environmental impact and resource efficiency. Reduces ecological footprint of textile production.',8),(5,'B Corporation Certification','Assesses overall social and environmental performance. Recognizes companies balancing profit with purpose.',10),(6,'Cradle to Cradle Certified','Focuses on product lifecycle and circular economy principles. Encourages sustainable product design and manufacturing.',9),(7,'Leather Working Group (LWG)','Promotes sustainable leather production practices. Improves environmental performance in the leather industry.',7),(8,'CarbonNeutral Certification','Requires accurate measurement and offsetting of carbon emissions. Achieves net-zero carbon footprint.',8),(9,'SA8000','Focuses on social accountability and workers rights. Ensures ethical treatment of workers in the supply chain.',8),(10,'Recycled Claim Standard (RCS)','Verifies recycled content in products. Promotes use of recycled materials.',6),(11,'Fair Wear Foundation (FWF)','An independent organization that works with brands, factories, and other stakeholders to improve labor conditions in the garment industry. Membership indicates a brand’s commitment to fair labor practices and continuous improvement.',8),(12,'Responsible Wool Standard (RWS)','Ensures that wool comes from farms with a progressive approach to managing their land and from sheep that have been treated responsibly. Promotes animal welfare and sustainable land management practices.',9),(13,'Responsible Down Standard (RDS)','Certifies that down and feathers used in products come from animals that have not been subjected to unnecessary harm. RDS aims to ensure humane treatment of ducks and geese in the down supply chain.',8),(14,'No Certifications','This company does not currently hold any recognized sustainability or ethical certifications.',0);
/*!40000 ALTER TABLE `Certifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Company` (
  `CompanyID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Description` mediumtext NOT NULL,
  `Website` varchar(45) NOT NULL,
  `OverallRating` int DEFAULT NULL,
  `MaterialRating` int DEFAULT NULL,
  `CertificationRating` int DEFAULT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (1,'Aritzia','A Canadian women’s fashion brand focusing on premium, sustainable, and ethically produced clothing.','https://www.aritzia.com',NULL,NULL,NULL),(2,'PacSun','A California-based retailer known for casual wear and its commitment to reducing waste and sourcing sustainable materials.','https://www.pacsun.com',NULL,NULL,NULL),(3,'Hollister','A division of Abercrombie & Fitch Co., offering casual, coastal-inspired clothing, with efforts toward ethical down sourcing and sustainability.','https://www.hollisterco.com',NULL,NULL,NULL),(4,'Brandy Melville','An Italian clothing and accessories brand popular for its simple and youthful aesthetic, with limited transparency on sustainability.','https://www.brandymelvilleusa.com',NULL,NULL,NULL),(5,'Gap','An iconic American clothing retailer known for affordable casual wear, making strides in sustainable and ethical production practices.','https://www.gap.com',NULL,NULL,NULL),(6,'Free People','A lifestyle brand offering bohemian-inspired clothing and accessories, with limited transparency regarding sustainability practices.','https://www.freepeople.com',NULL,NULL,NULL),(7,'Madewell','A denim-focused brand committed to incorporating sustainable materials and ethical production practices.','https://www.madewell.com',NULL,NULL,NULL),(8,'Levi’s','A global denim leader known for its commitment to sustainable production, including water conservation initiatives and responsible sourcing.','https://www.levi.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CompanyCertification`
--

DROP TABLE IF EXISTS `CompanyCertification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CompanyCertification` (
  `CompanyCertificationID` int NOT NULL AUTO_INCREMENT,
  `CompanyID` int NOT NULL,
  `CertificationID` int NOT NULL,
  PRIMARY KEY (`CompanyCertificationID`),
  KEY `CompanyID` (`CompanyID`),
  KEY `CertificationID` (`CertificationID`),
  CONSTRAINT `companycertification_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `Company` (`CompanyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `companycertification_ibfk_2` FOREIGN KEY (`CertificationID`) REFERENCES `Certifications` (`CertificationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompanyCertification`
--

LOCK TABLES `CompanyCertification` WRITE;
/*!40000 ALTER TABLE `CompanyCertification` DISABLE KEYS */;
INSERT INTO `CompanyCertification` VALUES (1,1,1),(2,1,10),(3,1,13),(4,1,12),(5,2,14),(6,3,14),(7,4,14),(8,5,14),(9,6,14),(10,7,2),(11,7,10),(12,7,12),(13,7,7),(14,8,1),(15,8,7),(16,8,10),(17,8,12),(18,8,13);
/*!40000 ALTER TABLE `CompanyCertification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CompanyMaterials`
--

DROP TABLE IF EXISTS `CompanyMaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CompanyMaterials` (
  `CompanyMaterialsID` int NOT NULL AUTO_INCREMENT,
  `CompanyID` int NOT NULL,
  `MaterialID` int NOT NULL,
  `UsagePercentage` decimal(5,2) NOT NULL,
  PRIMARY KEY (`CompanyMaterialsID`),
  KEY `CompanyID` (`CompanyID`),
  KEY `MaterialID` (`MaterialID`),
  CONSTRAINT `companymaterials_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `Company` (`CompanyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `companymaterials_ibfk_2` FOREIGN KEY (`MaterialID`) REFERENCES `Materials` (`MaterialsID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompanyMaterials`
--

LOCK TABLES `CompanyMaterials` WRITE;
/*!40000 ALTER TABLE `CompanyMaterials` DISABLE KEYS */;
INSERT INTO `CompanyMaterials` VALUES (1,1,1,32.00),(2,1,6,44.00),(3,1,7,10.00),(4,1,2,6.00),(5,1,3,5.00),(6,1,8,3.00),(7,2,6,50.00),(8,2,1,30.00),(9,2,7,10.00),(10,2,8,5.00),(11,2,10,5.00),(37,3,1,40.00),(38,3,6,35.00),(39,3,7,10.00),(40,3,8,10.00),(41,3,10,5.00),(42,4,1,70.00),(43,4,6,25.00),(44,4,8,5.00),(45,5,1,60.00),(46,5,6,25.00),(47,5,8,5.00),(48,5,7,5.00),(49,5,10,5.00),(50,6,1,40.00),(51,6,6,30.00),(52,6,7,10.00),(53,6,8,10.00),(54,6,10,5.00),(55,6,2,5.00),(56,7,1,45.00),(57,7,6,20.00),(58,7,8,10.00),(59,7,7,5.00),(60,7,10,10.00),(61,7,11,10.00),(62,8,1,80.00),(63,8,6,10.00),(64,8,8,5.00),(65,8,5,5.00);
/*!40000 ALTER TABLE `CompanyMaterials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Materials`
--

DROP TABLE IF EXISTS `Materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Materials` (
  `MaterialsID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Description` mediumtext NOT NULL,
  `Rating` int NOT NULL,
  PRIMARY KEY (`MaterialsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Materials`
--

LOCK TABLES `Materials` WRITE;
/*!40000 ALTER TABLE `Materials` DISABLE KEYS */;
INSERT INTO `Materials` VALUES (1,'Cotton','A natural fiber known for its softness and breathability, widely used in everyday wear. Cotton is grown without synthetic pesticides or fertilizers, organic cotton reduces environmental impact compared to conventional cotton.',7),(2,'Wool','A natural fiber valued for its warmth and moisture-wicking properties, often used in sweaters and suits. As a natural, biodegradable fiber, wool is sustainable when sourced responsibly',6),(3,'Silk','A luxurious natural fiber known for its smooth texture and sheen, often used in high-end clothing. Silk is a natural fiber with a relatively low environmental impact, but its production involves ethical considerations related to silkworms.',5),(4,'Linen','A natural fiber made from flax, known for its coolness and durability, ideal for summer clothing. Linen is derived from the flax plant, linen requires fewer resources and chemicals compared to cotton, making it a sustainable choice.',8),(5,'Hemp','A sustainable natural fiber requiring minimal water and pesticides, increasingly popular for casual and eco-friendly wear.Hemp is highly sustainable due to its low water usage, minimal need for pesticides, rapid growth, and ability to improve soil health.',9),(6,'Polyester','A synthetic fiber known for its durability, wrinkle resistance, and quick-drying properties, commonly used in activewear. Made from petroleum, polyester has a high environmental impact due to energy-intensive production and non-biodegradability',2),(7,'Nylon','A strong and elastic synthetic fiber, often used in hosiery, swimwear, and sportswear. Nylon is another petroleum-based synthetic fiber and its production emits greenhouse gases and the material is not biodegradable.',2),(8,'Spandex','A synthetic fiber known for its exceptional elasticity, commonly used in stretchable garments like leggings. Spandex is s synthetic fiber derived from petroleum that is non-biodegradable and contributes to microplastic pollution.',3),(9,'Acrylic','A lightweight synthetic fiber, often used as a wool substitute in sweaters and scarves. Acrylic is a synthetic fiber with significant environmental concerns, including high energy consumption during production and non-biodegradability. ',1),(10,'Rayon','A semi-synthetic fiber made from cellulose, valued for its silk-like feel and versatility. Even though rayon is derived from natural cellulose, traditional rayon production involves harmful chemicals and deforestation concerns.',4),(11,'Leather','A durable and flexible material made from animal hides, widely used in jackets, shoes, and bags. Conventional leather production has significant environmental impacts, including resource-intensive animal farming and pollution from tanning processes. ',3);
/*!40000 ALTER TABLE `Materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fashion'
--

--
-- Dumping routines for database 'fashion'
--
/*!50003 DROP FUNCTION IF EXISTS `GetCompanyRatings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetCompanyRatings`(companyName VARCHAR(255)) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE materialRating FLOAT DEFAULT 0;
    DECLARE certificationRating FLOAT DEFAULT 0;
    DECLARE overallRating FLOAT DEFAULT 0;
    DECLARE result VARCHAR(255);

    -- Calculate Material Rating
    SELECT 
        IFNULL(ROUND(SUM(cm.UsagePercentage * m.Rating) / 100, 2), 0)
    INTO materialRating
    FROM `fashion`.`Company` c
    LEFT JOIN `fashion`.`CompanyMaterials` cm ON c.CompanyID = cm.CompanyID
    LEFT JOIN `fashion`.`Materials` m ON cm.MaterialID = m.MaterialsID
    WHERE c.Name = companyName;

    -- Calculate Certification Rating
    SELECT 
        IFNULL(ROUND(SUM(cert.Rating) / NULLIF((COUNT(cert.CertificationID) * 10), 0) * 10, 2), 0)
    INTO certificationRating
    FROM `fashion`.`Company` c
    LEFT JOIN `fashion`.`CompanyCertification` cc ON c.CompanyID = cc.CompanyID
    LEFT JOIN `fashion`.`Certifications` cert ON cc.CertificationID = cert.CertificationID
    WHERE c.Name = companyName;

    -- Calculate Overall Rating
    SET overallRating = ROUND((materialRating + certificationRating) / 2, 2);

    -- Create the Result String
    SET result = CONCAT('Material Rating: ', materialRating, 
                        ', Certification Rating: ', certificationRating, 
                        ', Overall Rating: ', overallRating);

    RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 16:34:52
