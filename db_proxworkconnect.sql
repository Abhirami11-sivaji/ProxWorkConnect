# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_proxworkconnect
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    21-05-2024 17:01:58
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_proxworkconnect'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_proxworkconnect" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_proxworkconnect";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(100) unsigned NOT NULL auto_increment,
  "admin_name" varchar(100) default NULL,
  "admin_email" varchar(100) default NULL,
  "admin_password" varchar(100) default NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_name", "admin_email", "admin_password") VALUES
	('1','Admin one','admin1@gmail.com','Admin@01');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "complaint_id" int(10) unsigned NOT NULL auto_increment,
  "complaint_title" varchar(100) default NULL,
  "complaint_content" varchar(100) default NULL,
  "complaint_reply" varchar(100) default NULL,
  "complaint_status" varchar(50) default '0',
  "complaint_date" date default NULL,
  "user_id" int(10) unsigned default NULL,
  "worker_id" int(10) unsigned default NULL,
  "workpost_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("complaint_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('1','adsf','skjfn','processed','1','2024-05-20','1','8',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('2','abc','jsshja','accepted','1','2024-05-21','1','11',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('3','hsxhsb','hdhscbh','sdncdhdfn','1','2024-05-21','1','8',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('4','abhhdn','gfshdjs',NULL,'0','2024-05-21','1','8',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('5','safsdf','dsvsd',NULL,'0','2024-05-21','1','7',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('6','abvgsdhgd','abcdef',NULL,'0','2024-05-21','1','10',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('7','abvdg','shbcsh',NULL,'0','2024-05-21','1','7',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('8','asdvhsa','sdsaj',NULL,'0','2024-05-21','1','7',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('9','sadhgsa','gsdyagd',NULL,'0','2024-05-21','1','7',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_status", "complaint_date", "user_id", "worker_id", "workpost_id") VALUES
	('10','av','abvcds','accepted','1','2024-05-21','1',NULL,'7');
/*!40000 ALTER TABLE "tbl_complaint" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) unsigned NOT NULL auto_increment,
  "district_name" varchar(50) default NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=19;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('1','Thrissur');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('4','Kollam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('6','Kottayam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('8','Ernakulam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('9','Trivandrum');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('10','Alappuzha');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('11','Pathanamthitta');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('12','Idukki');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('13','Palakkad');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('14','Malappuram');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('15','Kozhikode');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('16','Wayanad');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('17','Kannur');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('18','Kasaragod');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_location'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_location" (
  "location_id" int(50) unsigned NOT NULL auto_increment,
  "location_name" varchar(50) default NULL,
  "place_id" int(20) unsigned default NULL,
  PRIMARY KEY  ("location_id")
) AUTO_INCREMENT=29;



#
# Dumping data for table 'tbl_location'
#

LOCK TABLES "tbl_location" WRITE;
/*!40000 ALTER TABLE "tbl_location" DISABLE KEYS;*/
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('5','Avoly','5');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('8','Aanikkadu','5');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('14','abnn','4');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('17','rer','4');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('18','Thekkumbhagam','10');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('19','Paliyada','11');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('20','Punnaveli','14');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('21','Avoly','18');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('22','Chowwara','16');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('23','Nedumbassery','16');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('24','Kalady','17');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('25','Kottapady','19');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('26','Thirupuram','21');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('27','Pallichal','23');
REPLACE INTO "tbl_location" ("location_id", "location_name", "place_id") VALUES
	('28','Kadathuruthy','15');
/*!40000 ALTER TABLE "tbl_location" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_payrequest'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_payrequest" (
  "pay_id" int(100) NOT NULL auto_increment,
  "pay_amount" varchar(100) default NULL,
  "pay_remarks" varchar(100) default NULL,
  "worker_id" int(100) unsigned default NULL,
  "user_id" int(100) unsigned default NULL,
  PRIMARY KEY  ("pay_id")
);



#
# Dumping data for table 'tbl_payrequest'
#

# No data found.



#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(3) unsigned NOT NULL auto_increment,
  "place_name" varchar(20) default NULL,
  "district_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("place_id")
) AUTO_INCREMENT=24;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('4','Guruvayoor','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('7','Anthicad','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('8','Chalakudy','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('9','Elanad','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('10','Chavara','4');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('11','Kallada','4');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('12','Manapally','4');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('13','Meenachil','6');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('14','Nedumkunnam','6');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('15','Peruva','6');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('16','Aluva','8');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('17','Angamaly','8');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('18','Muvattupuzha','8');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('19','Kothamangalam','8');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('20','Karamana','9');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('21','Kovalam','9');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('22','Ulloor','9');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('23','Nemom','9');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_review'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_review" (
  "review_id" int(100) NOT NULL auto_increment,
  "user_name" varchar(100) default NULL,
  "user_rating" varchar(100) default NULL,
  "user_review" varchar(100) default NULL,
  "review_datetime" varchar(100) default NULL,
  "worker_id" int(10) unsigned default NULL,
  "workpost_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("review_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_review'
#

LOCK TABLES "tbl_review" WRITE;
/*!40000 ALTER TABLE "tbl_review" DISABLE KEYS;*/
REPLACE INTO "tbl_review" ("review_id", "user_name", "user_rating", "user_review", "review_datetime", "worker_id", "workpost_id") VALUES
	(1,'jb','3','jb','2024-05-20 14:30:47','2',NULL);
REPLACE INTO "tbl_review" ("review_id", "user_name", "user_rating", "user_review", "review_datetime", "worker_id", "workpost_id") VALUES
	(2,'abc','3','utgjtgjltrkgt','2024-05-20 15:08:53','5',NULL);
REPLACE INTO "tbl_review" ("review_id", "user_name", "user_rating", "user_review", "review_datetime", "worker_id", "workpost_id") VALUES
	(3,'Manu','3','ujdshusahfiasjc','2024-05-20 15:28:58','8',NULL);
REPLACE INTO "tbl_review" ("review_id", "user_name", "user_rating", "user_review", "review_datetime", "worker_id", "workpost_id") VALUES
	(4,'Manu','4','good','2024-05-21 01:30:21','5',NULL);
REPLACE INTO "tbl_review" ("review_id", "user_name", "user_rating", "user_review", "review_datetime", "worker_id", "workpost_id") VALUES
	(5,'Anu','3','abhhdbdjer','2024-05-21 11:58:14',NULL,'5');
REPLACE INTO "tbl_review" ("review_id", "user_name", "user_rating", "user_review", "review_datetime", "worker_id", "workpost_id") VALUES
	(6,'jo','2','shdasjd','2024-05-21 16:08:33',NULL,'3');
/*!40000 ALTER TABLE "tbl_review" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_user" (
  "user_id" int(50) NOT NULL auto_increment,
  "user_name" varchar(50) default NULL,
  "user_contact" varchar(100) default NULL,
  "user_email" varchar(100) default NULL,
  "user_address" varchar(50) default NULL,
  "user_dob" varchar(100) default NULL,
  "user_photo" varchar(50) default NULL,
  "user_gender" varchar(100) default NULL,
  "user_password" varchar(100) default NULL,
  "location_id" int(30) unsigned default NULL,
  "user_status" varchar(50) default '0',
  PRIMARY KEY  ("user_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_user'
#

LOCK TABLES "tbl_user" WRITE;
/*!40000 ALTER TABLE "tbl_user" DISABLE KEYS;*/
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_email", "user_address", "user_dob", "user_photo", "user_gender", "user_password", "location_id", "user_status") VALUES
	(1,'Manu','9547292744','manu@gmail.com','Perumbavoor""','23102000','UserPhoto_1961.png','on','Manu@123','5','1');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_email", "user_address", "user_dob", "user_photo", "user_gender", "user_password", "location_id", "user_status") VALUES
	(2,'Tom','9547295323','tom@gmail.com','avoly','23102000','UserPhoto_1268.png','on','Abcd*1234','5','0');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_email", "user_address", "user_dob", "user_photo", "user_gender", "user_password", "location_id", "user_status") VALUES
	(3,'Athulya','9446738873','athulya@gmail.com','vazhakulams','11022004','UserPhoto_1953.png','on','Athulya*2002','8','0');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_email", "user_address", "user_dob", "user_photo", "user_gender", "user_password", "location_id", "user_status") VALUES
	(4,'Ajay','9453738562','ajay@gmail.com','Avoly','11-08-2000','UserPhoto_1836.png','on','Ajay@123','18','1');
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_wishlist'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_wishlist" (
  "wishlist_id" int(10) unsigned NOT NULL auto_increment,
  "user_id" int(10) unsigned default NULL,
  "workpost_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("wishlist_id")
) AUTO_INCREMENT=35;



#
# Dumping data for table 'tbl_wishlist'
#

LOCK TABLES "tbl_wishlist" WRITE;
/*!40000 ALTER TABLE "tbl_wishlist" DISABLE KEYS;*/
REPLACE INTO "tbl_wishlist" ("wishlist_id", "user_id", "workpost_id") VALUES
	('34','1','8');
/*!40000 ALTER TABLE "tbl_wishlist" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_worker'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_worker" (
  "worker_id" int(50) NOT NULL auto_increment,
  "worker_name" varchar(50) default NULL,
  "worker_contact" varchar(50) default NULL,
  "worker_email" varchar(50) default NULL,
  "worker_address" varchar(50) default NULL,
  "worker_proof" varchar(200) default NULL,
  "worker_doj" varchar(100) default NULL,
  "worker_photo" varchar(50) default NULL,
  "worker_dob" varchar(50) default NULL,
  "worker_password" varchar(50) default NULL,
  "place_id" int(10) unsigned default NULL,
  "workertype_id" int(10) unsigned default NULL,
  "worker_isactive" varchar(50) default '0',
  PRIMARY KEY  ("worker_id")
) AUTO_INCREMENT=12;



#
# Dumping data for table 'tbl_worker'
#

LOCK TABLES "tbl_worker" WRITE;
/*!40000 ALTER TABLE "tbl_worker" DISABLE KEYS;*/
REPLACE INTO "tbl_worker" ("worker_id", "worker_name", "worker_contact", "worker_email", "worker_address", "worker_proof", "worker_doj", "worker_photo", "worker_dob", "worker_password", "place_id", "workertype_id", "worker_isactive") VALUES
	(3,'Ron john','9354772213','ron@gmail.com','kottayam','2000','2024-01-05','WorkerPhoto_1191.png','10021995','Ron*2362','4','2','');
REPLACE INTO "tbl_worker" ("worker_id", "worker_name", "worker_contact", "worker_email", "worker_address", "worker_proof", "worker_doj", "worker_photo", "worker_dob", "worker_password", "place_id", "workertype_id", "worker_isactive") VALUES
	(4,'Sam','9354772213','ron@gmail.com','dsdafsgy','3300','2024-01-11','WorkerPhoto_1300.png','10021996','Samqwe*456','4','2','');
REPLACE INTO "tbl_worker" ("worker_id", "worker_name", "worker_contact", "worker_email", "worker_address", "worker_proof", "worker_doj", "worker_photo", "worker_dob", "worker_password", "place_id", "workertype_id", "worker_isactive") VALUES
	(7,'Kiran','9632748163','sddg@mail.com','qwqe','WorkerProof_1923.png','2024-01-11','WorkerPhoto_1303.png','10021995','Kirankk*1995','5','1','1');
REPLACE INTO "tbl_worker" ("worker_id", "worker_name", "worker_contact", "worker_email", "worker_address", "worker_proof", "worker_doj", "worker_photo", "worker_dob", "worker_password", "place_id", "workertype_id", "worker_isactive") VALUES
	(8,'Ram','9473462874','ram@gmail.com','muvattupuzha','WorkerProof_1757.png','2024-01-12','WorkerPhoto_1855.png','12041998','Ramram@1234','4','1','1');
REPLACE INTO "tbl_worker" ("worker_id", "worker_name", "worker_contact", "worker_email", "worker_address", "worker_proof", "worker_doj", "worker_photo", "worker_dob", "worker_password", "place_id", "workertype_id", "worker_isactive") VALUES
	(9,'Vishnu','9446243962','vishnu@gmail.com','Keezhilam
Ernakulam','WorkerProof_1414.png','2024-01-17','WorkerPhoto_2089.png','11091990','Vishnu@2001','5','2','0');
REPLACE INTO "tbl_worker" ("worker_id", "worker_name", "worker_contact", "worker_email", "worker_address", "worker_proof", "worker_doj", "worker_photo", "worker_dob", "worker_password", "place_id", "workertype_id", "worker_isactive") VALUES
	(10,'Abhys','8325378922','abhi@gmail.com','dgg','WorkerProof_2099.png','2024-02-02','WorkerPhoto_1619.png','20081778','Abhi@123','4','2','2');
REPLACE INTO "tbl_worker" ("worker_id", "worker_name", "worker_contact", "worker_email", "worker_address", "worker_proof", "worker_doj", "worker_photo", "worker_dob", "worker_password", "place_id", "workertype_id", "worker_isactive") VALUES
	(11,'Abhy','8325378927','abhi@gmail.com','vazhakulam','WorkerProof_1821.png','2024-02-15','WorkerPhoto_1777.png','20081778','Abhy@123','18','1','0');
/*!40000 ALTER TABLE "tbl_worker" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_workertype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_workertype" (
  "workertype_id" int(10) unsigned NOT NULL auto_increment,
  "workertype_name" varchar(50) default NULL,
  PRIMARY KEY  ("workertype_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_workertype'
#

LOCK TABLES "tbl_workertype" WRITE;
/*!40000 ALTER TABLE "tbl_workertype" DISABLE KEYS;*/
REPLACE INTO "tbl_workertype" ("workertype_id", "workertype_name") VALUES
	('1','Painter');
REPLACE INTO "tbl_workertype" ("workertype_id", "workertype_name") VALUES
	('2','Electrician');
REPLACE INTO "tbl_workertype" ("workertype_id", "workertype_name") VALUES
	('3','Carpenter');
REPLACE INTO "tbl_workertype" ("workertype_id", "workertype_name") VALUES
	('4','Plumber');
REPLACE INTO "tbl_workertype" ("workertype_id", "workertype_name") VALUES
	('5','Mechanic');
REPLACE INTO "tbl_workertype" ("workertype_id", "workertype_name") VALUES
	('6','House Cleaning');
REPLACE INTO "tbl_workertype" ("workertype_id", "workertype_name") VALUES
	('7','Gardener');
/*!40000 ALTER TABLE "tbl_workertype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_workpost'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_workpost" (
  "workpost_id" int(100) NOT NULL auto_increment,
  "workpost_image" varchar(100) default NULL,
  "workpost_details" varchar(200) default NULL,
  "workpost_duration" varchar(100) default NULL,
  "workpost_date" date default NULL,
  "worker_id" int(100) unsigned default NULL,
  PRIMARY KEY  ("workpost_id")
) AUTO_INCREMENT=13;



#
# Dumping data for table 'tbl_workpost'
#

LOCK TABLES "tbl_workpost" WRITE;
/*!40000 ALTER TABLE "tbl_workpost" DISABLE KEYS;*/
REPLACE INTO "tbl_workpost" ("workpost_id", "workpost_image", "workpost_details", "workpost_duration", "workpost_date", "worker_id") VALUES
	(5,'WorkPhoto_1188.png',NULL,'2 weeks','2024-01-24','8');
REPLACE INTO "tbl_workpost" ("workpost_id", "workpost_image", "workpost_details", "workpost_duration", "workpost_date", "worker_id") VALUES
	(7,'WorkPhoto_1159.png',NULL,'10 days','2024-02-01','8');
REPLACE INTO "tbl_workpost" ("workpost_id", "workpost_image", "workpost_details", "workpost_duration", "workpost_date", "worker_id") VALUES
	(8,'WorkPhoto_1322.png',NULL,'5 days','2024-02-02','8');
REPLACE INTO "tbl_workpost" ("workpost_id", "workpost_image", "workpost_details", "workpost_duration", "workpost_date", "worker_id") VALUES
	(10,'WorkPhoto_1572.png','PAINTING','10 days','2024-03-01','8');
REPLACE INTO "tbl_workpost" ("workpost_id", "workpost_image", "workpost_details", "workpost_duration", "workpost_date", "worker_id") VALUES
	(11,'WorkPhoto_1137.png','gate painting','2 weeks','2024-03-01','11');
REPLACE INTO "tbl_workpost" ("workpost_id", "workpost_image", "workpost_details", "workpost_duration", "workpost_date", "worker_id") VALUES
	(12,'WorkPhoto_1982.png','house painting','5 days','2024-03-01','11');
/*!40000 ALTER TABLE "tbl_workpost" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_workpostgallery'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_workpostgallery" (
  "workpostgallery_id" int(100) NOT NULL auto_increment,
  "gallery_image" varchar(100) default NULL,
  "workpost_id" int(100) default NULL,
  PRIMARY KEY  ("workpostgallery_id")
) AUTO_INCREMENT=23;



#
# Dumping data for table 'tbl_workpostgallery'
#

LOCK TABLES "tbl_workpostgallery" WRITE;
/*!40000 ALTER TABLE "tbl_workpostgallery" DISABLE KEYS;*/
REPLACE INTO "tbl_workpostgallery" ("workpostgallery_id", "gallery_image", "workpost_id") VALUES
	(4,'WorkGallery_1415.png',2);
REPLACE INTO "tbl_workpostgallery" ("workpostgallery_id", "gallery_image", "workpost_id") VALUES
	(5,'WorkGallery_1529.png',2);
REPLACE INTO "tbl_workpostgallery" ("workpostgallery_id", "gallery_image", "workpost_id") VALUES
	(7,'WorkGallery_999.png',2);
REPLACE INTO "tbl_workpostgallery" ("workpostgallery_id", "gallery_image", "workpost_id") VALUES
	(8,'WorkGallery_1373.png',2);
REPLACE INTO "tbl_workpostgallery" ("workpostgallery_id", "gallery_image", "workpost_id") VALUES
	(9,'WorkGallery_1035.png',2);
REPLACE INTO "tbl_workpostgallery" ("workpostgallery_id", "gallery_image", "workpost_id") VALUES
	(19,'WorkGallery_1601.png',5);
REPLACE INTO "tbl_workpostgallery" ("workpostgallery_id", "gallery_image", "workpost_id") VALUES
	(21,'WorkGallery_1378.png',7);
REPLACE INTO "tbl_workpostgallery" ("workpostgallery_id", "gallery_image", "workpost_id") VALUES
	(22,'WorkGallery_1671.png',7);
/*!40000 ALTER TABLE "tbl_workpostgallery" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_workpostrequest'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_workpostrequest" (
  "request_id" int(100) unsigned NOT NULL auto_increment,
  "workpost_id" int(100) unsigned default NULL,
  "user_id" int(100) default NULL,
  "request_details" varchar(100) default NULL,
  "address" varchar(100) default NULL,
  "worker_contact_1" varchar(100) default NULL,
  "request_date" date default NULL,
  "work_date" varchar(100) default NULL,
  "request_amount" varchar(100) default NULL,
  "request_remarks" varchar(100) default NULL,
  "request_status" varchar(100) default '0',
  PRIMARY KEY  ("request_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_workpostrequest'
#

LOCK TABLES "tbl_workpostrequest" WRITE;
/*!40000 ALTER TABLE "tbl_workpostrequest" DISABLE KEYS;*/
REPLACE INTO "tbl_workpostrequest" ("request_id", "workpost_id", "user_id", "request_details", "address", "worker_contact_1", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	('1','5',1,'house painting','vazhakulam',NULL,'2024-05-14','16-11-2022',NULL,NULL,NULL);
REPLACE INTO "tbl_workpostrequest" ("request_id", "workpost_id", "user_id", "request_details", "address", "worker_contact_1", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	('2','7',1,'house whitewashing','vazhakulam',NULL,'2024-05-14','22-05-2023',NULL,NULL,'0');
REPLACE INTO "tbl_workpostrequest" ("request_id", "workpost_id", "user_id", "request_details", "address", "worker_contact_1", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	('3','8',3,'Villa painting','Kalady
',NULL,'2024-05-14','13-09-2023','1500','aaa','7');
REPLACE INTO "tbl_workpostrequest" ("request_id", "workpost_id", "user_id", "request_details", "address", "worker_contact_1", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	('4','10',2,'Furniture polishing','Perumbavoor',NULL,'2024-05-14','11-07-2021','500','sagdau','5');
REPLACE INTO "tbl_workpostrequest" ("request_id", "workpost_id", "user_id", "request_details", "address", "worker_contact_1", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	('5','7',1,'Fence painting','muvatuppuzha','94664893','2024-05-14','17-07-2020','45000','abcdghshjsd','7');
REPLACE INTO "tbl_workpostrequest" ("request_id", "workpost_id", "user_id", "request_details", "address", "worker_contact_1", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	('6','10',1,'Roof painting','Kothamangalam',NULL,'2024-05-14','09-06-2023',NULL,NULL,'2');
REPLACE INTO "tbl_workpostrequest" ("request_id", "workpost_id", "user_id", "request_details", "address", "worker_contact_1", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	('7','8',1,'House painting','Perumbavoor',NULL,'2024-05-14','20-07-2020',NULL,NULL,'2');
REPLACE INTO "tbl_workpostrequest" ("request_id", "workpost_id", "user_id", "request_details", "address", "worker_contact_1", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	('8','5',1,'abcdefg','Mannoor',NULL,'2024-05-18','19-04-2021',NULL,NULL,'0');
/*!40000 ALTER TABLE "tbl_workpostrequest" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_workrequest'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_workrequest" (
  "workrequest_id" int(50) NOT NULL auto_increment,
  "worker_id" int(50) default NULL,
  "user_id" int(100) default NULL,
  "request_details" varchar(100) default NULL,
  "address" varchar(100) default NULL,
  "request_date" date default NULL,
  "work_date" varchar(100) default NULL,
  "request_amount" varchar(100) default NULL,
  "request_remarks" varchar(100) default NULL,
  "request_status" varchar(100) default '0',
  PRIMARY KEY  ("workrequest_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_workrequest'
#

LOCK TABLES "tbl_workrequest" WRITE;
/*!40000 ALTER TABLE "tbl_workrequest" DISABLE KEYS;*/
REPLACE INTO "tbl_workrequest" ("workrequest_id", "worker_id", "user_id", "request_details", "address", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	(1,NULL,NULL,'Need roof painting',NULL,'2024-03-04','null',NULL,NULL,'0');
REPLACE INTO "tbl_workrequest" ("workrequest_id", "worker_id", "user_id", "request_details", "address", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	(2,8,1,'Need gate painting',NULL,'2024-03-04','null','700','defhybdx','7');
REPLACE INTO "tbl_workrequest" ("workrequest_id", "worker_id", "user_id", "request_details", "address", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	(3,11,1,'Need gate painting',NULL,'2024-03-04','null','37000','xyzabc','4');
REPLACE INTO "tbl_workrequest" ("workrequest_id", "worker_id", "user_id", "request_details", "address", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	(5,8,1,'door furnishing',NULL,'2024-05-12','13-09-2022','600','abcd','7');
REPLACE INTO "tbl_workrequest" ("workrequest_id", "worker_id", "user_id", "request_details", "address", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	(6,8,1,'Roof painting',NULL,'2024-05-14','13-07-2020','1500','abdhjxns','5');
REPLACE INTO "tbl_workrequest" ("workrequest_id", "worker_id", "user_id", "request_details", "address", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	(7,8,1,'abc','null','2024-05-14','20-11-2020','1200','qbfhjdk','7');
REPLACE INTO "tbl_workrequest" ("workrequest_id", "worker_id", "user_id", "request_details", "address", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	(8,8,1,'abcd','Perumbavoor','2024-05-14','23-04-2020','500','xyz','7');
REPLACE INTO "tbl_workrequest" ("workrequest_id", "worker_id", "user_id", "request_details", "address", "request_date", "work_date", "request_amount", "request_remarks", "request_status") VALUES
	(9,8,1,'abvdhsghdg','muvatuppuzha','2024-05-20','20-09-2022','600','bsdhdasbxja','7');
/*!40000 ALTER TABLE "tbl_workrequest" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
