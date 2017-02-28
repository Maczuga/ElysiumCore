INSERT INTO `migrations` VALUES ('20170211140003'); 

-- Garr
REPLACE INTO `spell_effect_mod` (`Id`, `EffectIndex`, `EffectTriggerSpell`, `Comment`) VALUES 
(15733, 0, 20294, 'Firesworn - imitate Immolate proc');

REPLACE INTO `spell_script_target` VALUES (20482, 1, 12099);
