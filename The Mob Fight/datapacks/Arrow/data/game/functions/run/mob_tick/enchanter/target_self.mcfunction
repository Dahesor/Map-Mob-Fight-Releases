scoreboard players set $alive calculator 1
execute if score $is_clear calculator matches 1 run return run function game:run/mob_tick/enchanter/disconnected
execute unless entity @s[distance=..14] run return run function game:run/mob_tick/enchanter/disconnected
effect give @s strength 1 2 false
effect give @s weakness 1 0 false
effect give @s speed 1 1 false
effect give @s resistance 1 1 false
function game:run/mob_tick/enchanter/laser
data modify storage run list_u append from storage run list_u[0]
data remove storage run list_u[0]