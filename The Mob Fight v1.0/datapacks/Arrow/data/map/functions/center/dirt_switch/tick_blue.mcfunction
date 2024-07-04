scoreboard players add center%dirt_switch blue 1
execute if score center%dirt_switch blue matches -1 run setblock -46 41 14 lever[face=wall,powered=false,facing=east]
execute if score center%dirt_switch blue matches ..-1 run return fail
execute if score #loop_3 calculator matches 0 if data block -17 56 20 Items[0] run setblock -18 56 20 redstone_block
execute if score #loop_3 calculator matches 2 run setblock -18 56 20 air
execute unless score center%dirt_switch blue matches 3600.. run return 1
setblock -17 57 20 blue_ice
setblock -18 56 20 air
setblock -48 42 14 air
setblock -16 56 19 air
setblock -16 56 21 air
scoreboard players set center%dirt_switch blue -6000