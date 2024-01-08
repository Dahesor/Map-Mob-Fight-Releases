data remove storage run Pay
data merge storage run {Pay:{dirt:20b,diamond:7b}}
data remove storage run PayName
data merge storage run {PayName:"flare"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 run loot give @s loot game:item/flare
execute if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.flare","color": "green","italic": false},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor