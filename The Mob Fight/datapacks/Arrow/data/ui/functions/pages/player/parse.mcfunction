data modify storage run ThisRandom set from storage run ShopRandom[0]
function ui:pages/player/__place_icon with storage run ThisRandom
data modify storage run item set from entity @s EnderItems[{Slot:7b}]
function ui:pages/player/insert_data
item modify entity @s enderchest.7 ui:modify_random
execute if entity @s[tag=shop.right.limit] run loot replace entity @s enderchest.7 loot ui:player/random/locked
item modify entity @s enderchest.7 ui:shift_random
item replace entity @s enderchest.8 from entity @s enderchest.7

data modify storage run ThisRandom set from storage run ShopRandom[1]
function ui:pages/player/__place_icon with storage run ThisRandom
data modify storage run item set from entity @s EnderItems[{Slot:7b}]
function ui:pages/player/insert_data
item modify entity @s enderchest.7 ui:modify_random
execute if entity @s[tag=shop.left.limit] run loot replace entity @s enderchest.7 loot ui:player/random/locked
