scoreboard players set #tempC calculator 0
scoreboard players set #tempT calculator 1
execute store result score #temp calculator run data get entity @s EnderItems[{Slot:11b}].Count
execute unless score #temp calculator = @s convertCount run scoreboard players set #tempC calculator 1
data modify storage run type set from entity @s EnderItems[{Slot:11b}].id
execute unless predicate ui:valid_input run data merge storage run {type:"minecraft:air"}
execute if score @s convertItem matches 0 if data storage run {type:"minecraft:air"} run scoreboard players set #tempT calculator 0
execute if score @s convertItem matches 1 if data storage run {type:"minecraft:dirt"} run scoreboard players set #tempT calculator 0
execute if score @s convertItem matches 2 if data storage run {type:"minecraft:iron_ingot"} run scoreboard players set #tempT calculator 0
execute if score @s convertItem matches 3 if data storage run {type:"minecraft:copper_ingot"} run scoreboard players set #tempT calculator 0
execute if score @s convertItem matches 4 if data storage run {type:"minecraft:gold_ingot"} run scoreboard players set #tempT calculator 0
execute if score @s convertItem matches 5 if data storage run {type:"minecraft:lapis_lazuli"} run scoreboard players set #tempT calculator 0
execute if score @s convertItem matches 6 if data storage run {type:"minecraft:diamond"} run scoreboard players set #tempT calculator 0
execute if predicate ui:input_check run function ui:triggers/dynamic/update_convert