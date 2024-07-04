data remove storage run Pay
data merge storage run {Pay:{dirt:1b}}
data remove storage run PayName
data merge storage run {PayName:"bread"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s bread{CanDestroy:["#game:breakable"],HideFlags:8}
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.bread","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
clear @s #ui:buttons{ui:{id:"bread"}}
function ui:actions/player/anchor