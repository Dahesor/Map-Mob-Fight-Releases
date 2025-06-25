execute store result score @s calculator run data get entity @s Health 10
execute store result score !temp_heal calculator run attribute @s generic.max_health get 10
scoreboard players add @s calculator 50
scoreboard players operation @s calculator < !temp_heal calculator
execute store result entity @s Health float 0.1 run scoreboard players get @s calculator
particle heart ~ ~1.2 ~ 0.5 0.5 0.5 1 12 normal @a
particle heart ~ ~1.2 ~ 0.5 0.5 0.5 1 3 force @a
effect give @s strength 2 0
tag @s add in_beacon_effect
execute if entity @s[type=!#game:join_team,predicate=map:in_blue] run team join red @s
execute if entity @s[type=!#game:join_team,predicate=map:in_red] run team join blue @s