function game:plugin/score_copy
data remove storage run Pay
execute if score alchemyLevel calculator matches 0 run data merge storage run {Pay:{dirt:8b,gold:4b,lapis:4b}}
execute if score alchemyLevel calculator matches 1 run data merge storage run {Pay:{dirt:16b,quartz:6b,lapis:14b}}
execute if score alchemyLevel calculator matches 2 run data merge storage run {Pay:{dirt:24b,quartz:4b,lapis:16b,diamond:2b,netherite:1b}}
execute if score alchemyLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score alchemyLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/alchemy
function ui:actions/technology/anchor

