
-- Update Willix the Importer to make sure he's not killed on instance gen
UPDATE `creature_template` SET `npcflag` = 3, `unit_flags` = 576, `flags_extra` = 3 WHERE `entry` = 4508;

REPLACE INTO `creature` VALUES
(87445, 4508,   47, 7155,   0,  2197.13,    1783.8, 65.57,  2.1118, 7200,   0,  0,  1900,   0,  0,  0,  0);

INSERT INTO `migrations` VALUES ('20170210221258');
