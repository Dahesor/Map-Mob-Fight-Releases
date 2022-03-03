function game:plugin/score_copy

execute if score magicLabLevel calculator matches 0 run data merge storage run {Pay:[{"type":"lapis",Count:8b},{"type":"dirt",Count:12b}]}
execute if score magicLabLevel calculator matches 1 run data merge storage run {Pay:[{"type":"quartz",Count:9b},{"type":"dirt",Count:24b},{"type":"gold",Count:6b}]}
execute if score magicLabLevel calculator matches 2 run data merge storage run {Pay:[{"type":"quartz",Count:8b},{"type":"dirt",Count:44b},{"type":"lapis",Count:12b},{"type":"diamond",Count:6b}]}
execute if score magicLabLevel calculator matches 3 run data merge storage run {Pay:[{"type":"quartz",Count:12b},{"type":"dirt",Count:72b},{"type":"gold",Count:12b},{"type":"lapis",Count:24b},{"type":"diamond",Count:10b}]}
execute if score magicLabLevel calculator matches 0..3 run function game:shop/pay/anchor
execute if score magicLabLevel calculator matches 0..3 if score @s Payment matches 0 run function game:run/technology/upgrade/magic_lab
function ui:actions/technology/anchor

