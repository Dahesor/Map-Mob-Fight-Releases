scoreboard players set particleDistance particleCreator 70
scoreboard players set particleType particleCreator 10
function particle_creat:enter

particle heart ~ ~ ~ 2 2 2 0.01 10 force @a[distance=..10]
