function game:plugin/score_copy
data remove storage run Pay
data merge storage run {Pay:{copper:4b,gold:5b}}
execute if score destroyMode Data matches 1 run data modify storage run Pay set value {copper:8b,diamond:4b}

data remove storage run PayName
data merge storage run {PayName:"shovel"}

function game:shop/pay/anchor

execute if score @s Payment matches 0 run function game:utility/eco/calc

execute if score @s Payment matches 0 unless score destroyMode Data matches 1 run loot give @s loot game:item/golden_shovel
execute if score @s Payment matches 0 if score destroyMode Data matches 1 run loot give @s loot game:item/dirt_cleaner
execute if score @s Payment matches 0 unless score destroyMode Data matches 1 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.golden_shovel","color": "yellow"},"]"]
execute if score @s Payment matches 0 if score destroyMode Data matches 1 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.dirt_cleaner","color": "blue","italic": false},"]"]
execute if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/player/anchor