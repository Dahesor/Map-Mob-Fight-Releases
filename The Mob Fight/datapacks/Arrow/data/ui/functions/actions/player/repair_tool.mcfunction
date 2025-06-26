data remove storage run Pay
data merge storage run {Pay:{copper:7b,iron:10b}}
data remove storage run PayName
data merge storage run {PayName:"repqir_tool"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run loot give @s loot game:item/repair_tool
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.repair_tool","color": "aqua"},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor