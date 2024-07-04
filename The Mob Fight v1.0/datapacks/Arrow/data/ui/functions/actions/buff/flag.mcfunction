data remove storage run Pay
data merge storage run {Pay:{dirt:20b,copper:20b,lapis:3b}}
data remove storage run PayName
data merge storage run {PayName:"flag"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run function game:plugin/flag/red
execute if score @s Payment matches 0 if entity @s[team=blue] run function game:plugin/flag/blue
execute if score @s Payment matches 0 run tellraw @a ["",{"translate":"chat.head.game","color": "aqua"}," ",{"selector":"@s"}," ",{"translate":"激活了"},"[",{"translate":"号令之旗","color": "gold"},"]"]
execute if score @s Payment matches 0 as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/buff/anchor