INSERT INTO `version_db_auth` (`sql_rev`) VALUES ('1629517202441281083');

CREATE TABLE `realm_transfer_secrets` (
  `realm_id` INT NOT NULL,
  `ed25519_private_base64` VARCHAR(34),
  `ed25519_public_hex` VARCHAR(64),
  PRIMARY KEY (`realm_id`));

CREATE TABLE `trusted_external_realms` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(32),
  `ed25519_public_hex` VARCHAR(64),
  PRIMARY KEY (`id`));
