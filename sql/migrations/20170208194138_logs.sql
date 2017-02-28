INSERT INTO `migrations` VALUES ('20170208194138'); 

-- Smartlogs database
DROP TABLE IF EXISTS `smartlog_creature`;
CREATE TABLE `smartlog_creature` (
  `time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` ENUM('Death','LongCombat','ScriptInfo','') NOT NULL DEFAULT '',
  `entry` INT(11) NOT NULL DEFAULT '0',
  `guid` INT(11) NOT NULL DEFAULT '0',
  `specifier` VARCHAR(255) NOT NULL DEFAULT '',
  `combatTime` INT(11) NOT NULL DEFAULT '0',  
  `content` VARCHAR(255) NOT NULL DEFAULT '',
  KEY `entry` (`entry`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
