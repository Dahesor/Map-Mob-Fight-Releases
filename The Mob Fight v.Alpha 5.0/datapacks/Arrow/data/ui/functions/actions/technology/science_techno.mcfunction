function game:plugin/score_copy
data remove storage run Pay
data merge storage run {PayName:"Tech: Science"}

execute if score science_techno calculator matches 0 run data merge storage run {Pay:{dirt:10b,iron:8b}}
execute if score science_techno calculator matches 1 run data merge storage run {Pay:{dirt:16b,iron:10b,copper:12b}}
execute if score science_techno calculator matches 2 run data merge storage run {Pay:{dirt:24b,iron:12b,copper:10b,gold:16b,netherite:1b}}
execute if score science_techno calculator matches 0..2 run function game:shop/pay/anchor
execute if score science_techno calculator matches 0..2 if score @s Payment matches 0 run function game:run/technology/upgrade/science_techno
function ui:actions/technology/anchor

