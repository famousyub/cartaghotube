-- MySQL Workbench Synchronization
-- Generated: 2017-10-05 11:15
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Daniel

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `videos` 
CHANGE COLUMN `type` `type` ENUM('audio', 'video', 'embed') NOT NULL DEFAULT 'video' ,
ADD COLUMN `videoLink` VARCHAR(255) NULL DEFAULT NULL AFTER `youtubeId`;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


UPDATE configurations SET  version = '4.2', modified = now() WHERE id = 1;