INSERT INTO `migrations` VALUES ('20170215142723'); 

-- Nightmare Dragons
UPDATE `creature` SET `spawnFlags` = `spawnFlags` | 32 WHERE `id` IN (14887, 14888, 14889, 14890);

UPDATE `creature_template` SET `faction_A` = 50, `faction_H` = 50, `AIName` = '', 
`mingold` = 0, `maxgold` = 0, `unit_flags` = 33280, 
`MechanicImmuneMask` = 651116543, `flags_extra` = 12610 WHERE `entry` = 15261;

UPDATE `creature_template` SET 
`minhealth` = 1200000, `maxhealth` = 1300000, `minmana` = 0, `maxmana` = 0, 
`speed_walk` = 1, `baseattacktime` = 2000, `rangeattacktime` = 200, `unit_class` = 1,
`unit_flags` = 32832, `resistance2` = 126, `resistance3` = 126, `resistance4` = 126,
`resistance5` = 126, `resistance6` = 126, `MechanicImmuneMask` = 650199039
WHERE `entry` IN (14887, 14888, 14889, 14890);

UPDATE `creature_template` SET 
`mindmg` = 1431, `maxdmg` = 1767, `attackpower` = 738, `dmg_multiplier` = 1.6,
`mingold` = 69955, `maxgold` = 91358 
WHERE `entry` = 14887;

UPDATE `creature_template` SET 
`mindmg` = 2241, `maxdmg` = 2742, `attackpower` = 1150, `dmg_multiplier` = 1.1,
`mingold` = 71655, `maxgold` = 93578 
WHERE `entry` = 14888;

UPDATE `creature_template` SET 
`mindmg` = 1211, `maxdmg` = 1411, `attackpower` = 605, `dmg_multiplier` = 2,
`mingold` = 29155, `maxgold` = 38078 
WHERE `entry` = 14889;

UPDATE `creature_template` SET 
`mindmg` = 1435, `maxdmg` = 1785, `attackpower` = 743, `dmg_multiplier` = 1.8,
`mingold` = 71655, `maxgold` = 93578 
WHERE `entry` = 14890;

UPDATE `creature` SET `curhealth` = 1250000, `curmana` = 0 WHERE `id` IN (14887, 14888, 14889, 14890);

-- Azuregos
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `entry` = 6109;
UPDATE `creature` SET `spawnFlags` = `spawnFlags` | 1 WHERE `id` = 6109;

UPDATE `creature_template` SET 
`resistance2` = 126, `resistance3` = 126, `resistance4` = 300,
`resistance5` = 126, `resistance6` = 300,
`mingold` = 77605, `maxgold` = 101348
WHERE `entry` = 6109;

DELETE FROM `spell_mod` WHERE `Id` IN (23186, 23182);
DELETE FROM `spell_effect_mod` WHERE `Id` IN (23186);

REPLACE INTO `spell_mod` (`Id`, `SpellIconId`, `Comment`) VALUES 
(23182, 1, 'Mark of Frost pulse - prevent overwriting player\'s debuff');
REPLACE INTO `spell_mod` (`Id`, `AttributesEx3`, `Comment`) VALUES 
(23185, 131072, 'Aura of Frost pulse - prevent aggro on silent aura');
REPLACE INTO `spell_effect_mod` (`Id`, `EffectIndex`, `EffectImplicitTargetB`, `Comment`) VALUES
(23183, 0, 15, 'Mark of Frost pulse - force all enemies in area select');
