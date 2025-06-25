scoreboard players add center%dirt_switch red 1
execute if score center%dirt_switch red matches -1 run setblock 46 41 -15 lever[face=wall,powered=false,facing=west]
execute if score center%dirt_switch red matches ..-1 run return fail
execute if score #loop_3 calculator matches 0 if data block 17 56 -21 Items[0] run setblock 18 56 -21 redstone_block
execute if score #loop_3 calculator matches 1 run setblock 18 56 -21 air
execute unless score center%dirt_switch red matches 3600.. run return 1
setblock 18 56 -21 air
setblock 17 57 -21 blue_ice
setblock 48 42 -15 air
setblock 16 56 -20 air
setblock 16 56 -22 air
scoreboard players set center%dirt_switch red -6000