function ui:actions/convert/calculate_energy
scoreboard players operation #count calculator = #temp calculator
scoreboard players operation #count calculator /= #30 calculator
scoreboard players operation #energy calculator = #temp calculator
scoreboard players operation #energy calculator %= #30 calculator
item replace entity @s enderchest.11 with air
scoreboard players operation @s convertEnergy = #energy calculator
function ui:pages/convert
item replace entity @s enderchest.16 with iron_ingot{isGameRes:2b,CanDestroy:['#game:breakable'],HideFlags:12}
item modify entity @s enderchest.16 ui:set_count