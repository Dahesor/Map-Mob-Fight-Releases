function game:plugin/score_copy

execute if score poisonBoilLevel calculator matches 0 run data merge storage run {Pay:[{"type":"lapis",Count:2b},{"type":"copper",Count:6b},{"type":"dirt",Count:16b}]}
execute if score poisonBoilLevel calculator matches 1 run data merge storage run {Pay:[{"type":"diamond",Count:4b},{"type":"lapis",Count:10b},{"type":"dirt",Count:24b}]}
execute if score poisonBoilLevel calculator matches 2 run data merge storage run {Pay:[{"type":"copper",Count:20b},{"type":"diamond",Count:6b},{"type":"lapis",Count:16b},{"type":"dirt",Count:48b}]}
execute if score poisonBoilLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score poisonBoilLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/poison
function ui:actions/technology/anchor

