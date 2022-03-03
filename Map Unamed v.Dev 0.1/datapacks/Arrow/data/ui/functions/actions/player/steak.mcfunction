function game:plugin/score_copy

execute if score supplyBuckupLevel calculator matches 1 run data merge storage run {Pay:[{"type":"dirt",Count:7b}]}
execute if score supplyBuckupLevel calculator matches 2 run data merge storage run {Pay:[{"type":"dirt",Count:6b}]}
execute if score supplyBuckupLevel calculator matches 3 run data merge storage run {Pay:[{"type":"dirt",Count:5b}]}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s cooked_beef
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.cooked_beef","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor