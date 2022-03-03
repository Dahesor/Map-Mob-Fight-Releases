data merge storage run {Pay:[{"type":"iron",Count:1b},{"type":"gold",Count:6b},{"type":"dirt",Count:12b}]}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run give @s golden_shovel{CanDestroy:["#game:breakable"],HideFlags:8,gameItem:{id:"gold_shovel"}}
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.golden_shovel","color": "yellow"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor