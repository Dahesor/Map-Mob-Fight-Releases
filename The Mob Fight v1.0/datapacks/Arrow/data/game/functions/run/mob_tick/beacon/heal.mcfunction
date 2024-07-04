scoreboard players set @s genericCD -60
execute as @e[type=#game:mobs,tag=in_beacon_effect,type=!#game:join_team] at @s unless entity @e[type=husk,tag=beacon,distance=..16] run function game:run/mob_tick/beacon/team_end
execute as @e[type=#game:mobs,distance=..10,tag=!beacon] at @s run function game:run/mob_tick/beacon/self
function game:run/mob_tick/beacon/self
scoreboard players reset !temp_heal

execute unless entity @a[distance=..20] run return fail
scoreboard players set particleDistance particleCreator 100
scoreboard players set particleType particleCreator 12
execute positioned ~ ~-0.7 ~ run function particle_creat:enter
