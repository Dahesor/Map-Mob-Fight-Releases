setblock 46 41 -15 air
execute if score center%dirt_switch red matches ..-1 run setblock 46 41 -15 lever[face=wall,powered=false,facing=west]
execute if score center%dirt_switch red matches ..-1 positioned 46 41 -15 run return run function map:center/general/cd

execute positioned 48 42 -15 as @p[team=red,gamemode=!spectator] unless function map:center/dirt_switch/pay run return run setblock 46 41 -15 lever[face=wall,powered=false,facing=west]
execute positioned 48 42 -15 as @p[team=red,gamemode=!spectator] run tellraw @a[team=red] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"map.center.cast","color": "aqua","with":[{"selector":"@s","color": "white"},{"translate":"map.center.dirt.1","color": "light_purple"}]}]
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1


scoreboard players add center%dirt_switch red 1
setblock 48 42 -15 redstone_block
setblock 17 57 -21 hopper[facing=down]
setblock 16 56 -20 redstone_block
setblock 16 56 -22 redstone_block