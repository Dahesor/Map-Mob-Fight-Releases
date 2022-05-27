execute if entity @s[team=red] if score science_techno red matches 3.. run scoreboard players remove @s genericCD 5
execute if entity @s[team=red] if score science_techno red matches 2 run scoreboard players remove @s genericCD 4
execute if entity @s[team=red] unless score science_techno red matches 2.. run scoreboard players remove @s genericCD 3
execute if entity @s[team=blue] if score science_techno blue matches 3.. run scoreboard players remove @s genericCD 5
execute if entity @s[team=blue] if score science_techno blue matches 2 run scoreboard players remove @s genericCD 4
execute if entity @s[team=blue] unless score science_techno blue matches 2.. run scoreboard players remove @s genericCD 3

execute unless score @s[team=red] genericCD matches 1.. at @e[type=marker,tag=pigman_item,predicate=map:in_red,limit=1] run summon item ~ ~ ~ {Item:{id:"dirt",Count:1b,tag:{isGameRes:1b,CanDestroy:['#game:breakable'],HideFlags:12}}}
execute unless score @s[team=blue] genericCD matches 1.. at @e[type=marker,tag=pigman_item,predicate=map:in_blue,limit=1] run summon item ~ ~ ~ {Item:{id:"dirt",Count:1b,tag:{isGameRes:1b,CanDestroy:['#game:breakable'],HideFlags:12}}}

execute unless score @s[team=red] genericCD matches 1.. if score crystal_count red matches 4.. run scoreboard players set @s genericCD 15
execute unless score @s[team=red] genericCD matches 1.. if score crystal_count red matches 3 run scoreboard players set @s genericCD 17
execute unless score @s[team=red] genericCD matches 1.. unless score crystal_count red matches 3.. run scoreboard players set @s genericCD 20

execute unless score @s[team=blue] genericCD matches 1.. if score crystal_count blue matches 4.. run scoreboard players set @s genericCD 15
execute unless score @s[team=blue] genericCD matches 1.. if score crystal_count blue matches 3 run scoreboard players set @s genericCD 17
execute unless score @s[team=blue] genericCD matches 1.. unless score crystal_count blue matches 3.. run scoreboard players set @s genericCD 20