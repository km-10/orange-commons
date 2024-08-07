USE main_db;

CREATE TABLE IF NOT EXISTS `room` (
  `room_size` VARCHAR(10) NOT NULL,
  `value` INT NOT NULL,
  PRIMARY KEY (`room_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE IF NOT EXISTS `thread_type` (
  `thread_type` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`thread_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE IF NOT EXISTS `thread` (
  `thread_id` INT AUTO_INCREMENT,
  `title` VARCHAR(30) NOT NULL,
  `overview` VARCHAR(200) NOT NULL,
  `room_size` VARCHAR(10) NOT NULL,
  `current_NoP` INT NOT NULL,
  `thread_type` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`thread_id`),
  FOREIGN KEY (`room_size`) REFERENCES `room` (`room_size`)
    ON DELETE RESTRICT ON UPDATE RESTRICT,
  FOREIGN KEY (`thread_type`) REFERENCES `thread_type` (`thread_type`)
    ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE IF NOT EXISTS `department` (
  `department` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `student_id` VARCHAR(11) NOT NULL UNIQUE,
  `user_name` VARCHAR(30) NOT NULL,
  `department` VARCHAR(20) NOT NULL,
  `grade` INT NOT NULL,
  `created` DATETIME,
  `updated` DATETIME,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (`department`) REFERENCES `department` (`department`)
    ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` INT AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `body` VARCHAR(200) NOT NULL,
  `post_date` DATETIME NOT NULL,
  `thread_id` INT NOT NULL,
  PRIMARY KEY (`comment_id`),
  FOREIGN KEY (`thread_id`) REFERENCES `thread` (`thread_id`)
    ON DELETE RESTRICT ON UPDATE RESTRICT,
  FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
    ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE IF NOT EXISTS `class_info` (
  `class_id` VARCHAR(20) NOT NULL,
  `fiscal_year` INT NOT NULL,
  `semester` VARCHAR(10) NOT NULL,
  `day` VARCHAR(4) NOT NULL,
  `class_time` INT NOT NULL,
  `class_name` VARCHAR(30) NOT NULL,
  `class_name_alpha` VARCHAR(10),
  `department` VARCHAR(20) NOT NULL,
  `teacher_name` VARCHAR(30) NOT NULL,
  `grade` INT NOT NULL,
  PRIMARY KEY (`class_id`),
  FOREIGN KEY (`department`) REFERENCES `department` (`department`)
    ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE IF NOT EXISTS `tag` (
  `tag` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE IF NOT EXISTS `serv_info` (
  `serv_id` VARCHAR(10) NOT NULL,
  `tag` VARCHAR(20) NOT NULL,
  `title` VARCHAR(30) NOT NULL,
  `url` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`serv_id`),
  FOREIGN KEY (`tag`) REFERENCES `tag` (`tag`)
    ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE `accounts` (
  `account_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `mail_address` VARCHAR(255) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  CONSTRAINT PRIMARY KEY (`account_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
    ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;