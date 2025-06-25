data remove storage run Pay
data merge storage run {Pay:{copper:5b,dirt:8b}}
data remove storage run PayName
data merge storage run {PayName:"shield"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s[team=red] shield{CanDestroy:["#game:breakable"],HideFlags:8,BlockEntityTag:{Patterns:[{Pattern:cre,Color:15}],Base:14},Damage:200}
execute if score @s Payment matches 0 run give @s[team=blue] shield{CanDestroy:["#game:breakable"],HideFlags:8,BlockEntityTag:{Patterns:[{Pattern:sku,Color:15}],Base:11},Damage:200}
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"旧盾牌","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor