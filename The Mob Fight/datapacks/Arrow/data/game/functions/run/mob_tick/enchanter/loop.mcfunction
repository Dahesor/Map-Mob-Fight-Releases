data modify storage run suuid.id set from storage run list_u[0]
scoreboard players set $alive calculator 0
function game:run/mob_tick/enchanter/find_target with storage run suuid
execute unless score $alive calculator matches 1 run function game:run/mob_tick/enchanter/disconnected
scoreboard players remove $index calculator 1
execute if score $index calculator matches 1.. run function game:run/mob_tick/enchanter/loop