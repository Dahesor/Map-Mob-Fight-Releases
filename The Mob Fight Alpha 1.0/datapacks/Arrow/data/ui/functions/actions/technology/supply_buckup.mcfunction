function game:plugin/score_copy
data remove storage run Pay
execute if score supplyBuckupLevel calculator matches 0 run data merge storage run {Pay:{dirt:10b,copper:8b,iron:2b}}
execute if score supplyBuckupLevel calculator matches 1 run data merge storage run {Pay:{dirt:16b,copper:16b,iron:12b}}
execute if score supplyBuckupLevel calculator matches 2 run data merge storage run {Pay:{dirt:24b,gold:16b,diamond:6b,netherite:1b}}
execute if score supplyBuckupLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score supplyBuckupLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/supply
function ui:actions/technology/anchor

