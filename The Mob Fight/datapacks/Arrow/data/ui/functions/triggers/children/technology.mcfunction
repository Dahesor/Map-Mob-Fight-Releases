execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"back"}}
execute if score @s calculator matches 1.. run function ui:actions/mainpage/anchor

execute if score game Data matches 0 run return run function ui:foolproof/preview

execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"society"}}
execute if score @s calculator matches 1.. run function ui:actions/technology/society_populate
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"science"}}
execute if score @s calculator matches 1.. run function ui:actions/technology/science_techno
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"magic"}}
execute if score @s calculator matches 1.. run function ui:actions/technology/magic_occult