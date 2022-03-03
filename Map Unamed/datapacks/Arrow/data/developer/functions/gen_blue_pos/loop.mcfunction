schedule clear developer:gen_blue_pos/done
data modify storage run PosResult append from storage run backup[0]
data remove storage run backup[0]
execute store result score #holder calculator run data get storage run PosResult[-1].Pos[0]
scoreboard players operation #holder calculator *= #-1 calculator
execute store result storage run PosResult[-1].Pos[0] double 1 run scoreboard players get #holder calculator

execute store result score #holder calculator run data get storage run PosResult[-1].Pos[2]
scoreboard players add #holder calculator 1
scoreboard players operation #holder calculator *= #-1 calculator
execute store result storage run PosResult[-1].Pos[2] double 1 run scoreboard players get #holder calculator
scoreboard players add Count calculator 1
tellraw @a ["[Sever]",{"text":" Calculated ","color": "aqua"},"{ ",{"nbt":"PosResult[-1].Pos","storage": "run","color": "yellow"}," }"]
schedule function developer:gen_blue_pos/done 3t
execute if data storage run backup[0] run schedule function developer:gen_blue_pos/loop 1t