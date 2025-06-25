setblock 46 41 -11 air
execute if score center%side_door red matches ..-1 run setblock 46 41 -11 lever[face=wall,powered=false,facing=west]
execute if score center%side_door red matches ..-1 positioned 46 41 -11 run return run function map:center/general/cd
scoreboard players add center%side_door red 1
execute positioned 48 42 -11 as @p[team=red,gamemode=!spectator] run tellraw @a[team=red] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"map.center.cast","color": "aqua","with":[{"selector":"@s","color": "white"},{"translate":"map.center.side_door.1","color": "light_purple"}]}]
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

setblock 48 42 -11 redstone_block