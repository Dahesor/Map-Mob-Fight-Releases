execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.tp
execute unless entity @s[tag=temp.tp] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.tp] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'tp_home'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.tp

execute if entity @s[team=red] if score @a[limit=1,sort=furthest,tag=lowest_hp,team=red,gamemode=adventure] health matches ..5 run advancement grant @s only lobby:tp_save
execute if entity @s[team=blue] if score @a[limit=1,sort=furthest,tag=lowest_hp,team=blue,gamemode=adventure] health matches ..5 run advancement grant @s only lobby:tp_save

execute if entity @s[team=red] as @a[limit=1,sort=furthest,tag=lowest_hp,team=red,gamemode=adventure] run function game:player/warped_stick/tp/reciver_effect
execute if entity @s[team=blue] as @a[limit=1,sort=furthest,tag=lowest_hp,team=blue,gamemode=adventure] run function game:player/warped_stick/tp/reciver_effect

tp @s[team=red] @a[limit=1,sort=furthest,tag=lowest_hp,team=red,gamemode=adventure]
tp @s[team=blue] @a[limit=1,sort=furthest,tag=lowest_hp,team=blue,gamemode=adventure]
execute at @s run function game:player/warped_stick/tp/after_teleport

scoreboard players add @s scb.support 100