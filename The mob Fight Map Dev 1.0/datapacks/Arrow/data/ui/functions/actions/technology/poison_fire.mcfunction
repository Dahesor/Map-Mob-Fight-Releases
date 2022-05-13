function game:plugin/score_copy
data remove storage run Pay
execute if score poisonFireLevel calculator matches 0 run data merge storage run {Pay:{dirt:10b,lapis:4b,quartz:4b}}
execute if score poisonFireLevel calculator matches 1 run data merge storage run {Pay:{dirt:24b,gold:10b,quartz:10b}}
execute if score poisonFireLevel calculator matches 2 run data merge storage run {Pay:{dirt:48b,gold:8b,diamond:1b,quartz:14b,netherite:1b}}
execute if score poisonFireLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score poisonFireLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/poison_fire
function ui:actions/technology/anchor

