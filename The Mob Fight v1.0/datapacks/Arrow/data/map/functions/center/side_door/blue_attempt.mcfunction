setblock -46 41 10 air
execute if score center%side_door blue matches ..-1 run setblock -46 41 10 lever[face=wall,powered=false,facing=east]
execute if score center%side_door blue matches ..-1 positioned -46 41 10 run return run function map:center/general/cd
scoreboard players add center%side_door blue 1
execute positioned -48 42 10 as @p[team=blue,gamemode=!spectator] run tellraw @a[team=blue] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"map.center.cast","color": "aqua","with":[{"selector":"@s","color": "white"},{"translate":"map.center.side_door.1","color": "light_purple"}]}]
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

setblock -48 42 10 redstone_block