/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.29 : Database - timetable
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`timetable` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `timetable`;

/*Table structure for table `add_subject` */

DROP TABLE IF EXISTS `add_subject`;

CREATE TABLE `add_subject` (
  `subject_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subject_name` varchar(30) DEFAULT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`subject_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `add_subject` */

insert  into `add_subject`(`subject_code`,`subject_name`,`faculty_name`) values 
('ks_101','java','aa'),
('ks_102','c++','bb'),
('ks_103','php','dd');

/*Table structure for table `domains` */

DROP TABLE IF EXISTS `domains`;

CREATE TABLE `domains` (
  `d_id` int NOT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `domains` */

insert  into `domains`(`d_id`,`d_name`) values 
(1,'AI/ML'),
(2,'DATA-STRUCTURE'),
(3,'NETWORKING'),
(4,'MATHS'),
(5,'DATABASE'),
(6,'PROGRAMING'),
(7,'MANAGEMENT-ACCOUNTING'),
(8,'GRAPHICS'),
(9,'OS'),
(10,'CLOUD'),
(11,'OTHER');

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `date` varchar(255) DEFAULT NULL,
  `desce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `faculty` */

insert  into `faculty`(`date`,`desce`,`file`) values 
('2022-07-26','sip document','SIP_group_id-05.pdf'),
('2022-07-27','box of cloth','GID_68.pdf');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) NOT NULL,
  `sem` int NOT NULL,
  `scredit` int NOT NULL,
  `workload` int NOT NULL DEFAULT '9',
  `status` int NOT NULL DEFAULT '0',
  `fname` varchar(255) DEFAULT NULL,
  `workload1` varchar(255) DEFAULT '0',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `subject` */

insert  into `subject`(`s_id`,`sname`,`sem`,`scredit`,`workload`,`status`,`fname`,`workload1`) values 
(14,'FCO',1,3,9,1,' HIRAL PRAJAPATI,',' 9,'),
(15,'FOP',1,3,9,1,' JUI UPADHYAY,',' 9,'),
(16,'MC',1,3,9,1,' JIGAR RAVAL,',' 9,'),
(17,'FAM',1,2,6,1,' JANHVEE UPADHYAY,',' 6,'),
(18,'FOM',1,2,6,1,' PULKIT TRIVEDI,',' 6,'),
(19,'CS',1,3,9,1,' VIRAL THAKOR,',' 9,'),
(20,'IOA_P',1,3,9,1,' ABHILASHA VADESARA,',' 9,'),
(21,'FOP_P',1,3,9,1,' AKANSHA JAIN,',' 9,'),
(22,'DBMS',1,3,9,1,' KRUPALI BUSA,',' 9,'),
(23,'COSM',3,3,9,1,' JANHVEE UPADHYAY,',' 9,'),
(24,'DS',3,3,9,1,' AKANSHA JAIN,',' 9,'),
(25,'DM',3,3,9,1,' JIGAR RAVAL,',' 9,'),
(26,'SSD',3,2,6,1,' VIRAL THAKOR,',' 6,'),
(27,'DS_P',3,3,9,1,' NAMITA DOSHI,',' 9,'),
(28,'OOP',3,3,9,1,' KRUPALI BUSA,',' 9,'),
(29,'OS',3,3,9,1,' ANJALI TADVI,',' 9,'),
(30,'OOP_P',3,3,9,1,' JUI UPADHYAY,',' 9,'),
(31,'FE',3,2,6,1,' SAGAR BURSE,',' 6,'),
(32,'SE',5,3,9,1,' KALYANI PATEL,',' 9,'),
(33,'CG',5,3,9,1,' NAMITA DOSHI,',' 9,'),
(34,'OOPJ',5,3,9,1,' HITESH PARMAR,',' 9,'),
(35,'OOPJ_P',5,3,9,1,' ANJALI TADVI,',' 9,'),
(36,'TC',5,2,6,1,' PULKIT TRIVEDI,',' 6,'),
(37,'CLIP',5,3,9,1,' KAMESH RAVAL ,',' 9,'),
(38,'CG_P',5,3,9,1,' ABHILASHA VADESARA,',' 9,'),
(39,'ADBMS',7,3,6,1,' VIDHI SUTARIA,',' 6,'),
(40,'SPM',7,3,6,1,' HIRAL PRAJAPATI,',' 6,'),
(41,'AI',7,3,6,1,' VRUNDA GADESHA,',' 6,'),
(42,'ERP',7,3,6,1,' KAMESH RAVAL ,',' 6,'),
(43,'OR',7,3,6,1,' NANDITA GOSWAMI,',' 6,'),
(44,'AN',7,3,6,1,' PRUTHVIRAJSINH PARMAR,',' 6,'),
(45,'AI_P',7,3,10,1,' VRUNDA GADESHA,',' 10,'),
(46,'IP',9,3,6,1,' PRUTHVIRAJSINH PARMAR,',' 6,'),
(47,'NA',9,2,4,1,' KAMESH RAVAL ,',' 4,'),
(48,'GIS',9,3,6,1,' NANDITA GOSWAMI,',' 6,'),
(49,'DC',9,3,6,1,' KALYANI PATEL,',' 6,'),
(50,'CC',9,3,6,1,' VIDHI SUTARIA,',' 6,'),
(51,'MAD',9,3,6,1,' ANISHA GAJJAR,',' 6,'),
(52,'MAD_P',9,3,10,1,' ANISHA GAJJAR,',' 10,'),
(53,'DOS',9,3,6,1,' HITESH PARMAR,',' 6,'),
(71,'ES',7,2,4,1,' SAGAR BURSE,',' 4,');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `desg` varchar(255) NOT NULL,
  `subchoice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users` */

insert  into `users`(`uid`,`uname`,`password`,`desg`,`subchoice`) values 
('abcd@gmail.com','abcd','1234','laboperator',NULL),
('abhilasha@gmail.com','ABHILASHA VADESARA','1234','faculty','  IOA_P CG_P ERP CC'),
('akansha@gmail.com','AKANSHA JAIN','1234','faculty','  FOP_P DS DS_P OOP_P'),
('anisha@gmail.com','ANISHA GAJJAR','1234','faculty','  MAD MAD_P OOP_P ERP'),
('anjali@gmail.com','ANJALI TADVI','1234','faculty','  OS OOPJ_P DC OOP_P'),
('fv@gmail.com','fv','1234','laboperator',NULL),
('henil@gmail.com','henil','admin','admin',NULL),
('hiral@gmail.com','HIRAL PRAJAPATI','1234','faculty','  FCO SPM AI_P'),
('hitesh@gmail.com','HITESH PARMAR','1234','faculty','  OOPJ DOS OS'),
('janhvee@gmail.com','JANHVEE UPADHYAY','1234','faculty','  FAM COSM FOM '),
('jigar@gmail.com','JIGAR RAVAL','1234','faculty','  MC DM'),
('jui@gmail.com','JUI UPADHYAY','1234','faculty','  FOP OOP_P'),
('kalyani@gmail.com','KALYANI PATEL','1234','faculty','  SE DC'),
('kamesh@gmail.com','KAMESH RAVAL ','1234','faculty','  CLIP NA ERP  DM'),
('krupali@gmail.com','KRUPALI BUSA','1234','faculty','  DBMS OOP AI'),
('namita@gmail.com','NAMITA DOSHI','1234','faculty','  DS_P CG DS'),
('nandita@gmail.com','NANDITA GOSWAMI','1234','faculty','  GIS OR'),
('nikul@gmail.com','nikul','1234','laboperator',NULL),
('pruthviraj@gmail.com','PRUTHVIRAJSINH PARMAR','1234','faculty','  AN IP CC'),
('pulkit@gmail.com','PULKIT TRIVEDI','1234','faculty','  FOM TC FAM'),
('sagar@gmail.com','SAGAR BURSE','1234','faculty',' FE ES FOM'),
('vidhi@gmail.com','VIDHI SUTARIA','1234','faculty','  CC ADBMS DS'),
('viral@gmail.com','VIRAL THAKOR','1234','faculty','  CS SSD FOM'),
('vrunda@gmail.com','VRUNDA GADESHA','1234','faculty','  AI_P AI');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
