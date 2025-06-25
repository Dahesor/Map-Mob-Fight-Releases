execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"back"}}
execute if score @s calculator matches 1.. run function ui:actions/mainpage/anchor

execute if score game Data matches 0 run return run function ui:foolproof/preview

execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"copper"}}
execute if score @s calculator matches 1.. run function ui:actions/convert/copper
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"iron"}}
execute if score @s calculator matches 1.. run function ui:actions/convert/iron
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"gold"}}
execute if score @s calculator matches 1.. run function ui:actions/convert/gold
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"lapis"}}
execute if score @s calculator matches 1.. run function ui:actions/convert/lapis
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"diamond"}}
execute if score @s calculator matches 1.. run function ui:actions/convert/diamond
