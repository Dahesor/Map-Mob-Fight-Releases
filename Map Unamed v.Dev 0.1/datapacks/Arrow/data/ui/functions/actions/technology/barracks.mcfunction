function game:plugin/score_copy

execute if score BarracksLevel calculator matches 0 run data merge storage run {Pay:[{"type":"iron",Count:4b},{"type":"gold",Count:4b},{"type":"copper",Count:4b},{"type":"dirt",Count:12b}]}
execute if score BarracksLevel calculator matches 1 run data merge storage run {Pay:[{"type":"iron",Count:8b},{"type":"gold",Count:8b},{"type":"copper",Count:8b},{"type":"dirt",Count:24b}]}
execute if score BarracksLevel calculator matches 2 run data merge storage run {Pay:[{"type":"iron",Count:17b},{"type":"gold",Count:20b},{"type":"copper",Count:17b},{"type":"dirt",Count:45b},{"type":"diamond",Count:6b}]}
execute if score BarracksLevel calculator matches 3 run data merge storage run {Pay:[{"type":"iron",Count:32b},{"type":"gold",Count:32b},{"type":"copper",Count:36b},{"type":"dirt",Count:128s},{"type":"diamond",Count:10b},{"type":"quartz",Count:12b}]}
execute if score BarracksLevel calculator matches 0..3 run function game:shop/pay/anchor
execute if score BarracksLevel calculator matches 0..3 if score @s Payment matches 0 run function game:run/technology/upgrade/barrack
function ui:actions/technology/anchor

