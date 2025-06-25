summon marker 0 3 0 {Invulnerable:1b,Tags:["red_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=red_crystal] Pos set from storage run map.crystalPos.red[2]
execute at @e[type=marker,tag=red_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["red_crystal"]}
kill @e[type=marker,tag=red_crystal]
scoreboard players operation !reduce calculator = dirtTime red
scoreboard players operation !reduce calculator /= #10 calculator
scoreboard players add !reduce calculator 1
scoreboard players operation dirtTime red -= !reduce calculator
scoreboard players set crystal_count red 3