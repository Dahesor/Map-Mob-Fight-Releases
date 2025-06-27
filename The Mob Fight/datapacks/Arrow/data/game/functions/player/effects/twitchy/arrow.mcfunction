execute on origin unless entity @s[type=player,tag=twitchy_temp] run return fail
tag @s add twitchyed

data modify storage run motion set from entity @s Motion
execute store result score #x calculator run data get storage run motion[0] 1000
execute store result score #y calculator run data get storage run motion[1] 1000
execute store result score #z calculator run data get storage run motion[2] 1000


execute store result score $random calculator run random value -200..200
scoreboard players operation $random calculator *= $factor calculator
execute store result storage run motion[0] double 0.001 run scoreboard players operation #x calculator += $random calculator

execute store result score $random calculator run random value -200..200
scoreboard players operation $random calculator *= $factor calculator
execute store result storage run motion[1] double 0.001 run scoreboard players operation #y calculator += $random calculator

execute store result score $random calculator run random value -200..200
scoreboard players operation $random calculator *= $factor calculator
execute store result storage run motion[2] double 0.001 run scoreboard players operation #z calculator += $random calculator


data modify entity @s Motion set from storage run motion
execute store result entity @s Air short 1 run scoreboard players get #loop_3 calculator