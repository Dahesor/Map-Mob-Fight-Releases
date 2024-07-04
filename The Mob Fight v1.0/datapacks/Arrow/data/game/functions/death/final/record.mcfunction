tag @s add final_camera
data modify storage run final.cause set value "target"
execute if entity @s[tag=center.killed_by_dripstone] run return run data modify storage run final_kill.Pos set from storage run center_dripstone
execute store result storage run final_kill.Pos[0] double 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage run final_kill.Pos[1] double 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage run final_kill.Pos[2] double 1 run data get entity @s LastDeathLocation.pos[2]
#define tag final_camera