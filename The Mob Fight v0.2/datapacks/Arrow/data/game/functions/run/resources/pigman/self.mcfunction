scoreboard players remove @s genericCD 20
execute if entity @s[team=red] if score society_populate red matches 1.. run scoreboard players add @s genericCD 5
execute if entity @s[team=red] if score society_populate red matches 2.. run scoreboard players add @s genericCD 2
execute if entity @s[team=red] if score society_populate red matches 3.. run scoreboard players add @s genericCD 1
execute if score destroyMode Data matches 1 run scoreboard players remove @s genericCD 12

execute unless score @s[team=red] genericCD matches 1.. at @e[type=marker,tag=pigman_item,predicate=map:in_red,limit=1] run summon item ~ ~ ~ {Item:{id:"dirt",Count:1b,tag:{isGameRes:3b,CanDestroy:['#game:breakable'],HideFlags:12}}}
execute unless score @s[team=blue] genericCD matches 1.. at @e[type=marker,tag=pigman_item,predicate=map:in_blue,limit=1] run summon item ~ ~ ~ {Item:{id:"dirt",Count:1b,tag:{isGameRes:3b,CanDestroy:['#game:breakable'],HideFlags:12}}}

execute unless score @s[team=red] genericCD matches 1.. run scoreboard players add @s genericCD 120

execute unless score @s[team=blue] genericCD matches 1.. run scoreboard players add @s genericCD 120