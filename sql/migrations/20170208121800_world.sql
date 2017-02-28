INSERT INTO `migrations` VALUES ('20170208121800'); 

-- Lunar Festival
UPDATE `quest_template` SET 
`ReqCreatureOrGOId1` = -180868, `ReqCreatureOrGOId2` = -180869, 
`ReqCreatureOrGOCount1` = 8, `ReqCreatureOrGOCount2` = 2,
`RewRepFaction1` = 609, `RewRepValue1` = 50
WHERE `entry` = 8867;

UPDATE `quest_template` SET `RewMailTemplateId` = 135 WHERE `entry` IN 
(8863, 8864, 8865, 8862, 8876, 8879, 8880, 8877, 8878, 8881, 8882, 8868);

REPLACE INTO `mail_loot_template` VALUES ('135', '21746', '100', '0', '1', '1', '0');
