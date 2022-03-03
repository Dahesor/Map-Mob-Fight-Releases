function game:plugin/score_copy

execute if score supplyBuckupLevel calculator matches 0 run data merge storage run {Pay:[{"type":"copper",Count:8b},{"type":"dirt",Count:10b}]}
execute if score supplyBuckupLevel calculator matches 1 run data merge storage run {Pay:[{"type":"iron",Count:12b},{"type":"dirt",Count:16b}]}
execute if score supplyBuckupLevel calculator matches 2 run data merge storage run {Pay:[{"type":"dirt",Count:24b},{"type":"gold",Count:16b},{"type":"diamond",Count:6b}]}
execute if score supplyBuckupLevel calculator matches 3 run data merge storage run {Pay:[{"type":"dirt",Count:32b},{"type":"gold",Count:12b},{"type":"copper",Count:16b},{"type":"iron",Count:12b},{"type":"diamond",Count:10b}]}
execute if score supplyBuckupLevel calculator matches 0..3 run function game:shop/pay/anchor
execute if score supplyBuckupLevel calculator matches 0..3 if score @s Payment matches 0 run function game:run/technology/upgrade/supply
function ui:actions/technology/anchor

