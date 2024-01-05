function game:plugin/score_copy
data remove storage run PayName
data merge storage run {PayName:"golden_apple"}

data remove storage run Pay
execute unless score GameMode Data matches 1 if score society_populate calculator matches 2 run data merge storage run {Pay:{dirt:9b,gold:5b}}
execute unless score GameMode Data matches 1 if score society_populate calculator matches 3.. run data merge storage run {Pay:{dirt:6b,gold:5b}}
execute if score GameMode Data matches 1 if score society_populate calculator matches 2..3 run data merge storage run {Pay:{dirt:12b,diamond:5b}}

function game:shop/pay/anchor
execute if score @s Payment matches 0 unless score GameMode Data matches 1 run give @s golden_apple{CanDestroy:["#game:breakable"],HideFlags:8}
execute if score @s Payment matches 0 unless score GameMode Data matches 1 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.golden_apple","color": "aqua"},"]"]
execute if score @s Payment matches 0 if score GameMode Data matches 1 run give @s apple{CanDestroy:["#game:breakable"],HideFlags:8,shield:1b,display:{Lore:['""','{"translate":"item.shield_apple.lore.1","color": "gray","italic": false}']}}
execute if score @s Payment matches 0 if score GameMode Data matches 1 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.shield_apple","color": "aqua"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor