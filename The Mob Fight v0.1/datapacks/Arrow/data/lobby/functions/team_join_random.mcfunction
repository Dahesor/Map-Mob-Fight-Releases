team leave @s
tellraw @s {"translate":"player.joined_random"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
function lobby:player/inventory/random
tag @s add team_randomed
execute at @s run particle dust 0.769 0.769 0.769 2 ~ ~0.9 ~ 0.2 0.7 0.2 10 120 normal
tp @s 0.55 57.00 111.55