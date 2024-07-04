execute if entity @s[predicate=!game:places/in_gaming_area] run return run function ui:pages/settings
scoreboard players set @s surrender 1
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.2 1
function ui:actions/settings/calculate_surrender
function ui:pages/settings