summon marker 0 3 0 {Invulnerable:1b,Tags:["blue_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=blue_crystal] Pos set from storage run map.crystalPos.blue[3]
execute at @e[type=marker,tag=blue_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["blue_crystal"]}
kill @e[type=marker,tag=blue_crystal]
scoreboard players operation !reduce calculator = dirtTime blue
scoreboard players operation !reduce calculator /= #10 calculator
scoreboard players add !reduce calculator 1
scoreboard players operation dirtTime blue -= !reduce calculator
scoreboard players set crystal_count blue 4