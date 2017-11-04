DROP DATABASE IF EXISTS `chat`;
CREATE DATABASE `chat`;

USE `chat`;

CREATE TABLE `messages` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `room` VARCHAR(25),
  `usernames` VARCHAR(25),
  `text` VARCHAR(255),
  PRIMARY KEY (`id`)
  -- FOREIGN KEY (`room`) REFERENCES `rooms` (`id`),
  -- FOREIGN KEY (`user id`) REFERENCES `usernames` (`id`)
);

-- CREATE TABLE `rooms` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `roomname` VARCHAR(25),
--   PRIMARY KEY (`id`)
-- );
--
-- CREATE TABLE `usernames` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `username` VARCHAR(25),
--   PRIMARY KEY (`id`)
-- );
-- ALTER TABLE `messages` ADD FOREIGN KEY (`room`) REFERENCES `rooms` (`id`);
-- ALTER TABLE `messages` ADD FOREIGN KEY (`username`) REFERENCES `usernames` (`id`);
/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/


/*
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'rooms'
--
-- ---

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'messages'
--
-- ---

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `room` INTEGER NULL DEFAULT NULL,
  `username` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'usernames'
--
-- ---

DROP TABLE IF EXISTS `usernames`;

CREATE TABLE `usernames` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (room) REFERENCES `rooms` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (username) REFERENCES `usernames` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `usernames` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `rooms` (`id`) VALUES
-- ('');
-- INSERT INTO `messages` (`id`,`room`,`username`) VALUES
-- ('','','');
-- INSERT INTO `usernames` (`id`) VALUES
-- ('');
*/
