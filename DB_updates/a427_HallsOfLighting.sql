-- HALLS OF LIGHTING
/* orginal UDB390 data f*cked up(?) by previous custom commits
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
-- General Bjarngrim
('28586','31533','0','0','0','0','27301','0','27301','0','General Bjarngrim','','','0','81','81','221561','221561','0','0','10033','16','16','0','1','1.14286','1.3','1','464','604','0','708','7.5','2000','0','1','32832','0','0','0','0','0','0','353','512','112','7','104','28586','0','0','0','0','0','0','0','0','0','0','0','0','0','4998','8330','','0','3','17','1','0','0','0','0','0','0','0','147','1','1750','0','0','boss_bjarngrim'),
('31533','0','0','0','0','0','27301','0','27301','0','General Bjarngrim (1)','','','0','82','82','323544','323544','0','0','10356','16','16','0','1','1.14286','1.3','1','488','642','0','782','13','2000','0','1','32832','0','0','0','0','0','0','363','521','121','7','104','31533','0','0','0','0','0','0','0','0','0','0','0','0','0','9996','16660','','0','3','24','1','0','0','0','0','0','0','0','147','1','1750','0','1',''),
-- Stormforged Lieutenant
('29240','30973','0','0','0','0','26065','0','26065','0','Stormforged Lieutenant','','','0','81','81','52132','52132','20405','20405','10007','16','16','0','1','1.14286','1.3','1','425','602','0','670','7.5','2000','0','2','32832','0','0','0','0','0','0','351','511','86','7','8','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','EventAI','0','3','4','5','0','0','0','0','0','0','0','48','1','1749','0','0','mob_stormforged_lieutenant'),
('30973','0','0','0','0','0','26065','0','26065','0','Stormforged Lieutenant (1)','','','0','81','81','104264','104264','20405','20405','10007','16','16','0','1','1.14286','1.3','1','425','602','0','670','13','2000','0','2','32832','0','0','0','0','0','0','351','511','86','7','8','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','8','5','0','0','0','0','0','0','0','48','1','1749','0','0','');
DELETE FROM `creature` WHERE id IN (28586,29240);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('126981','28586','602','3','1','27301','0','1261.96','84.6607','33.5055','1.57306','3600','5','0','221561','0','0','1'),
('126864','29240','602','3','1','26065','0','1265','71.4314','33.5055','0.057917','3600','5','0','52132','20405','0','1'),
('126863','29240','602','3','1','26065','0','1259.45','71.4089','33.5055','3.10451','3600','5','0','52132','20405','0','1');

DELETE FROM `creature_addon` WHERE guid IN (SELECT `guid` FROM `creature` WHERE id IN (28586,29240));
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
('126863','0','0','1','0','0','52097 0'),
('126864','0','0','1','0','0','52097 0'),
('126981','0','0','1','0','0','52097 0');*/

DELETE FROM `creature_movement` WHERE id IN (SELECT `guid` FROM `creature` WHERE id = 28586);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
('126981','1','1261.96','84.6607','33.5055','10000','0','0','0','0','0','0','0','0','0.010127','0','0'),
('126981','2','1260.48','99.0016','33.5055','0','0','0','0','0','0','0','0','0','0.065109','0','0'),
('126981','3','1274.08','99.6205','33.5055','0','0','0','0','0','0','0','0','0','0.045474','0','0'),
('126981','4','1312.43','99.8447','40.1805','0','0','0','0','0','0','0','0','0','0.010127','0','0'),
('126981','5','1333.13','99.9595','40.1805','0','0','0','0','0','0','0','0','0','0.010128','0','0'),
('126981','6','1350.58','81.4253','40.1805','0','0','0','0','0','0','0','0','0','5.50399','0','0'),
('126981','7','1374.95','57.0244','50.0381','0','0','0','0','0','0','0','0','0','5.47256','0','0'),
('126981','8','1394.74','36.3567','50.0381','0','0','0','0','0','0','0','0','0','4.03528','0','0'),
('126981','9','1373.81','15.9513','49.7929','0','0','0','0','0','0','0','0','0','3.95674','0','0'),
('126981','10','1352.46','-6.48166','40.1806','0','0','0','0','0','0','0','0','0','3.91747','0','0'),
('126981','11','1332.72','-25.9249','40.1806','0','0','0','0','0','0','0','0','0','3.91747','0','0'),
('126981','12','1311.56','-25.8438','40.0828','0','0','0','0','0','0','0','0','0','3.15171','0','0'),
('126981','13','1280.78','-26.2699','33.5057','0','0','0','0','0','0','0','0','0','3.15564','0','0'),
('126981','14','1262.5','-26.5266','33.5057','0','0','0','0','0','0','0','0','0','3.15564','0','0'),
('126981','15','1262.42','-1.15338','33.5057','0','0','0','0','0','0','0','0','0','1.58091','0','0'),
('126981','16','1262.3','35.3213','33.1855','0','0','0','0','0','0','0','0','0','1.55735','0','0');


/*-- HallsOfLighting::Bengram
UPDATE creature_template SET `mechanic_immune_mask` = mechanic_immune_mask|1073463287 WHERE `entry` IN (31533,28586);

-- HallsOfLighting::Volkano
UPDATE creature_template SET `mechanic_immune_mask` = mechanic_immune_mask|1073463287 WHERE `entry` IN (31536,28587);

-- HallsOfLighting::Ionar
UPDATE creature_template SET `mechanic_immune_mask` = mechanic_immune_mask|1073463287 WHERE `entry` IN (31537,28546);

-- HallsOfLighting::Spark movement speed
UPDATE creature_template SET `speed` = '0.8' WHERE `entry` IN (28926,31867);

-- HallsOfLighting::Loken
UPDATE creature_template SET `mechanic_immune_mask` = mechanic_immune_mask|1073463287 WHERE `entry` IN (31538,28923);

-- HallsOfLighting::Thunderer and Siegebreaker flags remove
UPDATE `creature_template` SET `unit_flags` = '0',`type_flags` = '0' WHERE `entry` IN (28965,28961,30980,30982);
*/
-- Add Emblem of Heroisms
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(31533, 40752, 100, 0, 1, 1, 0, 0, 0),
(31536, 40752, 100, 0, 1, 1, 0, 0, 0),
(31537, 40752, 100, 5, 1, 1, 0, 0, 0),
(31538, 40752, 100, 5, 1, 1, 0, 0, 0);

