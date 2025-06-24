scoreboard players set rot particleCreator 0
execute store result storage run particleCreator.r float 0.1 run scoreboard players get particleDistance particleCreator
execute rotated 0 0 positioned ~ ~0.5 ~ run function particle_creat:private/main