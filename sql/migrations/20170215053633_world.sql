INSERT INTO `migrations` VALUES ('20170215053633'); 

-- Nightmare Dragons
UPDATE `creature_template` SET `SchoolImmuneMask` = 8 WHERE `entry` IN (14887, 14888, 14889, 14890);
UPDATE `creature` SET `spawnFlags` = `spawnFlags` | 1 WHERE `id` IN (14887, 14888, 14889, 14890);
UPDATE `creature_template` SET `speed_walk` = 0.5, `speed_run` = 0.5 WHERE `entry` = 15224;
UPDATE `gameobject_template` SET `ScriptName` = 'go_putrid_shroom' WHERE `entry` = 180517;

REPLACE INTO `spell_mod` (`Id`, `AttributesEx3`, `Comment`) VALUES 
(25044, 131072, 'Aura of Nature pulse - prevent aggro on silent aura');
REPLACE INTO `spell_mod` (`Id`, `Attributes`, `AttributesEx2`, `Comment`) VALUES 
(24904, 8388608, 1, 'Summon Putrid Mushroom - allow cast on death');

REPLACE INTO `spell_script_target` VALUES (24871, 0, 180517);
