data modify storage run temp set from entity @s EnderItems
data remove storage run temp[{tag:{ui:{}}}]
data remove storage run temp[{tag:{UISpaceHolder:1b}}]
data remove storage run temp[{tag:{shell:{dynamic:{}}}}]
execute if data storage run temp[0] at @s run function ui:foolproof/return_item
execute if data storage run temp[0] at @s run function ui:foolproof/return_item
data remove storage run temp