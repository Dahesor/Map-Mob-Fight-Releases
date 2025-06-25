setblock -46 41 16 air
execute if score center%outer_glass blue matches ..-1 run setblock -46 41 16 lever[face=wall,powered=false,facing=east]
execute if score center%outer_glass blue matches ..-1 positioned -46 41 16 run return run function map:center/general/cd
scoreboard players add center%outer_glass blue 1

execute positioned -48 42 16 as @p[team=blue,gamemode=!spectator] run tellraw @a[team=blue] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"map.center.cast","color": "aqua","with":[{"selector":"@s","color": "white"},{"translate":"map.center.outglass.1","color": "light_purple"}]}]
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1


execute if score center%window_closed blue matches 1 run scoreboard players set center%window_closed blue -1
execute if score center%window_closed blue matches 0 run scoreboard players set center%window_closed blue -2
setblock -48 42 16 redstone_block

data modify block -46 42 16 front_text.messages[0] set value '{"translate":"info.running","color":"aqua"}'
