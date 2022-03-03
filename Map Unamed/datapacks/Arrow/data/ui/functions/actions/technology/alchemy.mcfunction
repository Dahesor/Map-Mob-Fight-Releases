function game:plugin/score_copy

execute if score alchemyLevel calculator matches 0 run data merge storage run {Pay:[{"type":"lapis",Count:6b},{"type":"dirt",Count:8b}]}
execute if score alchemyLevel calculator matches 1 run data merge storage run {Pay:[{"type":"lapis",Count:24b},{"type":"dirt",Count:16b},{"type":"quartz",Count:8b}]}
execute if score alchemyLevel calculator matches 2 run data merge storage run {Pay:[{"type":"lapis",Count:32b},{"type":"dirt",Count:32b},{"type":"quartz",Count:16b},{"type":"diamond",Count:6b}]}
execute if score alchemyLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score alchemyLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/alchemy
function ui:actions/technology/anchor

