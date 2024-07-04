execute store result score @s convertCount run data get entity @s EnderItems[{Slot:11b}].Count
execute unless data entity @s EnderItems[{Slot:11b}] run scoreboard players set @s convertItem 0
execute if data entity @s EnderItems[{Slot:11b,id:"minecraft:dirt"}] run scoreboard players set @s convertItem 1
execute if data entity @s EnderItems[{Slot:11b,id:"minecraft:iron_ingot"}] run scoreboard players set @s convertItem 2
execute if data entity @s EnderItems[{Slot:11b,id:"minecraft:copper_ingot"}] run scoreboard players set @s convertItem 3
execute if data entity @s EnderItems[{Slot:11b,id:"minecraft:gold_ingot"}] run scoreboard players set @s convertItem 4
execute if data entity @s EnderItems[{Slot:11b,id:"minecraft:lapis_lazuli"}] run scoreboard players set @s convertItem 5
execute if data entity @s EnderItems[{Slot:11b,id:"minecraft:diamond"}] run scoreboard players set @s convertItem 6

function ui:actions/convert/calculate_energy
function ui:pages/convert/place_options