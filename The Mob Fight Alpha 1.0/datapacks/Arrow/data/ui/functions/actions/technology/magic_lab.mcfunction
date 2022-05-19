function game:plugin/score_copy
data remove storage run Pay
execute if score magicLabLevel calculator matches 0 run data merge storage run {Pay:{dirt:12b,lapis:8b}}
execute if score magicLabLevel calculator matches 1 run data merge storage run {Pay:{dirt:24b,gold:6b}}
execute if score magicLabLevel calculator matches 2 run data merge storage run {Pay:{dirt:44b,lapis:8b,diamond:5b,quartz:9b,netherite:1b}}
execute if score magicLabLevel calculator matches 0..2 run function game:shop/pay/anchor
execute if score magicLabLevel calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/magic_lab
function ui:actions/technology/anchor

