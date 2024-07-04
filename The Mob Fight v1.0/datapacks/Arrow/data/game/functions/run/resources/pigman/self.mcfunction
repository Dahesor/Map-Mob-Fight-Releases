scoreboard players remove @s genericCD 20
execute if entity @s[team=red] if score society_populate red matches 1.. run scoreboard players add @s genericCD 5
execute if entity @s[team=red] if score society_populate red matches 2.. run scoreboard players add @s genericCD 2
execute if entity @s[team=red] if score society_populate red matches 3.. run scoreboard players add @s genericCD 1
execute if entity @s[team=blue] if score society_populate blue matches 1.. run scoreboard players add @s genericCD 5
execute if entity @s[team=blue] if score society_populate blue matches 2.. run scoreboard players add @s genericCD 2
execute if entity @s[team=blue] if score society_populate blue matches 3.. run scoreboard players add @s genericCD 1
execute if score destroyMode Data matches 1 run scoreboard players remove @s genericCD 12

execute if score @s genericCD matches 1.. run return 1

execute if entity @s[team=red] at @e[type=marker,tag=pigman_item,predicate=map:in_red,limit=1] run summon item ~ ~ ~ {Item:{id:"dirt",Count:1b,tag:{isGameRes:3b,CanDestroy:['#game:breakable'],HideFlags:12}}}
execute if entity @s[team=blue] at @e[type=marker,tag=pigman_item,predicate=map:in_blue,limit=1] run summon item ~ ~ ~ {Item:{id:"dirt",Count:1b,tag:{isGameRes:3b,CanDestroy:['#game:breakable'],HideFlags:12}}}
scoreboard players operation @s genericCD = dirtTime red
scoreboard players operation @s genericCD *= #3 calculator
