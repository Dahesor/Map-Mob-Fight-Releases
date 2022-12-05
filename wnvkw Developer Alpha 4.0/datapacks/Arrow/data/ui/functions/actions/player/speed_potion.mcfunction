function game:plugin/score_copy
data remove storage run Pay
data merge storage run {Pay:{dirt:10b,gold:1b,lapis:4b}}
data remove storage run PayName
data merge storage run {PayName:"potion_speed"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run loot give @s loot ui:player/potions/speed_give
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.potion.effect.swiftness","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor