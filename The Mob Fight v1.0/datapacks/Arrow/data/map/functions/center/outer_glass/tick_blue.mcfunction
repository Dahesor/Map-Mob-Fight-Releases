scoreboard players add center%outer_glass blue 1
execute if score center%outer_glass blue matches -1 run setblock -46 41 16 lever[face=wall,powered=false,facing=east]
scoreboard players operation #temp map.CENTER.falling_distance = center%outer_glass blue
scoreboard players operation #temp map.CENTER.falling_distance %= #20 calculator
execute if score #temp map.CENTER.falling_distance matches 0 if score center%window_closed blue matches -1 run function map:center/outer_glass/open_blue
execute if score #temp map.CENTER.falling_distance matches 0 if score center%window_closed blue matches -2 run function map:center/outer_glass/close_blue