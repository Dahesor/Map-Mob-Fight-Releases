function game:plugin/score_copy
function ui:null
item replace entity @s enderchest.0 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}
item replace entity @s enderchest.9 with barrier{ui:{id:"back",sound:"click"},CustomModelData:1,display:{Name:'{"translate":"返回","color": "red","italic": false}'}}
item replace entity @s enderchest.3 with arrow{CustomModelData:3,UISpaceHolder:1b,display:{Name:'{"translate":"→","color": "green","italic": false}'}}
item replace entity @s enderchest.12 with arrow{CustomModelData:3,UISpaceHolder:1b,display:{Name:'{"translate":"→","color": "green","italic": false}'}}
item replace entity @s enderchest.21 with arrow{CustomModelData:3,UISpaceHolder:1b,display:{Name:'{"translate":"→","color": "green","italic": false}'}}
item replace entity @s enderchest.18 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}
loot replace entity @s enderchest.4 loot ui:technology/science_techno/null
loot replace entity @s enderchest.13 loot ui:technology/magic_occult/null
loot replace entity @s enderchest.22 loot ui:technology/society_populate/null
data merge storage run {ModelData:13}
loot replace entity @s enderchest.2 loot ui:technology/science_techno
data merge storage run {ModelData:63}
loot replace entity @s enderchest.11 loot ui:technology/magic_occult
data merge storage run {ModelData:23}
loot replace entity @s enderchest.20 loot ui:technology/society_populate

scoreboard players set science_techno calculator 0
scoreboard players set magic_occult calculator 0
scoreboard players set society_populate calculator 0
loot replace entity @s enderchest.5 loot ui:technology/science_techno/i
loot replace entity @s enderchest.14 loot ui:technology/magic_occult/i
loot replace entity @s enderchest.23 loot ui:technology/society_populate/i

scoreboard players set science_techno calculator 1
scoreboard players set magic_occult calculator 1
scoreboard players set society_populate calculator 1
loot replace entity @s enderchest.6 loot ui:technology/science_techno/ii
loot replace entity @s enderchest.15 loot ui:technology/magic_occult/ii
loot replace entity @s enderchest.24 loot ui:technology/society_populate/ii

scoreboard players set science_techno calculator 2
scoreboard players set magic_occult calculator 2
scoreboard players set society_populate calculator 2
loot replace entity @s enderchest.7 loot ui:technology/science_techno/iii
loot replace entity @s enderchest.16 loot ui:technology/magic_occult/iii
loot replace entity @s enderchest.25 loot ui:technology/society_populate/iii