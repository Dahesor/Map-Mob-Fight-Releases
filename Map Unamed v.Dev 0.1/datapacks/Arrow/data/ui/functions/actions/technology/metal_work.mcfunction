function game:plugin/score_copy

execute if score metalWorkLevel calculator matches 0 run data merge storage run {Pay:[{"type":"iron",Count:8b},{"type":"copper",Count:8b},{"type":"dirt",Count:12b}]}
execute if score metalWorkLevel calculator matches 1 run data merge storage run {Pay:[{"type":"iron",Count:12b},{"type":"gold",Count:12b},{"type":"copper",Count:12b},{"type":"dirt",Count:24b}]}
execute if score metalWorkLevel calculator matches 2 run data merge storage run {Pay:[{"type":"iron",Count:16b},{"type":"gold",Count:16b},{"type":"copper",Count:16b},{"type":"dirt",Count:48b},{"type":"diamond",Count:6b}]}
execute if score metalWorkLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score metalWorkLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/metal
function ui:actions/technology/anchor

