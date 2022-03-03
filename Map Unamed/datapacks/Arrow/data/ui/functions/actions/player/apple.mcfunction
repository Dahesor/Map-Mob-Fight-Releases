function game:plugin/score_copy


execute if score supplyBuckupLevel calculator matches 2..3 run data merge storage run {Pay:[{"type":"dirt",Count:4b},{"type":"gold",Count:5b}]}
execute if score supplyBuckupLevel calculator matches 4.. run data merge storage run {Pay:[{"type":"gold",Count:5b}]}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s golden_apple
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.golden_apple","color": "aqua"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor