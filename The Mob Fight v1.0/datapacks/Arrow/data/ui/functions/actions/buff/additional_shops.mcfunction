data remove storage run Pay
data merge storage run {Pay:{dirt:24b,copper:5b,gold:16b}}
data merge storage run {PayName:"additional_shop"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run function game:plugin/addtional_chests_red
execute if score @s Payment matches 0 if entity @s[team=blue] run function game:plugin/addtional_chests_blue
execute if score @s Payment matches 0 if entity @s[team=red] run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"shop.shop_additions","color": "green"},"]"]
execute if score @s Payment matches 0 if entity @s[team=blue] run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"shop.shop_additions","color": "green"},"]"]
execute if score @s Payment matches 0 if entity @s[team=red] as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 if entity @s[team=blue] as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute as @a[scores={UI=70}] run function ui:actions/buff/anchor