function game:plugin/score_copy
data remove storage run Pay
data merge storage run {Pay:{dirt:8b,lapis:4b,quartz:1b}}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run loot give @s loot ui:player/potions/fire_resistence_give
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.potion.effect.fire_resistance","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor