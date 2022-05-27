data remove storage run Pay
execute if score @s harvest_level matches 0 run data merge storage run {Pay:{copper:4b,iron:4b,gold:4b,lapis:4b,diamond:1b,quartz:2b}}
execute if score @s harvest_level matches 1 run data merge storage run {Pay:{copper:12b,iron:12b,gold:12b,lapis:10b,diamond:3b,quartz:4b}}
execute if score @s harvest_level matches 2 run data merge storage run {Pay:{copper:24b,iron:24b,gold:24b,lapis:24b,diamond:8b,quartz:8b,netherite:1b}}
execute if score @s harvest_level matches 0..2 run function game:shop/pay/anchor
execute if score @s harvest_level matches 0..2 if score @s[team=red] Payment matches 0 run scoreboard players add @a[team=red] harvest_level 1
execute if score @s harvest_level matches 0..2 if score @s[team=blue] Payment matches 0 run scoreboard players add @a[team=blue] harvest_level 1
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"收获等级","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"收获等级","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute as @a[scores={UI=70}] run function ui:actions/buff/anchor

