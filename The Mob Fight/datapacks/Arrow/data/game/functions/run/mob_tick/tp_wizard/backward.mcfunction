particle cloud ~ ~0.15 ~ 0.3 0.3 0.3 0.1 40 normal
execute rotated as @s rotated ~-180 0 positioned ^ ^1.3 ^6.5 run function dtm:calculate_motion
execute if entity @s[tag=run_1] run tag @s add run_2
tag @s add run_1