data remove storage run Pay
data merge storage run {Pay:{iron:10b,copper:10b,gold:10b,diamond:10b,lapis:10b}}
data remove storage run PayName
data merge storage run {PayName:"trade"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run function game:utility/trade_red
execute if score @s Payment matches 0 if entity @s[team=blue] run function game:utility/trade_blue
execute if score @s Payment matches 0 run function game:utility/trade_random
function ui:actions/buff/anchor