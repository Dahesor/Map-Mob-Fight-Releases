item replace entity @s enderchest.0 with arrow{CustomModelData:1,ui:{id:"up",sound:"click"},display:{Name:'{"translate":"上翻","color": "green","italic": false}'}}
execute if score @s SubUI matches ..1 run item replace entity @s enderchest.0 with arrow{CustomModelData:5,UISpaceHolder:1b,display:{Name:'{"translate":"first_page","color": "red","italic": false}'}}
loot replace entity @s enderchest.1 loot ui:blank_arrow
loot replace entity @s enderchest.2 loot ui:blank_arrow
loot replace entity @s enderchest.3 loot ui:blank_arrow
loot replace entity @s enderchest.4 loot ui:blank_arrow
loot replace entity @s enderchest.5 loot ui:blank_arrow
loot replace entity @s enderchest.6 loot ui:blank_arrow
loot replace entity @s enderchest.7 loot ui:blank_arrow
loot replace entity @s enderchest.8 loot ui:blank_arrow
item replace entity @s enderchest.9 with barrier{ui:{id:"back",sound:"click"},CustomModelData:1,display:{Name:'{"translate":"返回","color": "red","italic": false}'}}
loot replace entity @s enderchest.10 loot ui:blank_arrow
loot replace entity @s enderchest.11 loot ui:blank_arrow
loot replace entity @s enderchest.12 loot ui:blank_arrow
loot replace entity @s enderchest.13 loot ui:blank_arrow
loot replace entity @s enderchest.14 loot ui:blank_arrow
loot replace entity @s enderchest.15 loot ui:blank_arrow
loot replace entity @s enderchest.16 loot ui:blank_arrow
loot replace entity @s enderchest.17 loot ui:blank_arrow
item replace entity @s enderchest.18 with arrow{CustomModelData:2,ui:{id:"down",sound:"click"},display:{Name:'{"translate":"下翻","color": "green","italic": false}'}}
loot replace entity @s enderchest.19 loot ui:blank_arrow
loot replace entity @s enderchest.20 loot ui:blank_arrow
loot replace entity @s enderchest.21 loot ui:blank_arrow
loot replace entity @s enderchest.22 loot ui:blank_arrow
loot replace entity @s enderchest.23 loot ui:blank_arrow
loot replace entity @s enderchest.24 loot ui:blank_arrow
loot replace entity @s enderchest.25 loot ui:background
item replace entity @s enderchest.26 with hopper{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate":"筛选","color":"red","italic":false}',Lore:['""','{"translate":"功能尚未上线","color": "gray"}','{"translate":"敬请期待","color": "red","italic": false}']}}
execute if entity @s[team=red] store result score @s calculator run data get storage game:red_shop Mob
execute if entity @s[team=blue] store result score @s calculator run data get storage game:blue_shop Mob
execute if score game Data matches 0 store result score @s calculator run data get storage game:red_shop Mob
scoreboard players remove @s calculator 1
scoreboard players operation @s calculator /= #22 calculator
scoreboard players add @s calculator 1
execute if score @s SubUI >= @s calculator run item replace entity @s enderchest.18 with arrow{CustomModelData:6,UISpaceHolder:1b,display:{Name:'{"translate":"last_page","color": "red","italic": false}'}}