execute as @e[type=marker,tag=blindness] unless score @s genericCD matches 20.. at @s run function game:plugin/blindness/self
kill @e[type=marker,tag=blindness,scores={genericCD=20..}]
execute if entity @e[type=marker,tag=blindness] run schedule function game:plugin/blindness/loop 7t