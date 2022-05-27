execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"back"}}
execute if score @s calculator matches 1.. run function ui:actions/mainpage/anchor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"society"}}
execute if score @s calculator matches 1.. run function ui:actions/technology/society_populate
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"science"}}
execute if score @s calculator matches 1.. run function ui:actions/technology/science_techno
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"magic"}}
execute if score @s calculator matches 1.. run function ui:actions/technology/magic_occult