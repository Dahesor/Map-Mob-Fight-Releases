execute store result score @s calculator run clear @s #ui:spaceholders{UISpaceHolder:1b}
execute if score @s calculator matches 1.. run function ui:foolproof/check
execute if score @s calculator matches 1.. run function ui:foolproof/redirect
execute store result score @s calculator run clear @s #arrows{shell:{dynamic:{}}}
execute if score @s calculator matches 1.. run function ui:triggers/dynamic/specialize
execute store result score @s calculator run clear @s #ui:buttons{ui:{}} 0
execute if score @s calculator matches 1.. run function ui:triggers/specialize
