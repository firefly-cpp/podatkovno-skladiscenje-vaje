-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema podatkovno-skladiscenje
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema podatkovno-skladiscenje
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `podatkovno-skladiscenje` DEFAULT CHARACTER SET utf8 ;
USE `podatkovno-skladiscenje` ;

-- -----------------------------------------------------
-- Table `podatkovno-skladiscenje`.`Time`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `podatkovno-skladiscenje`.`Time` (
  `id` INT NOT NULL,
  `decade` INT NULL,
  `year` INT NULL,
  `quarter` INT NULL,
  `month` INT NULL,
  `day` INT NULL,
  `hour` INT NULL,
  `minute` INT NULL,
  `second` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `podatkovno-skladiscenje`.`Location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `podatkovno-skladiscenje`.`Location` (
  `id` INT NOT NULL,
  `continent` VARCHAR(100) NULL,
  `country` VARCHAR(100) NULL,
  `region` VARCHAR(100) NULL,
  `city` VARCHAR(100) NULL,
  `street` VARCHAR(100) NULL,
  `street_number` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `podatkovno-skladiscenje`.`FactTable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `podatkovno-skladiscenje`.`FactTable` (
  `id` INT NOT NULL,
  `quantity` INT NULL,
  `revenue` DOUBLE NULL,
  `discount` DOUBLE NULL,
  `payment_method` VARCHAR(100) NULL,
  `Time_id` INT NOT NULL,
  `Location_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_FactTable_Time_idx` (`Time_id` ASC),
  INDEX `fk_FactTable_Location1_idx` (`Location_id` ASC),
  CONSTRAINT `fk_FactTable_Time`
    FOREIGN KEY (`Time_id`)
    REFERENCES `podatkovno-skladiscenje`.`Time` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FactTable_Location1`
    FOREIGN KEY (`Location_id`)
    REFERENCES `podatkovno-skladiscenje`.`Location` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
