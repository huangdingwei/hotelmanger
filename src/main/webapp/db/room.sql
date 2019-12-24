/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.17 : Database - new
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`new` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `new`;

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `roomtype` varchar(20) DEFAULT NULL,
  `price` float(255,0) DEFAULT NULL,
  `roomstate` enum('未使用','已预定','已入住') DEFAULT NULL,
  PRIMARY KEY (`roomid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `room` */

insert  into `room`(`roomid`,`roomtype`,`price`,`roomstate`) values (101,'单人间',200,'未使用'),(102,'双人间',288,'已预定'),(103,'单人间',200,'已入住'),(104,'双人间',288,'已入住');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
