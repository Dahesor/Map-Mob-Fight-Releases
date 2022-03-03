scoreboard players operation d particleCreator = particleDistance particleCreator
function particle_creat:private/step/classify
scoreboard players add rot particleCreator 1
execute unless score rot particleCreator matches 36.. run function particle_creat:private/rotate