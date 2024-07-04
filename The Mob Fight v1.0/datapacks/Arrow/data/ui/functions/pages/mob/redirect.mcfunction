execute if entity @s[team=red] run data modify storage run run set from storage game:red_shop Mob
execute if entity @s[team=blue] run data modify storage run run set from storage game:blue_shop Mob
execute if score game Data matches 0 run data modify storage run run set from storage game:red_shop Mob
scoreboard players set @s SubUI 1
function ui:pages/mob/get_24