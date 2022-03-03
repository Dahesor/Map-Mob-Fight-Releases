data modify entity @s Pos set from storage run Pos
data modify entity @s data.initialized set value 1b
execute at @s run function game:run/resources/marker/get_ore