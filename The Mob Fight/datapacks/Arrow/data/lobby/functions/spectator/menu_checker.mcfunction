tag @s remove spec_menu_temp
execute if data entity @s recipeBook{isGuiOpen:1b} run tag @s add spec_menu_temp

execute if entity @s[tag=spec_menu_temp,tag=!spec_menu] run function lobby:spectator/show
execute if entity @s[tag=!spec_menu_temp,tag=spec_menu] run function lobby:spectator/hide