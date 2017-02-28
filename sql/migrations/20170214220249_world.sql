INSERT INTO `migrations` VALUES ('20170214220249');

-- Make Anachronos' neutral rep Ring quests mutally exclusive
UPDATE `quest_template` SET `ExclusiveGroup` = 8757 WHERE `entry` = 8757;
UPDATE `quest_template` SET `ExclusiveGroup` = 8757 WHERE `entry` = 8747;
UPDATE `quest_template` SET `ExclusiveGroup` = 8757 WHERE `entry` = 8752;
