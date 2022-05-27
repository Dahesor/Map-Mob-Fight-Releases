execute store result entity @s BeamTarget.X int 1 run data get storage run dirtRun[0]
execute store result entity @s BeamTarget.Y int 1 run data get storage run dirtRun[1]
execute store result entity @s BeamTarget.Z int 1 run data get storage run dirtRun[2]
tag @s add beem_lazer
scoreboard players set @s hpPotionCD 0