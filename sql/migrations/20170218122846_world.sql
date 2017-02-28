INSERT INTO `migrations` VALUES ('20170218122846');

-- Make Eranikus, Tyrant of the Dream obtainable at neutral rep
UPDATE `quest_template` SET `RequiredMinRepValue` = 0 WHERE `entry` = 8733;

-- Add Malfurion Script, set as Boss
UPDATE `creature_template` SET `ScriptName` = "npc_malfurion_stormrage", `rank` = 3 WHERE `entry` = 15362;
