team join red
tellraw @s {"translate":"player.joined_red"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
function lobby:player/inventory/red
tag @s remove team_randomed
execute at @s run particle dust 0.8 0.059 0.059 2 ~ ~0.9 ~ 0.2 0.7 0.2 10 120 normal