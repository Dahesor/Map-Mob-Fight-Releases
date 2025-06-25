function game:plugin/score_copy
function ui:null
execute if score game Data matches 0 run return run function ui:pages/technology_preview
item replace entity @s enderchest.0 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}
execute if score science_techno calculator matches 0 run data merge storage run {ModelData:10}
execute if score science_techno calculator matches 1 run data merge storage run {ModelData:11}
execute if score science_techno calculator matches 2 run data merge storage run {ModelData:12}
execute if score science_techno calculator matches 3 run data merge storage run {ModelData:13}
loot replace entity @s enderchest.2 loot ui:technology/science_techno
item replace entity @s enderchest.3 with arrow{CustomModelData:3,UISpaceHolder:1b,display:{Name:'{"translate":"→","color": "green","italic": false}'}}
loot replace entity @s enderchest.4 loot ui:technology/science_techno/null
loot replace entity @s enderchest.5 loot ui:technology/science_techno/i
loot replace entity @s enderchest.6 loot ui:technology/science_techno/ii
loot replace entity @s enderchest.7 loot ui:technology/science_techno/iii
execute if score science_techno calculator matches 3.. run item replace entity @s enderchest.8 with arrow{CustomModelData:4,display:{Name:'{"text": "✔","color": "green","italic": false}'},UISpaceHolder:1b}
item replace entity @s enderchest.9 with barrier{ui:{id:"back",sound:"click"},CustomModelData:1,display:{Name:'{"translate":"返回","color": "red","italic": false}'}}
execute if score magic_occult calculator matches 0 run data merge storage run {ModelData:60}
execute if score magic_occult calculator matches 1 run data merge storage run {ModelData:61}
execute if score magic_occult calculator matches 2 run data merge storage run {ModelData:62}
execute if score magic_occult calculator matches 3 run data merge storage run {ModelData:63}
loot replace entity @s enderchest.11 loot ui:technology/magic_occult
item replace entity @s enderchest.12 with arrow{CustomModelData:3,UISpaceHolder:1b,display:{Name:'{"translate":"→","color": "green","italic": false}'}}
loot replace entity @s enderchest.13 loot ui:technology/magic_occult/null
loot replace entity @s enderchest.14 loot ui:technology/magic_occult/i
loot replace entity @s enderchest.15 loot ui:technology/magic_occult/ii
loot replace entity @s enderchest.16 loot ui:technology/magic_occult/iii
execute if score magic_occult calculator matches 3.. run item replace entity @s enderchest.17 with arrow{CustomModelData:4,display:{Name:'{"text": "✔","color": "green","italic": false}'},UISpaceHolder:1b}
item replace entity @s enderchest.18 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}
execute if score society_populate calculator matches 0 run data merge storage run {ModelData:20}
execute if score society_populate calculator matches 1 run data merge storage run {ModelData:21}
execute if score society_populate calculator matches 2 run data merge storage run {ModelData:22}
execute if score society_populate calculator matches 3 run data merge storage run {ModelData:23}
loot replace entity @s enderchest.20 loot ui:technology/society_populate
item replace entity @s enderchest.21 with arrow{CustomModelData:3,UISpaceHolder:1b,display:{Name:'{"translate":"→","color": "green","italic": false}'}}
loot replace entity @s enderchest.22 loot ui:technology/society_populate/null
loot replace entity @s enderchest.23 loot ui:technology/society_populate/i
loot replace entity @s enderchest.24 loot ui:technology/society_populate/ii
loot replace entity @s enderchest.25 loot ui:technology/society_populate/iii
execute if score society_populate calculator matches 3.. run item replace entity @s enderchest.26 with arrow{CustomModelData:4,display:{Name:'{"text": "✔","color": "green","italic": false}'},UISpaceHolder:1b}