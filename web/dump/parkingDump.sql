

CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_no` int DEFAULT NULL,
  `floor_no` int DEFAULT NULL,
  `parking_no` int DEFAULT NULL,
  `checkinDate` varchar(20) DEFAULT NULL,
  `checkoutDate` varchar(45) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId_booking_user_FK_idx` (`userId`),
  CONSTRAINT `userId_booking_user_FK` FOREIGN KEY (`userId`) REFERENCES `user` (`user_id`)
) 


CREATE TABLE `bulding_floor_map` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bulding_no` varchar(45) DEFAULT NULL,
  `floor_no` int DEFAULT NULL,
  `total_free` int DEFAULT NULL,
  `total_occupied` int DEFAULT '0',
  `parking_created` int DEFAULT NULL,
  `description` varchar(105) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 


CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
)
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `repassword` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `building_no` int DEFAULT NULL,
  `floor_no` int DEFAULT NULL,
  `chekin_date` varchar(45) DEFAULT NULL,
  `checkout_date` varchar(45) DEFAULT NULL,
  `parkingNo` int DEFAULT NULL,
  `regDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
)

CREATE TABLE `user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_user_FK_idx` (`user_id`),
  KEY `role_id_role_FK_idx` (`role_id`),
  CONSTRAINT `role_FK` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `user_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) 
