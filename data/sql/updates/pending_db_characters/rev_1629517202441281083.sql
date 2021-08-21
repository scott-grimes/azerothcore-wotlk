INSERT INTO `version_db_characters` (`sql_rev`) VALUES ('1629517202441281083');

CREATE TABLE `pending_transfers` (
  `uuid` VARCHAR(36) NOT NULL,
  `account` INT UNSIGNED,
  `name` VARCHAR(12),
  `date_requested` DATETIME,
  `pdump_base64` BLOB,
  `external_server_id` INT NOT NULL,
  PRIMARY KEY (`uuid`));

CREATE TABLE `rejected_transfers` (
  `uuid` VARCHAR(36) NOT NULL,
  `account` INT UNSIGNED,
  `name` VARCHAR(12),
  `date_rejected` DATETIME,
  `reject_reason` VARCHAR(128),
  `external_server_id` INT NOT NULL,
  PRIMARY KEY (`uuid`));

CREATE TABLE `completed_transfers` (
  `guid` INT UNSIGNED,
  `uuid` VARCHAR(36) NOT NULL,
  `external_server_id` INT NOT NULL,
  PRIMARY KEY (`guid`));

CREATE TABLE `character_ac_uuid` (
  `guid` INT UNSIGNED,
  `uuid` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`guid`));
