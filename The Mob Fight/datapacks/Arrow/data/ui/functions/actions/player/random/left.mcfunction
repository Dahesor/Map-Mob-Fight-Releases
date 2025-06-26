execute if entity @s[tag=shop.left.limit] run return run function ui:actions/player/random/limited
data modify storage run ThisRandom set from storage run ShopRandom[1]
function ui:actions/player/random/mod
execute if score @s Payment matches 0 run tag @s add shop.left.limit
function ui:actions/player/anchor