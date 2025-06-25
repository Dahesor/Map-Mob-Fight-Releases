function ui:foolproof/check
execute store result score @s calculator run clear @s #ui:buttons{ui:{sound:"click"}} 0
execute if score @s calculator matches 1.. at @s run playsound ui.button.click master @s ~ ~ ~ 0.8 1.4
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"need_tcho"}}
execute if score game Data matches 1.. if score @s calculator matches 1.. run function ui:actions/generic/need_technology
execute if score @s UI matches 1 run function ui:triggers/children/mainpage
execute if score @s UI matches 10 run function ui:triggers/children/mob
execute if score @s UI matches 30 run function ui:triggers/children/player
execute if score @s UI matches 50 run function ui:triggers/children/technology
execute if score @s UI matches 70 run function ui:triggers/children/buff
execute if score @s UI matches 100 run function ui:triggers/children/convert
execute if score @s UI matches 9999 run function ui:triggers/children/settings