function game:plugin/score_copy
data remove storage run Pay
data merge storage run {Pay:{copper:4b,gold:5b}}
data remove storage run PayName
data merge storage run {PayName:"shovel"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run loot give @s loot game:item/golden_shovel
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.golden_shovel","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor