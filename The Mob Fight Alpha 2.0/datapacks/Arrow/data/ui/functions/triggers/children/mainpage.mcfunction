execute store result score @s calculator run clear @s #ui:buttons{ui:{id:1b}}
execute if score @s calculator matches 1.. run function ui:actions/mob/anchor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"player"}}
execute if score @s calculator matches 1.. run function ui:actions/player/anchor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:2b}}
execute if score @s calculator matches 1.. run function ui:actions/technology/anchor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:6b}}
execute if score @s calculator matches 1.. run function ui:actions/buff/anchor