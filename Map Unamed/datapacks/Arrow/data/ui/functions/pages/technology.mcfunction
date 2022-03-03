function game:plugin/score_copy
loot replace entity @s enderchest.0 loot ui:background
execute if score metalWorkLevel calculator matches 0 run data merge storage run {ModelData:10}
execute if score metalWorkLevel calculator matches 1 run data merge storage run {ModelData:11}
execute if score metalWorkLevel calculator matches 2 run data merge storage run {ModelData:12}
execute if score metalWorkLevel calculator matches 3 run data merge storage run {ModelData:13}
loot replace entity @s enderchest.1 loot ui:technology/metal_work
loot replace entity @s enderchest.2 loot ui:background
execute if score supplyBuckupLevel calculator matches 0 run data merge storage run {ModelData:20}
execute if score supplyBuckupLevel calculator matches 1 run data merge storage run {ModelData:21}
execute if score supplyBuckupLevel calculator matches 2 run data merge storage run {ModelData:22}
execute if score supplyBuckupLevel calculator matches 3 run data merge storage run {ModelData:23}
loot replace entity @s enderchest.3 loot ui:technology/supply_work
loot replace entity @s enderchest.4 loot ui:background
execute if score fireEssenceLevel calculator matches 0 run data merge storage run {ModelData:30}
execute if score fireEssenceLevel calculator matches 1 run data merge storage run {ModelData:31}
execute if score fireEssenceLevel calculator matches 2 run data merge storage run {ModelData:32}
loot replace entity @s enderchest.5 loot ui:technology/fire_
loot replace entity @s enderchest.6 loot ui:background
execute if score poisonBoilLevel calculator matches 0 run data merge storage run {ModelData:40}
execute if score poisonBoilLevel calculator matches 1 run data merge storage run {ModelData:41}
execute if score poisonBoilLevel calculator matches 2 run data merge storage run {ModelData:42}
loot replace entity @s enderchest.7 loot ui:technology/poison
loot replace entity @s enderchest.8 loot ui:background
loot replace entity @s enderchest.9 loot ui:background
loot replace entity @s enderchest.10 loot ui:background
execute if score BarracksLevel calculator matches 0 run data merge storage run {ModelData:50}
execute if score BarracksLevel calculator matches 1 run data merge storage run {ModelData:51}
execute if score BarracksLevel calculator matches 2 run data merge storage run {ModelData:52}
execute if score BarracksLevel calculator matches 3 run data merge storage run {ModelData:53}
loot replace entity @s enderchest.11 loot ui:technology/barracks
loot replace entity @s enderchest.12 loot ui:background
execute if score magicLabLevel calculator matches 0 run data merge storage run {ModelData:60}
execute if score magicLabLevel calculator matches 1 run data merge storage run {ModelData:61}
execute if score magicLabLevel calculator matches 2 run data merge storage run {ModelData:62}
execute if score magicLabLevel calculator matches 3 run data merge storage run {ModelData:63}
loot replace entity @s enderchest.13 loot ui:technology/magic
loot replace entity @s enderchest.14 loot ui:background
execute if score alchemyLevel calculator matches 0 run data merge storage run {ModelData:70}
execute if score alchemyLevel calculator matches 1 run data merge storage run {ModelData:71}
execute if score alchemyLevel calculator matches 2 run data merge storage run {ModelData:72}
loot replace entity @s enderchest.15 loot ui:technology/alchemy
loot replace entity @s enderchest.16 loot ui:background
loot replace entity @s enderchest.17 loot ui:background
loot replace entity @s enderchest.18 loot ui:background
loot replace entity @s enderchest.19 loot ui:background
loot replace entity @s enderchest.20 loot ui:background
loot replace entity @s enderchest.21 loot ui:background
item replace entity @s enderchest.22 with barrier{ui:{id:"back",sound:"click"},display:{Name:'{"translate":"返回","color": "red","italic": false}'}}
loot replace entity @s enderchest.23 loot ui:background
loot replace entity @s enderchest.24 loot ui:background
loot replace entity @s enderchest.25 loot ui:background
loot replace entity @s enderchest.26 loot ui:background