scoreboard players set @s genericCD 400
summon silverfish
summon silverfish
summon silverfish
execute unless entity @a[distance=..16] run return fail
scoreboard players set particleType particleCreator 1
scoreboard players set particleDistance particleCreator 30
execute positioned ~ ~0.5 ~ run function particle_creat:enter