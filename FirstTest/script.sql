
create table `product` (
	`product_id` varchar (150),
	`product_name` varchar (300),
	`product_desc` varchar (1500),
	`product_status` varchar (30),
	`created_date` datetime ,
	`created_by` varchar (300),
	`modified_date` datetime ,
	`modified_by` varchar (300)
); 
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0001','COLDDRINK','COLDDRINK','AC',NULL,'manzoor','2018-03-23 06:30:07','');
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0002','BURGER','BURGER','AC','2018-03-23 06:29:38','manzoor',NULL,NULL);
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0003','SANDWISH','SANDWISH','AC','2018-03-23 06:33:45','manzoor',NULL,NULL);
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0004','BIRYANI','BIRYANI','AC','2018-03-25 05:29:12','manzoor',NULL,NULL);
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0005','ICECREAM','ICECREAM','AC',NULL,NULL,'2018-03-27 01:34:24','manzoor');
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','BBQ','BBQ','AC','2018-03-25 08:31:23','manzoor',NULL,NULL);
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0007','SALAN','SALAN','AC','2018-03-25 08:37:37','manzoor',NULL,NULL);
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0008','RICE','RICE','AC','2018-03-25 08:45:57','manzoor',NULL,NULL);
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0009','SPECIAL','SPECIAL','AC','2018-03-27 01:17:57','manzoor',NULL,NULL);
insert into `product` (`product_id`, `product_name`, `product_desc`, `product_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0010','PIZZA','PIZZA','AC','2018-04-18 08:02:56','manzoor',NULL,NULL);


---product detail---
/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 5.5.59 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `product_detail` (
	`product_id` varchar (150),
	`pd_id` varchar (150),
	`pd_name` varchar (300),
	`pd_price` varchar (30),
	`pd_status` varchar (30),
	`created_date` datetime ,
	`created_by` varchar (300),
	`modified_date` datetime ,
	`modified_by` varchar (300)
); 
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0001','0001','PEPSI','120','AC','2018-03-25 05:27:58','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0001','0002','COCO COLA','100','AC','2018-03-25 05:28:16','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0001','0003','DUE','100','AC','2018-03-25 05:28:30','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0001','0004','PAKISTANI RICE','900','AC','2018-03-25 08:47:41','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0002','0001','ZINGER','120','AC','2018-03-24 23:21:08','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0002','0002','BIG ZINER','400','AC','2018-03-24 23:21:49','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0002','0003','SMALL ZINGER','250','AC','2018-03-24 23:22:11','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0003','0001','CHICKEN SANDWISH','120','AC',NULL,NULL,'2018-03-25 05:26:26','manzoor');
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0003','0002','BEEF SANDWISH','150','AC','2018-03-25 05:26:51','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0003','0003','VEG SANDWISH','100','AC','2018-03-25 05:27:12','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0004','0001','CHICKEN BIRYANI','120','AC','2018-03-25 05:41:47','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0004','0002','BEEF BIRYANI','200','AC','2018-03-25 05:30:26','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0004','0003','SPECIAL BIRYANI','150','AC','2018-03-25 05:30:50','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0005','0001','CREAM','120','AC','2018-03-25 05:39:58','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0005','0002','KULFA','60','AC','2018-03-25 05:40:13','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0005','0003','FALODA ICE CREAM','150','AC','2018-03-25 06:14:51','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','0001','CHICKEN TIKKA','120','AC','2018-03-25 08:32:00','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','00010','SAUSAGES','1500','AC','2018-03-26 22:23:04','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','00011','SAUSAGES','1500','AC','2018-03-26 22:21:46','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','0002','BEEF TIKKA','200','AC','2018-03-25 08:32:34','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','0003','ROLL','100','AC','2018-03-25 08:32:53','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','0004','CHICKEN ROLL','100','AC','2018-03-25 08:33:12','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','0005','BEEF ROLL','150','AC','2018-03-25 08:33:29','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','0006','SPECIAL ROLL','300','AC','2018-03-25 08:35:29','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0006','0007','HALEEM','160','AC','2018-03-26 22:18:31','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0007','0001','CHICKEN HANDI','600','AC',NULL,NULL,'2018-03-25 08:38:27','');
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0007','0002','BEEF HANDI','800','AC','2018-03-25 08:38:48','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0007','0003','CHICKEN KARAI','600','AC','2018-03-25 08:39:06','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0007','0004','BEEF KARAI','1200','AC','2018-03-25 08:39:39','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0007','0005','MATON KARAI','3000','AC','2018-03-25 08:40:22','',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0008','0001','CHINISE RICE','1200','AC','2018-03-25 08:50:02','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0008','0002','PAKISTANI','1300','AC','2018-03-25 08:50:17','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0008','0003','MUTTON RICE','1500','AC','2018-03-25 08:52:07','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0008','0004','BEEF RICE','1200','AC','2018-03-25 08:52:38','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0008','0005','ITALIAN RICE','700','AC','2018-03-25 08:53:07','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0008','0006','AFGHANI RICE','1000','AC',NULL,NULL,'2018-03-25 08:54:16','manzoor');
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0009','0001','SPECIAL BREAD','100','AC','2018-03-27 01:18:28','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0009','0002','SPECIAL RICE','150','AC','2018-03-27 01:19:25','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0009','0003','SPECIAL DRINK','500','AC','2018-03-27 01:20:06','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0010','0001','LARGE PIZZA','1200','AC','2018-04-18 08:03:30','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0010','0002','MEDIUM PIZZA','600','AC','2018-04-18 08:03:54','manzoor',NULL,NULL);
insert into `product_detail` (`product_id`, `pd_id`, `pd_name`, `pd_price`, `pd_status`, `created_date`, `created_by`, `modified_date`, `modified_by`) values('0010','0003','SMALL PIZZA','250','AC','2018-04-18 08:05:11','manzoor',NULL,NULL);


----Product Bill---

create table `product_bill` (
	`bill_id` varchar (150),
	`customer_name` varchar (600),
	`bill_amount` varchar (150),
	`bill_item` varchar (3000),
	`bill_desc` varchar (3000),
	`created_date` timestamp ,
	`created_by` varchar (300),
	`modified_date` timestamp ,
	`modified_by` varchar (300)
); 
