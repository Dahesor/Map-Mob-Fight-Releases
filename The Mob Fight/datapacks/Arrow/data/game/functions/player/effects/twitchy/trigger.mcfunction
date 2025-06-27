advancement revoke @s only game:utility/shoot_twitchy_arrow
scoreboard players set $factor calculator 1
execute if predicate game:player/effects/twitchy/1 run scoreboard players set $factor calculator 1
execute if predicate game:player/effects/twitchy/2 run scoreboard players set $factor calculator 2
execute if predicate game:player/effects/twitchy/3 run scoreboard players set $factor calculator 3
execute if predicate game:player/effects/twitchy/4 run scoreboard players set $factor calculator 4
execute if predicate game:player/effects/twitchy/5 run scoreboard players set $factor calculator 5

tag @s add twitchy_temp
execute as @e[type=#arrows,distance=..3,tag=!twitchyed] run function game:player/effects/twitchy/arrow
tag @s remove twitchy_temp