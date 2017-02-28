-- 1.6

-- Zanza's Potent Potables
REPLACE INTO `spell_mod` (`Id`, `AttributesEx3`, `Comment`) VALUES 
(24382, 1048576, 'Spirit of Zanza - persist through death (before 1.12)'),
(24417, 1048576, 'Sheen of Zanza - persist through death (before 1.12)'),
(24383, 1048576, 'Swiftness of Zanza - persist through death (before 1.12)');
DELETE FROM `spell_disabled` WHERE `entry` = 24417;

-- spawn of Azuregos, Kazzak 1.3
UPDATE `creature` SET `spawnFlags` = 0 WHERE id IN (6109, 12397);

-- disable unavailable game events
UPDATE `game_event` SET `disabled` = 1 WHERE `entry` IN
(
14, 15, 40,			-- Stranglethorn Fishing Extravaganza 1.7
66,					-- Dragons of Nightmare 1.8
154,		-- Silithus @ 1.9 (unchecked)
155,		-- Argent dawn @ 1.11 (unchecked)
158,		-- 1.10 Patch : Recipes (unchecked)
160,		-- 1.10 Patch : t0.5 Quest Chain (unchecked)
164,		-- Patch 1.7
165,		-- Patch 1.8
166,		-- Patch 1.9
167,		-- Patch 1.10
168 		-- Patch 1.11 ? 1.12
);

-- enable available game events
UPDATE `game_event` SET `disabled` = 0 WHERE `entry` IN
(
4, 5, 100, 101, 	-- DarkMoon Faire 1.6
13,					-- Elemental Invasion 1.5
16, 38, 39,			-- Gurubashi Arena 1.5
18,					-- Call to arms: Alterac Valley 1.5
156, 159,			-- Dire Maul extra content(unchecked) 1.3
35, 36, 37,
42, 43, 44,			-- The Maul 1.3
161,				-- Patch 1.3
162,				-- Patch 1.4 | 1.5
163					-- Patch 1.6
);

-- enable Alterac Valley 1.5
UPDATE `battleground_template` SET `MinLvl` = 51, `MaxLvl` = 60 WHERE `id` = 1;

-- disable unavailable instances
UPDATE `areatrigger_teleport` SET `required_level` = 61 WHERE `target_map` IN 
(
533,    -- Naxxramas 1.12
531,    -- AQ40 (Temple of AQ) 1.9
509,    -- AQ20 (Ruins of AQ) 1.9
309     -- Zul'Gurub 1.7
);

-- enable available instances
UPDATE `areatrigger_teleport` SET `required_level` = 45 WHERE `target_map` = 429;    -- Dire Maul 1.3
UPDATE `areatrigger_teleport` SET `required_level` = 60 WHERE `target_map` = 469;    -- Blackwing Lair 1.6

-- Replacing Old 1.6 Mounts
DELETE FROM npc_vendor WHERE entry IN (3685, 3362, 7952, 4885, 2357, 1460, 384, 4885, 2357, 1460, 1261, 4730, 7955); 
DELETE FROM npc_vendor WHERE item IN (15293, 15292, 12330, 12351, 8586, 13317, 12353, 12353, 12354, 13328, 13329, 12302, 12303, 13326, 13327);

INSERT INTO npc_vendor VALUES
('384', '2411', '0', '0'),
('384', '2414', '0', '0'),
('384', '5655', '0', '0'),
('384', '5656', '0', '0'),
('384', '18776', '0', '0'),
('384', '18777', '0', '0'),
('384', '18778', '0', '0'),
('1261', '5864', '0', '0'),
('1261', '5872', '0', '0'),
('1261', '5873', '0', '0'),
('1261', '18785', '0', '0'),
('1261', '18786', '0', '0'),
('1261', '18787', '0', '0'),
('1460', '2411', '0', '0'),
('1460', '2414', '0', '0'),
('1460', '5655', '0', '0'),
('1460', '5656', '0', '0'),
('1460', '18776', '0', '0'),
('1460', '18777', '0', '0'),
('1460', '18778', '0', '0'),
('2357', '2414', '0', '0'),
('2357', '5655', '0', '0'),
('2357', '5656', '0', '0'),
('2357', '18776', '0', '0'),
('2357', '18777', '0', '0'),
('2357', '18778', '0', '0'),
('3362', '1132', '0', '0'),
('3362', '5665', '0', '0'),
('3362', '5668', '0', '0'),
('3362', '18796', '0', '0'),
('3362', '18797', '0', '0'),
('3362', '18798', '0', '0'),
('3685', '15277', '0', '0'),
('3685', '15290', '0', '0'),
('3685', '18793', '0', '0'),
('3685', '18794', '0', '0'),
('3685', '18795', '0', '0'),
('4730', '8629', '0', '0'),
('4730', '8631', '0', '0'),
('4730', '8632', '0', '0'),
('4730', '18766', '0', '0'),
('4730', '18767', '0', '0'),
('4730', '18902', '0', '0'),
('4885', '2414', '0', '0'),
('4885', '5655', '0', '0'),
('4885', '5656', '0', '0'),
('4885', '18776', '0', '0'),
('4885', '18777', '0', '0'),
('4885', '18778', '0', '0'),
('7952', '8588', '0', '0'),
('7952', '8591', '0', '0'),
('7952', '8592', '0', '0'),
('7952', '18788', '0', '0'),
('7952', '18789', '0', '0'),
('7952', '18790', '0', '0'),
('7955', '8563', '0', '0'),
('7955', '8595', '0', '0'),
('7955', '13321', '0', '0'),
('7955', '13322', '0', '0'),
('7955', '18772', '0', '0'),
('7955', '18773', '0', '0'),
('7955', '18774', '0', '0');

-- Black Lotus is BoP now
UPDATE item_template SET bonding = '1' WHERE entry = '13468';

-- Welcome Back Bor Wildmane NPC#15306

UPDATE creature_template SET `entry`='15306', `KillCredit1`='0', `KillCredit2`='0', `modelid_1`='15370', `modelid_2`='0', `modelid_3`='0', `modelid_4`='0', `name`='Bor Wildmane', `subname`=NULL, `gossip_menu_id`='0', `minlevel`='56', `maxlevel`='56', `minhealth`='4231', `maxhealth`='4231', `minmana`='0', `maxmana`='0', `armor`='0', `faction_A`='635', `faction_H`='635', `npcflag`='3', `speed_walk`='1.1', `speed_run`='1.14286', `scale`='1.35', `rank`='0', `mindmg`='153', `maxdmg`='206', `dmgschool`='0', `attackpower`='254', `dmg_multiplier`='1', `baseattacktime`='2000', `rangeattacktime`='2000', `unit_class`='1', `unit_flags`='32768', `dynamicflags`='0', `family`='0', `trainer_type`='0', `trainer_spell`='0', `trainer_class`='0', `trainer_race`='0', `minrangedmg`='70.9632', `maxrangedmg`='97.5744', `rangedattackpower`='100', `type`='7', `type_flags`='0', `lootid`='0', `pickpocketloot`='0', `skinloot`='0', `resistance1`='0', `resistance2`='0', `resistance3`='0', `resistance4`='0', `resistance5`='0', `resistance6`='0', `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `PetSpellDataId`='0', `mingold`='0', `maxgold`='0', `AIName`='', `MovementType`='0', `InhabitType`='3', `Civilian`='0', `RacialLeader`='0', `RegenHealth`='1', `equipment_id`='170', `trainer_id`='0', `vendor_id`='0', `mechanic_immune_mask`='0', `flags_extra`='2', `ScriptName`='' WHERE (`entry`='15306');
DELETE FROM creature WHERE id=15306;
INSERT INTO creature (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`) VALUES ('15306', '1', '0', '170', '-6836.01', '845.531', '49.0809', '5.95157', '300', '5', '0', '4231', '0', '0', '0', '0');

