data remove storage run PayName
data merge storage run {PayName:"Random Item"}

data remove storage run Pay
data modify storage run Pay set from storage run ThisRandom.Price
function game:shop/pay/anchor

execute if score @s Payment matches 0 run function ui:actions/player/random/__get_item with storage run ThisRandom
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"storage":"run","nbt": "ThisRandom.Name","interpret": true},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~