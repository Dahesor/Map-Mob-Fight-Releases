execute unless entity @a[distance=..5.5] run return fail

scoreboard players add mineParticle calculator 1
execute if score mineParticle calculator matches 12.. run return fail
scoreboard players set particleDistance particleCreator 25
scoreboard players set particleType particleCreator 13
function particle_creat:enter