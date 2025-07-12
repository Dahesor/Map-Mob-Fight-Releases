execute if entity @s[team=red] if score flag_cd red > $gametime Data run return run function ui:actions/buff/flag_cd
execute if entity @s[team=blue] if score flag_cd blue > $gametime Data run return run function ui:actions/buff/flag_cd

data remove storage run Pay
data merge storage run {Pay:{dirt:20b,copper:20b,lapis:3b}}
data remove storage run PayName
data merge storage run {PayName:{"translate":"号令之旗","color": "gray"}}

function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run function game:plugin/flag/red
execute if score @s Payment matches 0 if entity @s[team=blue] run function game:plugin/flag/blue
execute if score @s Payment matches 0 run tellraw @a ["",{"translate":"chat.head.game","color": "aqua"}," ",{"selector":"@s"}," ",{"translate":"激活了"},"[",{"translate":"号令之旗","color": "gold"},"]"]
execute if score @s Payment matches 0 as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 run scoreboard players add @s scb.support 20
function ui:actions/buff/anchor