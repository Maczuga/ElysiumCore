-- Increase Skeram health from 467509, add disarm immunity
UPDATE `creature_template` SET `minhealth` = 556509, `maxhealth` = 556509, `mechanic_immune_mask` = `mechanic_immune_mask` | 4 WHERE `entry` = 15263;

INSERT INTO `migrations` VALUES ('20170208184757');
