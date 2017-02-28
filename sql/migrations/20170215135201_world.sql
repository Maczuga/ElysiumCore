INSERT INTO `migrations` VALUES ('20170215135201'); 

-- Battleground (typo)
UPDATE `mangos_string` SET `content_default` = 'Your group has players from different battleground brackets. You can\'t join as group.' WHERE `entry` = 729;
