tag @s add in_flag_effect

execute at @s if predicate map:in_red run scoreboard players operation flag_cd calculator = flag_cd blue

execute at @s if predicate map:in_blue run scoreboard players operation flag_cd calculator = flag_cd red
scoreboard players operation flag_cd calculator -= $gametime Data
scoreboard players operation flag_cd calculator /= #20 calculator

execute if score flag_cd calculator matches 230.. run return run effect give @s strength 35 0
execute if score flag_cd calculator matches 220.. run return run effect give @s strength 25 0
execute if score flag_cd calculator matches 210.. run return run effect give @s strength 15 0
execute if score flag_cd calculator matches 200.. run return run effect give @s strength 5 0