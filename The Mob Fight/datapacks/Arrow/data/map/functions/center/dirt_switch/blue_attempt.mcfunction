setblock -46 41 14 air
execute if score center%dirt_switch blue matches ..-1 run setblock -46 41 14 lever[face=wall,powered=false,facing=east]
execute if score center%dirt_switch blue matches ..-1 positioned -46 41 14 run return run function map:center/general/cd

execute positioned -48 42 14 as @p[team=blue,gamemode=!spectator] unless function map:center/dirt_switch/pay run return run setblock -46 41 14 lever[face=wall,powered=false,facing=east]
execute positioned -48 42 14 as @p[team=blue,gamemode=!spectator] run tellraw @a[team=blue] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"map.center.cast","color": "aqua","with":[{"selector":"@s","color": "white"},{"translate":"map.center.dirt.1","color": "light_purple"}]}]
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

scoreboard players add center%dirt_switch blue 1
setblock -48 42 14 redstone_block
setblock -17 57 20 hopper[facing=down]
setblock -16 56 19 redstone_block
setblock -16 56 21 redstone_block