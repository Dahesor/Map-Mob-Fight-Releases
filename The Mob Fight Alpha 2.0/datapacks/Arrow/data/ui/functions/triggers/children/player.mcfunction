execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"back"}}
execute if score @s calculator matches 1.. run function ui:actions/mainpage/anchor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"sword"}}
execute if score @s calculator matches 1.. run function ui:actions/player/upgrade_sword
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"axe"}}
execute if score @s calculator matches 1.. run function ui:actions/player/upgrade_axe
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"armor"}}
execute if score @s calculator matches 1.. run function ui:actions/player/upgrade_armor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"crossbow"}}
execute if score @s calculator matches 1.. run function ui:actions/player/upgrade_crossbow
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"pickaxe"}}
execute if score @s calculator matches 1.. run function ui:actions/player/upgrade_pickaxe
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"bread"}} 0
execute if score @s calculator matches 1.. unless data entity @s Inventory[].tag{ui:{id:"bread"}} run function ui:actions/player/bread
execute if data entity @s Inventory[].tag{ui:{id:"bread"}} run function ui:actions/player/bread16
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"steak"}}
execute if score @s calculator matches 1.. run function ui:actions/player/steak
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"apple"}}
execute if score @s calculator matches 1.. run function ui:actions/player/apple
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"milk"}}
execute if score @s calculator matches 1.. run function ui:actions/player/milk
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"arrow"}}
execute if score @s calculator matches 1.. run function ui:actions/player/arrow
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"undie"}}
execute if score @s calculator matches 1.. run function ui:actions/player/undie
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"instant_heal"}}
execute if score @s calculator matches 1.. run function ui:actions/player/instant_heal
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"fire_potion"}}
execute if score @s calculator matches 1.. run function ui:actions/player/fire_potion
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"speed_potion"}}
execute if score @s calculator matches 1.. run function ui:actions/player/speed_potion
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"strength_potion"}}
execute if score @s calculator matches 1.. run function ui:actions/player/strength_potion
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"regen_potion"}}
execute if score @s calculator matches 1.. run function ui:actions/player/regen_potion
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"gold_shovel"}}
execute if score @s calculator matches 1.. run function ui:actions/player/gold_shovel