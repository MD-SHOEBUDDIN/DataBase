/* creating database product catalog management*/
DROP DATABASE IF EXISTS `product catalog management`;
CREATE DATABASE `product catalog management`; 
USE `product catalog management`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

/* creating ProductCategory Table */
CREATE TABLE `ProductCategory` (
`id` tinyint(0) NOT NULL AUTO_INCREMENT,
  `category_name` char(20) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB;
INSERT INTO `ProductCategory` VALUES (1,'menswear');
INSERT INTO `ProductCategory` VALUES (2,'Kidswear');
INSERT INTO `ProductCategory` VALUES (3,'electronicdevice');
INSERT INTO `ProductCategory` VALUES (4,'software');
INSERT INTO `ProductCategory` VALUES (5,'appliances');
INSERT INTO `ProductCategory` VALUES (6,'grocery');
INSERT INTO `ProductCategory` VALUES (7,'mobiles');
INSERT INTO `ProductCategory` VALUES (8,'earphones');
INSERT INTO `ProductCategory` VALUES (9,'watches');
INSERT INTO `ProductCategory` VALUES (10,'grooming');

/* creating Product Table */
CREATE TABLE `Product` (
`id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `Caregory_id` tinyint(8) NOT NULL,
  `cost` decimal(9,2) NOT NULL, 
  PRIMARY KEY (`id`),
  FOREIGN KEY (`Caregory_id`) REFERENCES `ProductCategory`(`id`)
)ENGINE=InnoDB;
INSERT INTO `Product` VALUES (1,'Tshirt',1,1000);
INSERT INTO `Product` VALUES (2,'Shirt',2, 1500);
INSERT INTO `Product` VALUES (3,'Mac',3,130000);
INSERT INTO `Product` VALUES (4,'MS office',4,5000);
INSERT INTO `Product` VALUES (5,'Jacket',1,1000);
INSERT INTO `Product` VALUES (6,'Chips',6,100);
INSERT INTO `Product` VALUES (7,'Iphone',7,100000);
INSERT INTO `Product` VALUES (8,'boat',3,1500);
INSERT INTO `Product` VALUES (9,'Rolex',9,250000);
INSERT INTO `Product` VALUES (10,'Blazer',2,3000);

/* creating Invoice Table */
CREATE TABLE `Invoice` (
`id` tinyint(8) NOT NULL AUTO_INCREMENT,
  `invoice_number` char(20) NOT NULL,
  `invoice_date` date NOT NULL,
  `product_id` tinyint(8) NOT NULL,
  `quantity` tinyint(4),
  PRIMARY KEY (`id`),
  `amount` decimal(9,2) NOT NULL,
  FOREIGN KEY (`product_id`) REFERENCES `Product`(`id`)
)ENGINE=InnoDB;
INSERT INTO `Invoice` VALUES (1,'NV-22-04-001','2022-04-01',1,2,2000);
INSERT INTO `Invoice` VALUES (2,'NV-21-12-012','2022-04-02', 1,4,4000);
INSERT INTO `Invoice` VALUES (3,'NV-21-12-055','2022-04-03',2,2,3000);
INSERT INTO `Invoice` VALUES (4,'NV-21-12-075','2022-04-04',3,1,130000);
INSERT INTO `Invoice` VALUES (5,'NV-21-12-089','2022-04-05',5,2,2000);
INSERT INTO `Invoice` VALUES (6,'NV-21-12-014','2022-04-02',7,1,100000);
INSERT INTO `Invoice` VALUES (7,'NV-21-12-010','2022-04-02',8,2,3000);
INSERT INTO `Invoice` VALUES (8,'NV-21-12-011','2022-04-06',1,1,1000);
INSERT INTO `Invoice` VALUES (9,'NV-21-12-095','2022-04-08',10,2,6000);
INSERT INTO `Invoice` VALUES (10,'NV-21-12-087','2022-04-01',8,1,1500);


