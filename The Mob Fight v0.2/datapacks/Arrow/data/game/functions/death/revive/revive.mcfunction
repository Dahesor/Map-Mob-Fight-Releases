effect give @s hero_of_the_village 5 0 false
gamemode adventure
execute at @s run playsound item.totem.use master @s ~ ~ ~
execute at @s run playsound item.totem.use master @s ~ ~ ~
tellraw @s [{"text": "| | ","color": "aqua"},{"translate":"message.revived","color": "green"}]
title @s times 0 35 15
title @s title {"text":"a","font": "icon"}
title @s subtitle {"translate":"message.revived","color": "green"}

execute if score GameMode Data matches 2 run function game:run/gamemodes/thunder/visible/dark_shift