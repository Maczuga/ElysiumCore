INSERT INTO `migrations` VALUES ('20170210222704');

-- Blueleaf Tubers should not drop from mobs in instance
DELETE FROM `creature_loot_template` WHERE `item` = 5876 AND NOT `entry` IN (4511, 4514, 4541);

-- Possible exception are the mobs in the Tuber Canyon with a low 0.13% chance. (Most likely data-mining inaccuracy)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -0.13 WHERE `item` = 5876;

-- Add more "Nearby Tuber" objects 
INSERT INTO `gameobject` VALUES
(3998428,   300011, 47, 2086.01,    1673.69,    61.2293,    6.28018,    0,  0,  0, 0,  180, 100,    1,  0),
(3998429,   300011, 47, 2162.96,    1710.41,    53.8656,    1.77985,    0,  0,  0,   0,   180, 100,    1,  0),
(3998430,   300011, 47, 2092.83,    1712.28,    55.5678,    3.74334,    0,  0,  0,   0,  180, 100,    1,  0),
(3998431,   300011, 47, 2041.41,    1753.16,    60.029, 1.36751,    0,  0,  0,   0,   180, 100,    1,  0),
(3998432,   300011, 47, 2046.1, 1857.22,    55.632, 2.632,  0,  0,  0,   0,   180, 100,    1,  0),
(3998433,   300011, 47, 2108.62,    1854.3, 49.3098,    2.9658, 0,  0,  0,   0,  180, 100,    1,  0);
