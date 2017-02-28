INSERT INTO `migrations` VALUES ('20170218171008');

UPDATE `fishing_loot_template` SET `maxcount` = 1 WHERE `entry` = 440 AND NOT `item` IN (3820, 21151);
