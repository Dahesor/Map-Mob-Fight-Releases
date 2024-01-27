execute at @s run particle dust 1 1 1 2 ~ ~0.9 ~ 0.2 0.7 0.2 10 120 normal
tp @s 10.81 57.00 106.88

team leave @s
tellraw @s {"translate":"player.spectate"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
function lobby:player/inventory/spectator
tag @s remove team_randomed
tag @s add spectator
execute if score game Data matches 1.. run function game:utility/join_spectate
