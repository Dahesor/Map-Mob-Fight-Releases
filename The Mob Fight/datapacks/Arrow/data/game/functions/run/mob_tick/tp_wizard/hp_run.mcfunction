execute store result score @s calculator run data get entity @s Health 10
execute if score @s[tag=!run_1] calculator matches ..320 run function game:run/mob_tick/tp_wizard/backward
execute if score @s[tag=!run_2] calculator matches ..160 run function game:run/mob_tick/tp_wizard/backward
execute if score @s calculator matches ..50 if entity @a[gamemode=adventure,distance=..2] run function game:run/mob_tick/tp_wizard/backward