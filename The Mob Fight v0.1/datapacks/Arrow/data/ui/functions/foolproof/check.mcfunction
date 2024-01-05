data modify storage run temp set from entity @s EnderItems
data remove storage run temp[{tag:{ui:{}}}]
data remove storage run temp[{tag:{UISpaceHolder:1b}}]
data remove storage run temp[{tag:{shell:{dynamic:{}}}}]

execute if score @s UI matches 100 store result score #$%% calculator run clear @s #ui:buttons{ui:{input:1b}} 0
execute if score #$%% calculator matches 1.. at @s run data remove storage run temp[{Slot:11b}]

execute if data storage run temp[0] at @s run function ui:foolproof/return_item
data remove storage run temp