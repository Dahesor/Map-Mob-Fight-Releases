function game:plugin/score_copy
data remove storage run Pay
execute if score magic_occult calculator matches 0 run data merge storage run {Pay:{gold:3b,lapis:4b,quartz:1b}}
execute if score magic_occult calculator matches 1 run data merge storage run {Pay:{gold:6b,lapis:4b,diamond:4b,quartz:4b}}
execute if score magic_occult calculator matches 2 run data merge storage run {Pay:{gold:9b,lapis:7b,diamond:8b,quartz:6b,netherite:1b}}
execute if score magic_occult calculator matches 0..2 run function game:shop/pay/anchor
execute if score magic_occult calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/magic_occult
function ui:actions/technology/anchor

