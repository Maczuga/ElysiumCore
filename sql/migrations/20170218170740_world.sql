INSERT INTO `migrations` VALUES ('20170218170740');

-- Add Boss Icon to Malfurion's portrait
UPDATE `creature_template` SET `type_flags` = 4 WHERE `entry` = 15362;
