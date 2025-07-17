scoreboard players remove nextRandomItem Data 1
execute unless score nextRandomItem Data matches ..-120 run return fail
scoreboard players set nextRandomItem Data 3500

tellraw @a [{"translate": "chat.head.game","color": "aqua"}," ",{"translate": "shop.random.new","color": "green"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#Temp
data modify storage run ShopRandom set value []
execute unless data storage run BackupRandom[1] run data modify storage run BackupRandom set from storage game:shop random_list

function game:shop/random/get_entry
data modify storage run ShopRandom append from storage run ThisRandom
function game:shop/random/get_entry
data modify storage run ShopRandom append from storage run ThisRandom

tellraw @a {"translate": "shop.random.item_message","color": "yellow","with": [{"nbt": "ShopRandom[].Name","storage": "run","interpret": true,"separator": {"text": ", ","color": "gray"}}]}

tag @a remove shop.left.limit
tag @a remove shop.right.limit
execute as @a if score @s UI matches 30 run function ui:actions/player/anchor