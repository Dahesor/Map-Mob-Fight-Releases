execute at @s run particle dust 0.059 0.133 0.8 2 ~ ~0.9 ~ 0.2 0.7 0.2 10 120 normal
tp @s 7.67 57.00 111.42

execute if score AdminTeamsOn Options matches 1.. run tellraw @s {"translate":"op.teams_locked","color": "red"}
execute if score AdminTeamsOn Options matches 1.. at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1.5 1
execute if score AdminTeamsOn Options matches 1.. run return fail
execute if score game Data matches 1.. if score AdminJoinMidOn Options matches ..0 run tellraw @s {"translate":"op.join_mid_disabled","color": "red"}
execute if score game Data matches 1.. if score AdminJoinMidOn Options matches ..0 at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1.5 1
execute if score game Data matches 1.. if score AdminJoinMidOn Options matches ..0 run return fail


team join blue
tellraw @s {"translate":"player.joined_blue"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
function lobby:player/inventory/blue
tag @s remove team_randomed
tag @s remove spectator

execute if score game Data matches 1.. if score AdminJoinMidOn Options matches 1.. run function game:utility/join_self
