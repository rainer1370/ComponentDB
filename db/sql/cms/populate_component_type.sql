# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: ctlappsdev (MySQL 5.1.73)
# Database: cms
# Generation Time: 2014-04-15 22:03:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table component_type
# ------------------------------------------------------------

LOCK TABLES `component_type` WRITE;
/*!40000 ALTER TABLE `component_type` DISABLE KEYS */;

INSERT INTO `component_type` (`id`, `name`, `description`, `component_type_category_id`)
VALUES
	(1,'Housing Component',NULL,2),
	(2,'Building',NULL,2),
	(3,'Room',NULL,2),
	(4,'Area',NULL,2),
	(5,'Rack',NULL,2),
	(6,'Cabinet',NULL,2),
	(7,'Enclosure',NULL,2),
	(8,'Card Cage',NULL,2),
	(9,'Instrumentation Component',NULL,3),
	(10,'Controller - Generic',NULL,3),
	(11,'Controller - Ion Pump',NULL,3),
	(12,'Controller - Gate Valve',NULL,3),
	(13,'Controller - Vacuum Gauge',NULL,3),
	(14,'Controller - Heat tape',NULL,3),
	(15,'Controller - PID',NULL,3),
	(16,'Controller - Temperature',NULL,3),
	(17,'Controller - Motor',NULL,3),
	(18,'Controller - Power Supply',NULL,3),
	(19,'Controller - PLC',NULL,3),
	(20,'Controller - Water flow',NULL,3),
	(21,'Controller - RGA',NULL,3),
	(22,'Monitoring System',NULL,3),
	(23,'Gauge/Sensor - strain',NULL,3),
	(24,'Gauge/Sensor  - vacuum',NULL,3),
	(25,'Gauge/Sensor  - thermocouple',NULL,3),
	(26,'Gauge/Sensor  - RTD',NULL,3),
	(27,'Gauge/Sensor  - pressure',NULL,3),
	(28,'Gauge/Sensor - waterflow',NULL,3),
	(29,'Gauge/Sensor - RGA',NULL,3),
	(30,'Motor',NULL,3),
	(31,'Motor - Driver',NULL,3),
	(32,'Motor - Position Monitor',NULL,3),
	(33,'Motor - Limit Switch',NULL,3),
	(34,'Cable',NULL,3),
	(35,'Patch Panel',NULL,3),
	(36,'Adapter',NULL,3),
	(37,'Module',NULL,3),
	(38,'Blackbox',NULL,3),
	(39,'ADC',NULL,3),
	(40,'DAC',NULL,3),
	(41,'Discrete I/O',NULL,3),
	(42,'CPU',NULL,3),
	(43,'FPGA',NULL,3),
	(44,'Oscilloscope/DSA',NULL,3),
	(45,'Counter',NULL,3),
	(46,'Function Generator',NULL,3),
	(47,'Frequency Synthesizer',NULL,3),
	(48,'Voltmeter',NULL,3),
	(49,'Power Supply',NULL,3),
	(50,'Amplifier',NULL,3),
	(51,'Multiplexor',NULL,3),
	(52,'Interlock',NULL,3),
	(53,'Readout/Display',NULL,3),
	(54,'Controls Component',NULL,4),
	(55,'Network',NULL,4),
	(56,'Timing',NULL,4),
	(57,'IOC',NULL,4),
	(58,'Server/Workstation',NULL,4),
	(59,'Video',NULL,4),
	(60,'Interface Adapter',NULL,4),
	(61,'Accelerator Component',NULL,5),
	(62,'Girder',NULL,5),
	(63,'Stand',NULL,5),
	(64,'Vacuum Chamber',NULL,5),
	(65,'Transition Piece',NULL,5),
	(66,'Vacuum Pump',NULL,5),
	(67,'Absorber',NULL,5),
	(68,'Heat Tape',NULL,5),
	(69,'Flag',NULL,5),
	(70,'Scraper',NULL,5),
	(71,'Bellows',NULL,5),
	(72,'Assembly',NULL,5),
	(73,'Vacuum Flange',NULL,5),
	(74,'Vacuum Seal',NULL,5),
	(75,'Vacuum Valve',NULL,5),
	(76,'Fastener',NULL,5),
	(77,'Water line',NULL,5),
	(78,'Water fitting',NULL,5),
	(79,'Water seal',NULL,5),
	(80,'Magnet Component',NULL,6),
	(81,'Trim',NULL,6),
	(82,'Dipole',NULL,6),
	(83,'Quadraple',NULL,6),
	(84,'Sextapole',NULL,6),
	(85,'PS Component',NULL,7),
	(86,'Diagnostic Component',NULL,8),
	(87,'BPM',NULL,8),
	(88,'Loss Monitor',NULL,8),
	(89,'Current Monitor',NULL,8),
	(90,'Screen',NULL,8),
	(91,'Optics',NULL,8),
	(92,'RF Component',NULL,9),
	(93,'cavity/accelerating structure',NULL,9),
	(94,'phase shifter',NULL,9),
	(95,'attenuator',NULL,9),
	(96,'coupler',NULL,9),
	(97,'envelope detector',NULL,9),
	(98,'phase monitor/detector',NULL,9),
	(99,'klystron',NULL,9),
	(100,'HVPS',NULL,9),
	(101,'splitter',NULL,9),
	(102,'RF Source',NULL,9),
	(103,'circulator',NULL,9),
	(104,'Beamline Component',NULL,10),
	(105,'Insertion Device Component',NULL,11);

/*!40000 ALTER TABLE `component_type` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
