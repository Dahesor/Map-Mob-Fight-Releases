execute if entity @s[tag=shop.right.limit] run return run function ui:actions/player/random/limited
data modify storage run ThisRandom set from storage run ShopRandom[0]
function ui:actions/player/random/mod
execute if score @s Payment matches 0 run tag @s add shop.right.limit
function ui:actions/player/anchor