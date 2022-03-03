execute if entity @s[team=red] run data modify storage run run set from storage game:red_shop Mob
execute if entity @s[team=blue] run data modify storage run run set from storage game:blue_shop Mob

scoreboard players operation @s calculator = @s SubUI
execute if score @s SubUI matches 2.. run function ui:actions/mob/loop
function ui:triggers/dynamic/exhaustion
function game:shop/sell/coin_check
function ui:actions/mob/rearrange