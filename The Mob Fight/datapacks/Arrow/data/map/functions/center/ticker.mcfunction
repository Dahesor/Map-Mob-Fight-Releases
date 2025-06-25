execute as @a[gamemode=adventure] at @s run function map:center/fall_check
execute if block 46 41 -17 lever[powered=true] run function map:center/outer_glass/red_attempt
execute if block -46 41 16 lever[powered=true] run function map:center/outer_glass/blue_attempt
execute if block 46 41 -13 lever[powered=true] run function map:center/isolation/red_attempt
execute if block -46 41 12 lever[powered=true] run function map:center/isolation/blue_attempt
execute if block 46 41 -15 lever[powered=true] run function map:center/dirt_switch/red_attempt
execute if block -46 41 14 lever[powered=true] run function map:center/dirt_switch/blue_attempt
execute if block 46 41 -11 lever[powered=true] run function map:center/side_door/red_attempt
execute if block -46 41 10 lever[powered=true] run function map:center/side_door/blue_attempt



execute unless score center%outer_glass red matches 0 run function map:center/outer_glass/tick_red
execute unless score center%outer_glass blue matches 0 run function map:center/outer_glass/tick_blue
execute unless score center%isolation red matches 0 run function map:center/isolation/tick_red
execute unless score center%isolation blue matches 0 run function map:center/isolation/tick_blue
execute unless score center%dirt_switch red matches 0 run function map:center/dirt_switch/tick_red
execute unless score center%dirt_switch blue matches 0 run function map:center/dirt_switch/tick_blue
execute unless score center%side_door red matches 0 run function map:center/side_door/red_tick
execute unless score center%side_door blue matches 0 run function map:center/side_door/blue_tick

execute if score #loop_10 calculator matches 4 run function map:center/general/signs

execute if score #loop_10 calculator matches 2 as @e[type=#game:mobs,tag=second_ticking] if entity @s[tag=slow_fall] at @s if block ~ ~0.4 ~ water if block ~ ~-0.8 ~ oak_wall_sign run tp ~ ~-2.5 ~