function game:plugin/score_copy
data remove storage run Pay
execute if score BarracksLevel calculator matches 0 run data merge storage run {Pay:{dirt:10b,copper:4b,iron:3b,gold:3b}}
execute if score BarracksLevel calculator matches 1 run data merge storage run {Pay:{dirt:24b,copper:8b,iron:8b,gold:8b}}
execute if score BarracksLevel calculator matches 2 run data merge storage run {Pay:{dirt:42b,copper:16b,iron:16b,gold:8b,netherite:1b}}
execute if score BarracksLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score BarracksLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/barrack
function ui:actions/technology/anchor

