/*
SQLyog Ultimate v8.32 
MySQL - 5.5.36 : Database - blood
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blood` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blood`;

/*Table structure for table `accidental` */

DROP TABLE IF EXISTS `accidental`;

CREATE TABLE `accidental` (
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `CostPerUnit` int(20) DEFAULT NULL,
  `Quantity` int(20) DEFAULT NULL,
  `TotalCost` int(20) DEFAULT NULL,
  `PatientName` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `ReceiverName` varchar(20) DEFAULT NULL,
  `ReceiverNo` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `requireDate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accidental` */

insert  into `accidental`(`BloodGroup`,`Location`,`CostPerUnit`,`Quantity`,`TotalCost`,`PatientName`,`Gender`,`ReceiverName`,`ReceiverNo`,`Email`,`requireDate`) values ('A positive','GBH American',50,2,100,'aa','Male','as','9784561230','aa@gmail.com','Nov 3, 2015'),('A positive','GBH American',50,2,100,'aa','Male','aa','7894561230','aa@gmail.com','Nov 5, 2015'),('O positive','M.B. Hospital',50,1,50,'dhwani','Female','akanksha','8741034187','akankshagohil7@gmail.com','Nov 18, 2015'),('A negative','GBH American',50,1,50,'aman','Male','anamika','8452103697','akankshagohil2011@gmail.com','Nov 22, 2015'),('A positive','GBH American',50,2,100,'sfghfsh','Male','agsdhg','9530469170','akankshagohil7@gmail.com','Nov 25, 2015'),('A positive','GBH American',50,3,150,'dhwani','Female','farheen','7412589630','farheensadriwala@gmail.com','03-Mar-2016'),('A positive','GBH American',50,5,250,'farheen','Female','akankscha','8741034187','akankshagohil2011@gmail.com','26-Mar-2016'),('A positive','GBH American',50,5,250,'farheen','Female','akankscha','8741034187','akankshagohil2011@gmail.com','26-Mar-2016'),('A positive','GBH American',50,5,250,'farheen','Female','akankscha','8741034187','akankshagohil2011@gmail.com','26-Mar-2016'),('A positive','GBH American',50,5,250,'farheen','Female','akankscha','8741034187','akankshagohil2011@gmail.com','26-Mar-2016'),('A positive','GBH American',50,2,100,'fahreen','Female','dhwani','7410253698','ramnanij@gmail.com','31-Mar-2016');

/*Table structure for table `addorg` */

DROP TABLE IF EXISTS `addorg`;

CREATE TABLE `addorg` (
  `Organization` varchar(50) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `ContactNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addorg` */

insert  into `addorg`(`Organization`,`Email`,`ContactNo`) values ('Maa Gayatri','maa@gmail.com','9874561230'),('GBH American','gbh@gmail.com','9874561230'),('aa','aa@gmail.com','9871234560'),('aa','aa@gmail.com','9451236785'),('aa','aa@gmail.com','9874561230'),('aa','aa@gmail.com','9874561230');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `sub` varchar(20) DEFAULT NULL,
  `msg` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`name`,`email`,`sub`,`msg`) values ('ddd','a@gmail.com','feedback','nice website'),('jai','aa@gmail.com','feedback','nice website\r\n');

/*Table structure for table `details` */

DROP TABLE IF EXISTS `details`;

CREATE TABLE `details` (
  `BloodGroup` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  `CostPerUnit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `details` */

insert  into `details`(`BloodGroup`,`quantity`,`Location`,`CostPerUnit`) values ('A positive',23,'GBH American','50'),('A negative',12,'GBH American','50'),('B positive',13,'GBH American','50'),('B negative',10,'GBH American','50'),('AB positive',15,'GBH American','50'),('AB negative',10,'GBH American','50'),('O positive',10,'GBH American','50'),('O negative',10,'GBH American','50'),('A positive',10,'M.B. Hospital','50'),('A negative',10,'M.B. Hospital','50'),('B positive',12,'M.B. Hospital','50'),('B negative',10,'M.B. Hospital','50'),('AB positive',10,'M.B. Hospital','50'),('AB negative',10,'M.B. Hospital','50'),('O positive',10,'M.B. Hospital','50'),('O negative',10,'M.B. Hospital','50');

/*Table structure for table `donor` */

DROP TABLE IF EXISTS `donor`;

CREATE TABLE `donor` (
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Age` int(10) DEFAULT NULL,
  `Weight` int(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `ContactNo` varchar(10) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `DonationDate` varchar(20) DEFAULT NULL,
  `ExpiryDate` varchar(20) DEFAULT NULL,
  `NOC` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `donor` */

insert  into `donor`(`Name`,`Email`,`Age`,`Weight`,`Address`,`ContactNo`,`Gender`,`BloodGroup`,`Quantity`,`Location`,`DonationDate`,`ExpiryDate`,`NOC`) values ('aa','aa@gmail.com',18,45,'aaa','9999999999','Male','A positive',2,'GBH American','Nov 3, 2015','Nov 10, 2015',NULL),('aa','a@gmail.com',18,45,'dasdfa','8104394735','Male','A positive',1,'GBH American','Nov 17, 2015','Nov 24, 2015',NULL),('aa','akankshagohil7@gmail.com',18,45,'sdfsfghf','9874561223','Male','A positive',2,'GBH American','Nov 18, 2015','Nov 25, 2015',NULL),('akanksha','akankshagohil7@gmail.com',18,45,'sdfsfghf','8104394735','Female','A positive',1,'GBH American','Nov 18, 2015','Nov 25, 2015','3ec2aebbad16fb4557d15b419aa9f7f9.jpg'),('akanksha','akankshagohil7@gmail.com',18,45,'sdfsfghf','8104394735','Female','A positive',1,'GBH American','Nov 18, 2015','Nov 25, 2015','3ec2aebbad16fb4557d15b419aa9f7f9.jpg'),('akanksha','akankshagohil7@gmail.com',18,45,'sdfsd','8104394735','Female','A positive',1,'GBH American','Nov 18, 2015','Nov 25, 2015','5b301dcc48147791a8513c827bf3dc2b (1).jpg'),('Vidhya','akankshagohil2011@gmail.com',36,56,'Marwar','7894561244','Female','AB positive',2,'M.B.Hospital','Nov 22, 2015','Nov 29, 2015','No-Obection-Certificate.jpg'),('asdg','akankshagohil2011@gmail.com',23,56,'w2er','7410258963','Male','A positive',1,'GBH American','Nov 22, 2015','Nov 29, 2015','No-Obection-Certificate.jpg'),('akanksha','akankshagohil7@gmail.com',18,45,'sfjkls','9874561223','Female','A positive',1,'GBH American','Nov 25, 2015','Dec 2, 2015','9a5b2c18834ed3a23051c872fda61f53.jpg'),('akanksha','akankshagohil7@gmail.com',25,52,'zinc park','8741034187','Female','O positive',1,'M.B.Hospital','Dec 29, 2015','Jan 5, 2016','clipart_board-meeting.jpg'),('dhwani','akankshagohil7@gmail.com',20,45,'zinc park','9784561230','Female','AB negative',2,'GBH American','Dec 30, 2015','Jan 6, 2016','facebook_friends_old.jpg'),('jai','ramnanij@gmail.com',22,70,'gits hostal','8104394735','Male','O positive',2,'GBH American','03-Mar-2016','10-Mar-2016','DSC_1177.jpg'),('farheen','farheensadriwala@gmail.com',31,96,'assd','9632587410','Female','A positive',3,'GBH American','26-Mar-2016','02-Apr-2016','Lab report VLSI.docx'),('farheen','farheensadriwala@gmail.com',31,96,'assd','9632587410','Female','A positive',3,'GBH American','26-Mar-2016','02-Apr-2016','Lab report VLSI.docx'),('dhwani','deepak01.dt@gmail.com',54,85,'asdf','7410236589','Female','A positive',2,'GBH American','31-Mar-2016','07-Apr-2016','anmol.docx');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `Pic` varchar(10000) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ContactNo` varchar(10) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`Pic`,`FirstName`,`LastName`,`Username`,`Password`,`Email`,`ContactNo`,`Gender`) values ('don.png','a','a','a','asdA11','a@gmail.com','9874561230','male'),('canvas.png','aa','aa','aa','asdA12','aa@gmail.com','9876543210','male'),('stm.png','ab','ab','aba','asdA12','aa@gmail.com','8736939594','female'),('admin.png','admin','admin','admin','admin@1','admin@g.com','2147483647','male'),('null','akankscha','gohil','akankscha','Akankscha@01','akankshagohil2011@gmail.com','8741034187','female'),('ghjghj.jpg','akanksha','gohil','akanksha','asdA11','akankshagohil7@gmail.com','8741034187','female'),('9a5b2c18834ed3a23051c872fda61f53.jpg','a','a','akankshawww','asdA123','akankshagohil7@gmail.com','8104394735','female'),('06b7ff31f426289ba2027fd86d54f264.jpg','akanksha','gohil','akanshaaa','asdA11','akankshagohil7@gmail.com','8104394735','female'),('null','farheen','sadriwala','farheen','Farheen@01','farheensadriwala@gmail.com','8741034187','female'),('Blood doesnt grow on trees - screen.jpg','hii','hii','hi','asdA11','akankshagohil7@gmail.com','9874561223','male'),('null','JITENDRA','SHARMA','jitubs','Jitubs@11','jitendra0511@gmail.com','9982787465','male'),('DSC_1177.jpg','jai','prakash','ramnanij','Ramnanij@01','ramnanij@gmail.com','8104394735','male');

/*Table structure for table `nonaccidental` */

DROP TABLE IF EXISTS `nonaccidental`;

CREATE TABLE `nonaccidental` (
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `CostPerUnit` int(20) DEFAULT NULL,
  `Quantity` int(20) DEFAULT NULL,
  `TotalCost` int(20) DEFAULT NULL,
  `PatientName` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `ReceiverName` varchar(20) DEFAULT NULL,
  `ReceiverNo` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `RequireDate` varchar(20) DEFAULT NULL,
  `ReplacerName` varchar(20) DEFAULT NULL,
  `ReplacementDate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nonaccidental` */

insert  into `nonaccidental`(`BloodGroup`,`Location`,`CostPerUnit`,`Quantity`,`TotalCost`,`PatientName`,`Gender`,`ReceiverName`,`ReceiverNo`,`Email`,`RequireDate`,`ReplacerName`,`ReplacementDate`) values ('A positive','GBH American',50,1,50,'aa','Male','aa','9784561230','aa@gmail.com','Nov 5, 2015','aa','Nov 12, 2015'),('A positive','GBH American',50,2,50,'aa','Male','aa','9784561230','aa@gmail.com','Nov 5, 2015','aa','Nov 12, 2015'),('AB positive','GBH American',50,1,50,'jai','Male','farheen','9530469170','farheensadriwala@gmail.com','Nov 18, 2015','farheen','Nov 25, 2015'),('A positive','GBH American',50,3,150,'sita','Female','weta','7841025896','akankshagohil2011@gmail.com','Nov 22, 2015','wqat','Nov 29, 2015'),('A positive','GBH American',50,5,250,'farheen','Female','akankscha','8741034187','akankshagohil2011@gmail.com','26-Mar-2016','jai','02-Apr-2016'),('A positive','GBH American',50,5,250,'farheen','Female','akankscha','8741034187','akankshagohil2011@gmail.com','26-Mar-2016','jai','02-Apr-2016'),('A positive','GBH American',50,1,50,'farheen','Female','dhwani','7548963210','ramnanij@gmail.com','31-Mar-2016','jai','07-Apr-2016');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
