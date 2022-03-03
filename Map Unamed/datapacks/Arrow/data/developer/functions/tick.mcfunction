execute as @a[scores={carrot_stick=1..}] at @s anchored eyes run function developer:specialize
scoreboard players add @a[scores={carrot_stick=..-1}] carrot_stick 1

execute store result score #marker_count calculator run execute if entity @e[type=marker]
title @a actionbar [{"text": "E: ","color": "gray"},"M",{"score":{"name": "#marker_count","objective": "calculator"}}]