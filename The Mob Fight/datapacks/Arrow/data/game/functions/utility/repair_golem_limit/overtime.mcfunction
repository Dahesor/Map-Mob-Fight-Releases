execute unless entity @s[tag=resloved_golem] run function game:utility/repair_golem_limit/join_team

execute store result score $hp calculator run data get entity @s Health
execute if score #loop_3 calculator matches 0 run function game:utility/repair_golem_limit/reduce_hp

execute if score Performance Options matches 1 run return fail

data modify storage run bar set value {hp:"",empty:"",block:""}
scoreboard players operation $hp calculator /= #10 calculator
execute if score $hp calculator matches 0 run data modify storage run bar.hp set value "█"
execute if score $hp calculator matches 1 run data modify storage run bar.hp set value "██"
execute if score $hp calculator matches 2 run data modify storage run bar.hp set value "███"
execute if score $hp calculator matches 3 run data modify storage run bar.hp set value "████"
execute if score $hp calculator matches 4 run data modify storage run bar.hp set value "█████"
execute if score $hp calculator matches 5 run data modify storage run bar.hp set value "██████"
execute if score $hp calculator matches 6 run data modify storage run bar.hp set value "███████"
execute if score $hp calculator matches 7 run data modify storage run bar.hp set value "████████"
execute if score $hp calculator matches 8 run data modify storage run bar.hp set value "█████████"
execute if score $hp calculator matches 9.. run data modify storage run bar.hp set value "██████████"

execute if score @s hpPotionCD matches 1 run data modify storage run bar.block set value "██"
execute if score @s hpPotionCD matches 2 run data modify storage run bar.block set value "████"
execute if score @s hpPotionCD matches 3 run data modify storage run bar.block set value "██████"
execute if score @s hpPotionCD matches 4 run data modify storage run bar.block set value "████████"
execute if score @s hpPotionCD matches 5 run data modify storage run bar.block set value "█████████"

scoreboard players remove $hp calculator 9
scoreboard players operation $hp calculator *= #-1 calculator

execute if score @s hpPotionCD matches 1 run scoreboard players remove $hp calculator 2
execute if score @s hpPotionCD matches 2 run scoreboard players remove $hp calculator 4
execute if score @s hpPotionCD matches 3 run scoreboard players remove $hp calculator 6
execute if score @s hpPotionCD matches 4 run scoreboard players remove $hp calculator 8
execute if score @s hpPotionCD matches 5 run scoreboard players remove $hp calculator 9
execute if score $hp calculator matches ..-1 run scoreboard players set $hp calculator 0

execute if score $hp calculator matches 1 run data modify storage run bar.empty set value "█"
execute if score $hp calculator matches 2 run data modify storage run bar.empty set value "██"
execute if score $hp calculator matches 3 run data modify storage run bar.empty set value "███"
execute if score $hp calculator matches 4 run data modify storage run bar.empty set value "████"
execute if score $hp calculator matches 5 run data modify storage run bar.empty set value "█████"
execute if score $hp calculator matches 6 run data modify storage run bar.empty set value "██████"
execute if score $hp calculator matches 7 run data modify storage run bar.empty set value "███████"
execute if score $hp calculator matches 8 run data modify storage run bar.empty set value "████████"
execute if score $hp calculator matches 9 run data modify storage run bar.empty set value "█████████"

function game:utility/repair_golem_limit/__fill_name_hp_bar with storage run bar