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

/*Table structure for table `checkins` */

DROP TABLE IF EXISTS `checkins`;

CREATE TABLE `checkins` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `cardtype` varchar(10) DEFAULT NULL,
  `cardno` varchar(30) DEFAULT NULL,
  `roomid` int(11) DEFAULT NULL,
  `checkintime` datetime DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `totalprice` float(10,2) DEFAULT NULL,
  `state` enum('未结账','已结账') DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `checkins` */

insert  into `checkins`(`cid`,`name`,`sex`,`cardtype`,`cardno`,`roomid`,`checkintime`,`num`,`totalprice`,`state`) values (1,'李黎明','男','身份证','430104198807079900',103,'2019-08-23 18:59:37',1,200.00,'已结账'),(2,'刘建军','男','身份证','430111197902018822',101,'2019-08-20 19:00:47',1,200.00,'已结账'),(3,'江山','男','身份证','510215198808099922',104,'2019-08-25 19:10:56',1,288.00,'已结账'),(4,'黄珊','女','身份证','43011119990808',101,'2019-09-17 13:42:34',1,200.00,'已结账'),(5,'刘小小','女','身份证','430102199702139900',104,'2019-09-17 14:40:49',2,NULL,'未结账'),(6,'黄佳威','男','身份证','430111199802019900',103,'2019-12-23 13:59:05',1,NULL,'未结账');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
