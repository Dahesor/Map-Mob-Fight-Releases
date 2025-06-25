execute as @e[type=marker,tag=blindness] unless score @s genericCD matches 30.. at @s run function game:plugin/blindness/self
kill @e[type=marker,tag=blindness,scores={genericCD=30..}]
execute if entity @e[type=marker,tag=blindness] run function game:plugin/blindness/other