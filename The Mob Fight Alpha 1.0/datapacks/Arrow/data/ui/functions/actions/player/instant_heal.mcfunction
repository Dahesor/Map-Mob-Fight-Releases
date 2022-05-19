data remove storage run Pay
data merge storage run {Pay:{dirt:12b,gold:5b,quartz:2b}}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run loot give @s loot game:item/instant_heal_spell
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"瞬间治疗符","color": "green","italic": false},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor