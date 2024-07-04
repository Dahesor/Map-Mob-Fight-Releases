scoreboard players add center%outer_glass red 1
execute if score center%outer_glass red matches -1 run setblock 46 41 -17 lever[face=wall,powered=false,facing=west]
scoreboard players operation #temp map.CENTER.falling_distance = center%outer_glass red
scoreboard players operation #temp map.CENTER.falling_distance %= #20 calculator
execute if score #temp map.CENTER.falling_distance matches 0 if score center%window_closed red matches -1 run function map:center/outer_glass/open_red
execute if score #temp map.CENTER.falling_distance matches 0 if score center%window_closed red matches -2 run function map:center/outer_glass/close_red