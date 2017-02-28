INSERT INTO `migrations` VALUES ('20170212230823'); 

-- Nightmare Dragons
DELETE FROM `spell_effect_mod` WHERE `Id` IN (15847, 24819, 24841, 24842, 24843, 24818);
DELETE FROM `spell_mod` WHERE `Id` IN (24819, 25040, 25043);

UPDATE `creature_template` SET `ScriptName` = 'boss_dragon_of_nightmare' WHERE `entry` IN (14887, 14888, 14889, 14890);
UPDATE `creature_template` SET `ScriptName` = 'npc_dream_fog' WHERE `entry` = 15224;
UPDATE `creature_template` SET `ScriptName` = 'npc_shade_of_taerar' WHERE `entry` = 15302;
UPDATE `creature_template` SET `ScriptName` = 'npc_demented_druid' WHERE `entry` = 15260;
UPDATE `creature_template` SET `ScriptName` = 'npc_spirit_shade' WHERE `entry` = 15261;
UPDATE `creature_template` SET `faction_A` = 50, `faction_H` = 50 WHERE `entry` IN (14887, 14888, 14889, 14890);
UPDATE `creature_template` SET `flags_extra` = 8450 WHERE `entry` = 15224;
UPDATE `gameobject_template` SET `data2` = 10 WHERE `entry` = 180517;
UPDATE `creature_model_info` SET `bounding_radius` = 9, `combat_reach` = 10 WHERE `modelid` BETWEEN 15363 AND 15366;

REPLACE INTO `creature_template_addon` VALUES 
(15261, 0, 0, 0, 0, 0, 0, '24809');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15261;

REPLACE INTO `spell_effect_mod` (`Id`, `EffectIndex`, `EffectRadiusIndex`, `Comment`) VALUES
(24811, 0, 12, 'Lethon - Draw Spirit - missing effect radius');
REPLACE INTO `spell_effect_mod` (`Id`, `EffectIndex`, `EffectImplicitTargetB`, `Comment`) VALUES
(24776, 0, 22, 'Summon Player - force summon to caster position');
REPLACE INTO `spell_mod` (`Id`, `SpellIconId`, `Comment`) VALUES 
(25040, 1, 'Mark of Nature pulse - prevent overwriting player\'s debuff');
