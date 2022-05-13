function game:plugin/score_copy
data remove storage run Pay
execute if score metalWorkLevel calculator matches 0 run data merge storage run {Pay:{dirt:12b,iron:5b,copper:5b}}
execute if score metalWorkLevel calculator matches 1 run data merge storage run {Pay:{dirt:24b,iron:10b,copper:10b,gold:10b}}
execute if score metalWorkLevel calculator matches 2 run data merge storage run {Pay:{dirt:28b,iron:14b,copper:14b,gold:14b,netherite:1b}}
execute if score metalWorkLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score metalWorkLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/metal
function ui:actions/technology/anchor

