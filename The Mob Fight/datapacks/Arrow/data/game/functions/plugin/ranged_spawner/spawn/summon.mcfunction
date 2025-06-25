summon marker ~ ~ ~ {Tags:["spmover"]}
data modify entity @e[type=marker,limit=1,tag=spmover] Pos set from storage run summonPos
execute at @e[type=marker,limit=1,tag=spmover] run function game:plugin/ranged_spawner/spawn/summon/split_type
kill @e[type=marker,limit=1,tag=spmover]