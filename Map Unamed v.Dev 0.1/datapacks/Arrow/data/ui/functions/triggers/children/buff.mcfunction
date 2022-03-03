execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"back"}}
execute if score @s calculator matches 1.. run function ui:actions/mainpage/anchor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"flag"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/flag