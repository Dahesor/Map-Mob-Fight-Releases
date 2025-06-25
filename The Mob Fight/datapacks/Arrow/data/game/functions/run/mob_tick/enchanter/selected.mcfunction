function gu:generate
data modify storage run suuid set from storage gu:main out
tag @s add enchanted
effect give @s strength 1 2 true
effect give @s weakness 1 0 true
effect give @s speed 1 1 true
effect give @s resistance 1 1 true
function game:run/mob_tick/enchanter/laser
attribute @s generic.knockback_resistance modifier add 0d8b1c2f-3e4a-4f5b-9c6d-7e8f9a0b1c2d "Enchanter" 0.7 add