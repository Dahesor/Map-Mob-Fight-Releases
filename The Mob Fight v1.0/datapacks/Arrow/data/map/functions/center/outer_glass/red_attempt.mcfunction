setblock 46 41 -17 air
execute if score center%outer_glass red matches ..-1 run setblock 46 41 -17 lever[face=wall,powered=false,facing=west]
execute if score center%outer_glass red matches ..-1 positioned 46 41 -17 run return run function map:center/general/cd
scoreboard players add center%outer_glass red 1
execute positioned 48 42 -17 as @p[team=red,gamemode=!spectator] run tellraw @a[team=red] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"map.center.cast","color": "aqua","with":[{"selector":"@s","color": "white"},{"translate":"map.center.outglass.1","color": "light_purple"}]}]
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

execute if score center%window_closed red matches 1 run scoreboard players set center%window_closed red -1
execute if score center%window_closed red matches 0 run scoreboard players set center%window_closed red -2
setblock 48 42 -17 redstone_block
data modify block 46 42 -17 front_text.messages[0] set value '{"translate":"info.running","color":"aqua"}'
