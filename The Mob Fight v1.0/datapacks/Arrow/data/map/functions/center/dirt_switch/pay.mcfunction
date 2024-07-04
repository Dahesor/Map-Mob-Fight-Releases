data remove storage run Pay
data merge storage run {Pay:{copper:14b}}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run return 1
return fail