data remove storage run Pay
data merge storage run {Pay:{diamond:10b,lapis:5b,gold:5b}}
data remove storage run PayName
data merge storage run {PayName:"blindness"}


function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run function game:plugin/blindness/blue
execute if score @s Payment matches 0 if entity @s[team=blue] run function game:plugin/blindness/red
execute if score @s Payment matches 0 run tellraw @a ["",{"translate":"chat.head.game","color": "aqua"},{"selector":"@s"}," ",{"translate":"激活了"},"[",{"translate":"失明轰炸","color": "blue"},"]"]
execute if score @s Payment matches 0 as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/buff/anchor