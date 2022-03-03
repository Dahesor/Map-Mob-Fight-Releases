data merge storage run {Pay:[{"type":"diamond",Count:32b},{"type":"gold",Count:64b},{"type":"lapis",Count:64b}]}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s totem_of_undying
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.totem_of_undying","color": "light_purple"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor