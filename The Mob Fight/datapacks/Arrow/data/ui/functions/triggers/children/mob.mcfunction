execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"back"}}
execute if score @s calculator matches 1.. run function ui:actions/mainpage/anchor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"up"}}
execute if score @s calculator matches 1.. run function ui:actions/mob/up
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"down"}}
execute if score @s calculator matches 1.. run function ui:actions/mob/down