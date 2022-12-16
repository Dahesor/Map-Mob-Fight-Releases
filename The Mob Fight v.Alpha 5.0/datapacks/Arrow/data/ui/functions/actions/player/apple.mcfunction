function game:plugin/score_copy
data remove storage run PayName
data merge storage run {PayName:"golden_apple"}

data remove storage run Pay
execute if score society_populate calculator matches 2..3 run data merge storage run {Pay:{dirt:9b,gold:5b}}
execute if score society_populate calculator matches 4.. run data merge storage run {Pay:{dirt:3b,gold:5b}}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s golden_apple{CanDestroy:["#game:breakable"],HideFlags:8}
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.golden_apple","color": "aqua"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor