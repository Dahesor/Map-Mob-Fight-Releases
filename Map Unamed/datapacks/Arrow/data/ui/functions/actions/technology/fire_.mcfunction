function game:plugin/score_copy

execute if score fireEssenceLevel calculator matches 0 run data merge storage run {Pay:[{"type":"lapis",Count:4b},{"type":"quartz",Count:4b},{"type":"dirt",Count:10b}]}
execute if score fireEssenceLevel calculator matches 1 run data merge storage run {Pay:[{"type":"diamond",Count:4b},{"type":"quartz",Count:10b},{"type":"dirt",Count:24b}]}
execute if score fireEssenceLevel calculator matches 2 run data merge storage run {Pay:[{"type":"gold",Count:8b},{"type":"diamond",Count:6b},{"type":"quartz",Count:16b},{"type":"dirt",Count:52b}]}
execute if score fireEssenceLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score fireEssenceLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/_fire
function ui:actions/technology/anchor

