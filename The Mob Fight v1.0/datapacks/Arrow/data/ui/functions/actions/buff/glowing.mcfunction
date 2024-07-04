data remove storage run Pay
data merge storage run {Pay:{diamond:2b,copper:6b,iron:5b}}
data remove storage run PayName
data merge storage run {PayName:"glowing"}
function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run effect give @a[team=blue] glowing 50 0 true
execute if score @s Payment matches 0 if entity @s[team=red] run effect give @e[type=#game:mobs,predicate=map:in_red] glowing 50 0 true
execute if score @s Payment matches 0 if entity @s[team=blue] run effect give @a[team=red] glowing 50 0 true
execute if score @s Payment matches 0 if entity @s[team=blue] run effect give @e[type=#game:mobs,predicate=map:in_blue] glowing 50 0 true
execute if score @s Payment matches 0 if entity @s[team=red] run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"激活了"},"[",{"translate":"显形祈祷","color": "yellow"},"]"]
execute if score @s Payment matches 0 if entity @s[team=blue] run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"激活了"},"[",{"translate":"显形祈祷","color": "yellow"},"]"]
execute if score @s Payment matches 0 if entity @s[team=red] as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 if entity @s[team=blue] as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/buff/anchor