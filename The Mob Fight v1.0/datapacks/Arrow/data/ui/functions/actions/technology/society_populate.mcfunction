function game:plugin/score_copy
data remove storage run Pay
data merge storage run {PayName:"Tech: Civilization"}

execute if score society_populate calculator matches 0 run data merge storage run {Pay:{dirt:24b,copper:2b,iron:2b}}
execute if score society_populate calculator matches 1 run data merge storage run {Pay:{dirt:52b,copper:5b,iron:5b,gold:3b}}
execute if score society_populate calculator matches 2 run data merge storage run {Pay:{dirt:84b,lapis:16b,diamond:8b,netherite:1b}}
execute if score society_populate calculator matches 2 store result storage run Pay.netherite byte 1 run scoreboard players get techNetherite calculator
execute if score society_populate calculator matches 0..2 run function game:shop/pay/anchor
execute if score society_populate calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/society_populate
function ui:actions/technology/anchor

