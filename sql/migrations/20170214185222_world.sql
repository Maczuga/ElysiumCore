INSERT INTO `migrations` VALUES ('20170214185222');

-- Set required reputation to neutral (0) for Anachronos quest
UPDATE `quest_template` SET `RequiredMinRepValue` = 0 WHERE `entry` = 8303;
