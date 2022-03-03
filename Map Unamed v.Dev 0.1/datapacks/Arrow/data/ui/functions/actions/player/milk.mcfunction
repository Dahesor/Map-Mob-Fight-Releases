data merge storage run {Pay:[{"type":"iron",Count:4b},{"type":"lapis",Count:4b}]}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s milk_bucket
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.milk_bucket","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor