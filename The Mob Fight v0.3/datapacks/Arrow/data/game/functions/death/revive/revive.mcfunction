effect give @s hero_of_the_village 5 0 false
effect give @s absorption 30 2 true
effect give @s fire_resistance 30 0 true
execute if score GameMode Data matches 1 run effect give @s absorption 120 2 true
gamemode adventure
execute at @s run playsound item.totem.use master @s ~ ~ ~
execute at @s run playsound item.totem.use master @s ~ ~ ~
tellraw @s [{"text": "| | ","color": "aqua"},{"translate":"message.revived","color": "green"}]
title @s times 0 35 15
title @s title {"text":"a","font": "icon"}
title @s subtitle {"translate":"message.revived","color": "green"}
attribute @s generic.attack_speed base set 4.3
execute if score GameMode Data matches 2 run function game:run/gamemodes/thunder/visible/dark_shift