data merge storage run {Pay:[{"type":"dirt",Count:7b}]}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s arrow 16
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.arrow","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor