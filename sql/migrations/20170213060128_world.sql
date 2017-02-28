INSERT INTO `migrations` VALUES ('20170213060128'); 

ALTER TABLE creature_template CHANGE COLUMN mechanic_immune_mask MechanicImmuneMask INT(10) UNSIGNED DEFAULT 0 NOT NULL;
ALTER TABLE creature_template ADD COLUMN SchoolImmuneMask INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER MechanicImmuneMask;