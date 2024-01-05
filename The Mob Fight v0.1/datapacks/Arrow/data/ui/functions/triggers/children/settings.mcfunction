execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"back"}}
execute if score @s calculator matches 1.. run function ui:actions/mainpage/anchor

execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"surrender"}}
execute if score @s calculator matches 1.. run function ui:actions/settings/confirm_surrender
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"surrender_cancel"}}
execute if score @s calculator matches 1.. run function ui:actions/settings/cancel_surrender
