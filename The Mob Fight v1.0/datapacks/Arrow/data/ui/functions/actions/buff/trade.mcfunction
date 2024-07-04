data remove storage run Pay
data merge storage run {Pay:{iron:16b,copper:16b,gold:16b,diamond:16b,lapis:16b,dirt:24b}}
data remove storage run PayName
data merge storage run {PayName:"trade"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run function game:utility/trade_red
execute if score @s Payment matches 0 if entity @s[team=blue] run function game:utility/trade_blue
execute if score @s Payment matches 0 at @s run function game:utility/trade_random
function ui:actions/buff/anchor