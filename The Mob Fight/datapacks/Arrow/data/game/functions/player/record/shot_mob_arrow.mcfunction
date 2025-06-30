advancement revoke @s only game:utility/shot_mob_arrow
tag @s add shot_temp
execute as @e[type=#arrows,distance=..3,tag=!shot_temp] run function game:player/record/mob_arrow_check
tag @s remove shot_temp