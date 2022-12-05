data remove storage run Pay
data merge storage run {Pay:{dirt:6b}}
data remove storage run PayName
data merge storage run {PayName:"arrow_regular"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s arrow{CanDestroy:["#game:breakable"],HideFlags:8,display:{Name:'{"translate":"item.arrow.normal_arrow","color": "gray","italic": false}'}} 16
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.arrow.normal_arrow","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor