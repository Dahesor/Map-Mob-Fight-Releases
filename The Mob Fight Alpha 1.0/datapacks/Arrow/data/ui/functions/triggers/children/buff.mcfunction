execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"back"}}
execute if score @s calculator matches 1.. run function ui:actions/mainpage/anchor
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"flag"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/flag

execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"new_crystal"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/new_crystal
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"upgrade_beam"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/upgrade_beam

execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"sharpness"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/sharpness
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"sweep"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/sweep
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"efficiency"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/efficiency
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"proj_protection"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/proj_protection
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"blast_protection"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/blast_protection
execute store result score @s calculator run clear @s #ui:buttons{ui:{id:"power"}}
execute if score @s calculator matches 1.. run function ui:actions/buff/power