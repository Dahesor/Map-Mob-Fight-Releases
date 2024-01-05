team join blue
tellraw @s {"translate":"player.joined_blue"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
function lobby:player/inventory/blue
tag @s remove team_randomed
execute at @s run particle dust 0.059 0.133 0.8 2 ~ ~0.9 ~ 0.2 0.7 0.2 10 120 normal
tp @s 7.67 57.00 111.42