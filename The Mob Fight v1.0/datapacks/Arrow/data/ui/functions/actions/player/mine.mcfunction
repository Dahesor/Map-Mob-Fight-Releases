data remove storage run Pay
data merge storage run {Pay:{iron:5b,copper:5b,dirt:12b}}
data remove storage run PayName
data merge storage run {PayName:"Mine"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run loot give @s loot game:item/mine
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.mine","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor