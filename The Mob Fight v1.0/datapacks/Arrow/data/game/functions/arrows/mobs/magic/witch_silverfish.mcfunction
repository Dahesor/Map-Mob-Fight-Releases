summon witch ~ ~ ~ {Tags:["ticking","silverfish_witch","mobDEFini"]}
scoreboard players set @e[type=#game:mobs,tag=mobDEFini] mobDEF 50
tag @e[type=#game:mobs,tag=mobDEFini] remove mobDEFini
execute store result score @s match run data get entity @s UUID[0]
kill @s