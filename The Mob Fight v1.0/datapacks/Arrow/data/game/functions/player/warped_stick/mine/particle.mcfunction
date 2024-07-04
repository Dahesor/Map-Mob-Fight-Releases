execute unless entity @a[distance=..6] run return fail
scoreboard players set particleDistance particleCreator 25
scoreboard players set particleType particleCreator 13
function particle_creat:enter
scoreboard players set particleDistance particleCreator 18
scoreboard players set particleType particleCreator 14
execute if score #loop_3 calculator matches 0 run function particle_creat:enter