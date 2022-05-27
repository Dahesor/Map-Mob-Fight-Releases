function game:plugin/score_copy
data remove storage run Pay
execute if score crystal_count calculator matches 2 run data merge storage run {Pay:{dirt:24b,diamond:5b}}
execute if score crystal_count calculator matches 3 run data merge storage run {Pay:{dirt:64b,diamond:12b,netherite:1b}}
execute if score crystal_count calculator matches 2..3 run function game:shop/pay/anchor
execute if score crystal_count calculator matches 2 if score @s[team=red] Payment matches 0 run function game:run/crystal/add/red_3
execute if score crystal_count calculator matches 3 if score @s[team=red] Payment matches 0 run function game:run/crystal/add/red_4
execute if score crystal_count calculator matches 2 if score @s[team=blue] Payment matches 0 run function game:run/crystal/add/blue_3
execute if score crystal_count calculator matches 3 if score @s[team=blue] Payment matches 0 run function game:run/crystal/add/blue_4
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"新的水晶","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"新的水晶","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~

execute as @a run function ui:foolproof/redirect