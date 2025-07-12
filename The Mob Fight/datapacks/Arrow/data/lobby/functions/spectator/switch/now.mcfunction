execute if data entity @s recipeBook{isGuiOpen:1b} run tag @s remove spec_menu_temp
execute if data entity @s recipeBook{isGuiOpen:0b} run tag @s add spec_menu_temp
scoreboard players set @s spec 0

execute if entity @s[team=spec] run return run function lobby:spectator/switch/log
execute if entity @s[team=spec_log] run return run function lobby:spectator/switch/eco
execute if entity @s[team=spec_eco] run return run function lobby:spectator/switch/hide
return run function lobby:spectator/switch/all