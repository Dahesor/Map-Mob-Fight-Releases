data remove storage run Pay
execute unless entity @s[tag=canBuyTotem] run tellraw @s [{"translate":"[商店] ","color": "red"},{"translate":"该物品限购1次"}]
execute unless entity @s[tag=canBuyTotem] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.2
execute if entity @s[tag=canBuyTotem] run data merge storage run {Pay:{dirt:12b,gold:64b,lapis:32b,diamond:24b}}
data remove storage run PayName
data merge storage run {PayName:"undie"}

execute if entity @s[tag=canBuyTotem] run function game:shop/pay/anchor
execute if entity @s[tag=canBuyTotem] if score @s Payment matches 0 run give @s totem_of_undying{CanDestroy:["#game:breakable"],HideFlags:8}
execute if entity @s[tag=canBuyTotem] if score @s Payment matches 0 run tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"购买了"},"[",{"translate":"item.minecraft.totem_of_undying","color": "light_purple"},"]"]
execute if entity @s[tag=canBuyTotem] if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if entity @s[tag=canBuyTotem] if score @s Payment matches 0 run tag @s remove canBuyTotem
function ui:actions/player/anchor