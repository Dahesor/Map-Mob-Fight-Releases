scoreboard players add @s SubUI 1
execute if entity @s[team=red] store result score @s calculator run data get storage game:red_shop Mob
execute if entity @s[team=blue] store result score @s calculator run data get storage game:blue_shop Mob
scoreboard players operation @s calculator /= #22 calculator
scoreboard players add @s calculator 1
execute if score @s SubUI > @s calculator run scoreboard players remove @s SubUI 1

function ui:actions/mob/rearrange