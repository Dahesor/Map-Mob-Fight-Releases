function game:plugin/score_copy
data remove storage run Pay
data merge storage run {PayName:"Tech: Magic"}

execute if score magic_occult calculator matches 0 run data merge storage run {Pay:{gold:4b,lapis:4b,iron:4b}}
execute if score magic_occult calculator matches 1 run data merge storage run {Pay:{gold:8b,lapis:4b,diamond:4b,copper:8b}}
execute if score magic_occult calculator matches 2 run data merge storage run {Pay:{gold:12b,lapis:12b,diamond:12b,netherite:1b}}
execute if score magic_occult calculator matches 2 store result storage run Pay.netherite byte 1 run scoreboard players get techNetherite calculator
execute if score magic_occult calculator matches 0..2 run function game:shop/pay/anchor

execute if score @s Payment matches 0 run function game:utility/eco/calc
execute if score @s Payment matches 0 run scoreboard players add @s scb.support 30

execute if score magic_occult calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/magic_occult
function ui:actions/technology/anchor

